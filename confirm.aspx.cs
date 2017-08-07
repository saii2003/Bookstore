using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using BussinessLogic;

public partial class confirm : System.Web.UI.Page
{
    Hashtable ht = new Hashtable();
    HttpCookie cookie =HttpContext.Current.Request.Cookies[HttpContext.Current.User.Identity.Name];
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["shop"].ToString() == "ok")
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                int Totle = 0;
                Int32 q = 0;
                String[] arrStr;
                String pName, pPrice, pQ;
                ht = (Hashtable)Session["AddtoCart"];
                if (ht.Count == 0)
                {
                    Response.Redirect("~/index.aspx");
                }
                else
                {
                    dt.Columns.Add("商品編號",typeof(string));
                    dt.Columns.Add("商品名稱",typeof(string));
                    dt.Columns.Add("單價",typeof(string));
                    dt.Columns.Add("數量",typeof(string));
                    dt.Columns.Add("合計",typeof(string));

                }
                foreach (String pID in ht.Keys)
                {
                    arrStr = Convert.ToString(ht[pID]).Split('&');
                    pName = arrStr[0];
                    pPrice = arrStr[1];
                    pQ = arrStr[2];
                    dr = dt.NewRow();
                    dr["商品編號"] = pID;
                    dr["商品名稱"] = pName;
                    dr["單價"] = pPrice;
                    dr["數量"] = pQ;
                    dr["合計"] = Convert.ToInt32(pPrice) * Convert.ToInt32(pQ);
                    dt.Rows.Add(dr);
                    q += Convert.ToInt32(pQ);
                    Totle += (Convert.ToInt32(pPrice) * Convert.ToInt32(pQ));
                }
                Label1.Text = Convert.ToString(q);
                Label2.Text = Convert.ToString(Totle);
                if (Convert.ToUInt32(Totle) >= 500)
                {
                    Label3.Text = Convert.ToString(0);
                    var totlea = Convert.ToUInt32(Totle) + 0;
                    Label4.Text = Convert.ToString(totlea);
                }
                else
                {
                    Label3.Text = Convert.ToString(100);
                    var totleb = Convert.ToUInt32(Totle) + 100;
                    Label4.Text = Convert.ToString(totleb);
                }

                GridView1.DataSource = dt;
                GridView1.DataBind();

                Label5.Text = Session["payment"].ToString();
                Label6.Text = HttpContext.Current.Server.UrlDecode(cookie.Values["name"].ToString());
                Label7.Text = HttpContext.Current.Server.UrlDecode(cookie.Values["phone"].ToString());
                Label8.Text = HttpContext.Current.Server.UrlDecode(cookie.Values["email"].ToString());
                Label9.Text = HttpContext.Current.Server.UrlDecode(cookie.Values["address"].ToString());
                Label10.Text = HttpContext.Current.Server.UrlDecode(cookie.Values["cellphone"].ToString());



                //session
                //Label5.Text = Session["payment"].ToString();
                //Label6.Text = Session["name"].ToString();
                //Label7.Text = Session["phone"].ToString();
                //Label8.Text = Session["email"].ToString();
                //Label9.Text = Session["address"].ToString();
                //Label10.Text = Session["cellphone"].ToString();
            }
            else
            {
                Response.Redirect("~/index.aspx");
            }
        }
        else
        {
            Response.Redirect("~/index.aspx");
        }

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        BookBL bookBL = new BookBL();
        MemberBL memBL = new MemberBL();   
        string orderID = bookBL.orderID(DateTime.Now.ToString("yyyyMM")).ToString();

        int orders = bookBL.orders_Add(orderID, Convert.ToInt32(HttpContext.Current.Server.UrlDecode(cookie.Values["mID"].ToString())), Label5.Text, DateTime.Now.ToString(), Convert.ToInt32(Label4.Text), Convert.ToInt32(Label1.Text));
        if (orders > 0)
        {
            for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
            {
                int orderDetails = bookBL.orderDetailes_Add(orderID, GridView1.Rows[i].Cells[0].Text, Convert.ToInt32(GridView1.Rows[i].Cells[3].Text), Convert.ToInt32(GridView1.Rows[i].Cells[2].Text));
            }
            //訂單成立後暢銷書+1與庫存-1
            for (int j = 0; j <= GridView1.Rows.Count - 1; j++)
            {
                bookBL.sel_hit_amonet(GridView1.Rows[j].Cells[0].Text);
                int hit = bookBL.bookhit + 1;
                int amount = bookBL.bookAmonet - 1;
                bookBL.hit_amonet(GridView1.Rows[j].Cells[0].Text, amount, hit);
            }

            //購物完成寄送信件
            //string content = "<p>感謝您的光臨，您已經成功完成訂單程序。</p><p>您的訂單編號為：" + orderID.ToString() + "，您可使用此編號查詢您的訂購內容。";
            //memBL.send_mail(HttpContext.Current.Server.UrlDecode(cookie.Values["email"].ToString()), content);

            //清除購物車所有商品
            ht.Clear();
        }

        iPayPal paypal = new iPayPal();
        paypal.PayPal_Payment(GridView1, Label3.Text, orderID, "http://" + Request.ServerVariables["Server_Name"] + "/Bookstore/shopOK.aspx", "");
        
    }
}