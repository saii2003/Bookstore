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
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Text;
using BussinessLogic;


public partial class book_list : System.Web.UI.Page
{
    Hashtable ht = new Hashtable();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            BookBL bookBL = new BookBL();
            string activePage = Request.QueryString["page"] == null ? "1" : Request.QueryString["page"];

            int dataCount = Convert.ToInt32(bookBL.bookListCount(Request.QueryString["type"], Request.QueryString["class_id"], Request.QueryString["list"]));

            //實作分頁
            bookBL.Pages(Panel1, activePage, dataCount, Request.QueryString["type"], Request.QueryString["class_id"], Request.QueryString["list"]);
            //資料綁定
            DataList1.DataSource = bookBL.bookList(Request.QueryString["type"], Request.QueryString["class_id"], Request.QueryString["list"], Convert.ToInt32(activePage));
            DataList1.DataBind();

        }
        catch (Exception ex)
        {
            ex.ToString();
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void TreeView1_TreeNodeExpanded(object sender, TreeNodeEventArgs e)
    {

    }
    protected void TreeView2_TreeNodeExpanded(object sender, TreeNodeEventArgs e)
    {

    }
    //書籍是否銷售完
    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        if (((Label)e.Item.FindControl("Label5")).Text == "0")
        {
            ((LinkButton)e.Item.FindControl("LinkButton1")).Enabled = false;
            ((Label)e.Item.FindControl("Label5")).Visible = true;
            ((Label)e.Item.FindControl("Label5")).Text = "已銷售完";
        }
    }
    protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
    {
		/*加入購物車*/
        if (e.CommandName == "addtocart")
        {
            if (Session["AddtoCart"] == null)
            {
                Session["AddtoCart"] = ht;
            }
            else
            {
                ht = (Hashtable)Session["AddtoCart"];
            }
            var pID = e.CommandArgument;//商品編號
            string pName = ((HyperLink)e.Item.FindControl("HyperLink5")).Text.ToString();//商品名稱
            string pPrice = ((Label)e.Item.FindControl("Label2")).Text.ToString();//商品價格
			
			//判斷是否有重複商品 如有商品數量加1
            if (ht.ContainsKey(pID))
            {
                String textHt = Convert.ToString(ht[pID]);
                String[] arrStr = textHt.Split('&');
                arrStr[2] = Convert.ToString(Convert.ToUInt32(arrStr[2]) + 1);
				//清除重複商品
                ht.Remove(pID);
                ht.Add(pID, arrStr[0] + "&" + arrStr[1] + "&" + arrStr[2]);
            }
            else
            {
                ht.Add(pID, pName + "&" + pPrice + "&" + "1");
            }
            Session["AddtoCart"] = ht;
            Response.Redirect("~/shop_cart.aspx");
        }
    }
}