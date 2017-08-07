using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Text;
using System.Threading;
using System.Net;
using System.Web.Configuration;
using DataAccess;



/// <summary>
/// iPayPal 的摘要描述
/// </summary>
public class iPayPal
{
	private string businessEmail;//賣家帳號
    private bool useSandbox; //是否啟動Sandbox 

    public iPayPal()
    {
        this.businessEmail = "gaoweilun@gmail.com";
        this.useSandbox = true;

    }
    #region 取得PayPal網址
    private string GetPayPalUrl()
    {
        return useSandbox ? "https://www.sandbox.paypal.com/cgi-bin/webscr" :
        "https://www.paypal.com/cgi-bin/webscr";
    }
    #endregion

    #region 付款
    /*將購買商品資料發送給PayPal*/
    public void PayPal_Payment(GridView grid, string shipping,string oid, string returnUrl, string cancel_returnUrl)
    {

        StringBuilder builder = new StringBuilder();
        builder.Append(GetPayPalUrl());//paypal連結
        builder.AppendFormat("?cmd=_cart&business={0}", businessEmail);//收款電子郵件帳號
        builder.AppendFormat("&custom={0}", oid);//自訂參數訂單id，當付款成功paypal ipn會回傳oid的值
        builder.AppendFormat("&upload=1");//自己建立購物車
        builder.AppendFormat("&currency_code=TWD");//貨幣TWD
        builder.AppendFormat("&charset=utf-8");//編碼
        builder.AppendFormat("&shipping_1={0}", shipping);//運費
        for (int i = 0; i <= grid.Rows.Count - 1; i++)//將購物車中的商品發送到paypal
        {
            builder.AppendFormat("&item_name_{0}={1}", (i + 1).ToString(), grid.Rows[i].Cells[1].Text);//商品名稱
            builder.AppendFormat("&amount_{0}={1}", (i + 1).ToString(), HttpUtility.UrlEncode(grid.Rows[i].Cells[2].Text));//價格
            builder.AppendFormat("&quantity_{0}={1}", (i + 1).ToString(), HttpUtility.UrlEncode(grid.Rows[i].Cells[3].Text));//數量
        }
		
		//購買成功及取消購買Url導向
        builder.AppendFormat("&return={0}&cancel_return={1}", HttpUtility.UrlEncode(returnUrl), HttpUtility.UrlEncode(cancel_returnUrl));
        builder.AppendFormat("&notify_url=http://ethanlun.somee.com/BookStore/paypal_ipn.aspx"); //發送PayPal_IPN
        HttpContext.Current.Response.Redirect(builder.ToString());//導向連結
    }
    #endregion

    #region PayPal_IPN
    /*即時付款通知訊息,當user付完款項後會即時通知*/
    public void PayPal_IPN()
    {
        //傳送資訊至PayPal伺服器
        HttpWebRequest req = (HttpWebRequest)WebRequest.Create(GetPayPalUrl());

        //Set values for the request back
		//設定要傳送的資料
        req.Method = "POST";//以POST方式傳送資料
        req.ContentType = "application/x-www-form-urlencoded";//以x-www-form-urlencoded的編碼方式把form轉換成字串
        System.Net.ServicePointManager.SecurityProtocol = System.Net.SecurityProtocolType.Tls12;//加入Tls12
		
		
        byte[] param = HttpContext.Current.Request.BinaryRead(HttpContext.Current.Request.ContentLength);
        string strRequest = Encoding.ASCII.GetString(param);
        strRequest += "&cmd=_notify-validate";
        req.ContentLength = strRequest.Length;

        //for proxy
        //WebProxy proxy = new WebProxy(new Uri("http://url:port#"));
        //req.Proxy = proxy;

        //Send the request to PayPal and get the response
        //發送請求到PayPal伺服器
        StreamWriter streamOut = new StreamWriter(req.GetRequestStream(), System.Text.Encoding.ASCII);//以ASCII編碼方式將req變數資料寫入資料流
        streamOut.Write(strRequest);
        streamOut.Close();
		//取得PayPal回送資訊
        StreamReader streamIn = new StreamReader(req.GetResponse().GetResponseStream());
        string strResponse = streamIn.ReadToEnd();
        streamIn.Close();
        


        /* PAYPAL 傳來的訂單資訊 */
        //string item_name = HttpContext.Current.Request.Form["item_name"];
        //string item_number = HttpContext.Current.Request.Form["item_number"];
        //string payment_amount = HttpContext.Current.Request.Form["mc_gross"];
        //string payment_currency = HttpContext.Current.Request.Form["mc_currency"];
        //string txn_id = HttpContext.Current.Request.Form["txn_id"];
        //string receipt_id = HttpContext.Current.Request.Form["receipt_id"];
        //string receiver_email = HttpContext.Current.Request.Form["receiver_email"];
        //string payer_email = HttpContext.Current.Request.Form["payer_email"];
        //string fee = HttpContext.Current.Request.Form["payment_fee"];

        string payment_status = HttpContext.Current.Request.Form["payment_status"].ToString();
        string oid = HttpContext.Current.Request.Form["custom"];//訂單編號

        if (strResponse == "VERIFIED")//驗證成功
        {
            //付款成功
            if (payment_status == "Completed")
            {
                //將資料庫Pay欄位改為"已付款"
                MemberDA mem = new MemberDA();
                mem.payment_status(oid);
             
            }			
        }
        else if (strResponse == "INVALID")//驗證失敗
        {
            

            //TextWriter txWriter = new StreamWriter(Server.MapPath("../uploads/") + Session["orderID"].ToString() + ".txt");
            //txWriter.WriteLine(strResponse);
            ////log for manual investigation
            //txWriter.Close();
        }
        else
        {  

            //TextWriter txWriter = new StreamWriter(Server.MapPath("../uploads/") + Session["orderID"].ToString() + ".txt");
            //txWriter.WriteLine("Invalid");
            ////log response/ipn data for manual investigation
            //txWriter.Close();
        }
    }
    #endregion
}