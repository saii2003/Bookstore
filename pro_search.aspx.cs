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
using BussinessLogic;

public partial class pro_search : System.Web.UI.Page
{
    Hashtable ht = new Hashtable();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            BookBL bookBL = new BookBL();
            string search_Str = Request.QueryString["search"].ToString();//查詢字串
            Label5.Text = search_Str;
            Label3.Text = "0";
            string activePage = Request.QueryString["page"] == null ? "1" : Request.QueryString["page"];
            string type = Request.QueryString["type"].ToString();


            switch (Request.QueryString["type"])
            {
                //書籍名稱查詢
                case "1":
                    Label3.Text = bookBL.BookNameSearchCount(search_Str);
                    bookBL.Pages(Panel1, activePage, Convert.ToInt32(Label3.Text), type, search_Str);
                    DataList1.DataSource = bookBL.BookNameSearch(search_Str, Convert.ToInt32(activePage));
                    DataList1.DataBind();

                    break;

                //作者書籍查詢
                case "2":
                    Label3.Text = bookBL.BookAuthorSearchCount(search_Str);
                    bookBL.Pages(Panel1, activePage, Convert.ToInt32(Label3.Text), type, search_Str);
                    DataList1.DataSource = bookBL.BookAuthorSearch(search_Str, Convert.ToInt32(activePage));
                    DataList1.DataBind();

                    break;

                //出版社書籍查詢
                case "3":
                    Label3.Text = bookBL.BookPublisherSearchCount(search_Str);
                    bookBL.Pages(Panel1, activePage, Convert.ToInt32(Label3.Text), type, search_Str);
                    DataList1.DataSource = bookBL.BookPublisherSearch(search_Str, Convert.ToInt32(activePage));
                    bookBL.BookPublisherSearch(search_Str, Convert.ToInt32(activePage));
                    DataList1.DataBind();

                    break;

                //書籍ISBN查詢
                case "4":
                    Label3.Text = bookBL.BookISBNSearchCount(search_Str);
                    bookBL.Pages(Panel1, activePage, Convert.ToInt32(Label3.Text), type, search_Str);
                    DataList1.DataSource = bookBL.BookISBNSearch(search_Str, Convert.ToInt32(activePage));
                    DataList1.DataBind();

                    break;
            }
            if (Label3.Text == "0")
            {
                Label4.Text = "查詢不到您的資料!";
            }
            else
            {
                Label4.Visible = false;
            }

        }
        catch (Exception ex)
        {
            ex.ToString();
        }
    }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
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
                var pID = e.CommandArgument;
                string pName = ((HyperLink)e.Item.FindControl("HyperLink4")).Text.ToString();
                string pPrice = ((Label)e.Item.FindControl("Label1")).Text.ToString();
                if (ht.ContainsKey(pID))
                {
                    String textHt = Convert.ToString(ht[pID]);
                    String[] arrStr = textHt.Split('&');
                    arrStr[2] = Convert.ToString(Convert.ToUInt32(arrStr[2]) + 1);
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
        //書籍是否銷售完
        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (((Label)e.Item.FindControl("Label6")).Text == "0")
            {
                ((LinkButton)e.Item.FindControl("LinkButton1")).Enabled = false;
                ((Label)e.Item.FindControl("Label6")).Visible = true;
                ((Label)e.Item.FindControl("Label6")).Text = "已銷售完";
            }
        }

        protected void TreeView2_TreeNodeExpanded(object sender, TreeNodeEventArgs e)
        {

        }
        protected void TreeView1_TreeNodeExpanded(object sender, TreeNodeEventArgs e)
        {

        }
        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {

        }
    
}