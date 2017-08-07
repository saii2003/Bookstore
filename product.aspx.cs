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

public partial class product : System.Web.UI.Page
{
    Hashtable ht = new Hashtable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["book_id"] == null)
        {
            Response.Redirect("index.aspx");
        }
        else
        {
            BookBL bookBL = new BookBL();
            FormView1.DataSource = bookBL.product(Request.QueryString["book_id"].ToString());
            FormView1.DataBind();

            string author = ((HyperLink)FormView1.FindControl("HyperLink4")).Text.ToString();
            Label15.Text = author;
            DataList1.DataSource = bookBL.authorBook(author);
            DataList1.DataBind();

            //書籍內容
            FormView2.DataSource = bookBL.product(Request.QueryString["book_id"].ToString());
            FormView2.DataBind();


            //書籍簡介
            FormView3.DataSource = bookBL.product(Request.QueryString["book_id"].ToString());
            FormView3.DataBind();

            //留言板
            GridView1.DataSource = bookBL.product_message(Request.QueryString["book_id"].ToString());
            GridView1.DataBind();
        }
    }
    protected void TreeView1_TreeNodeExpanded(object sender, TreeNodeEventArgs e)
    {

    }

    protected void TreeView2_TreeNodeExpanded(object sender, TreeNodeEventArgs e)
    {

    }

    protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)
    {
        if (e.CommandName == "addtocart")
        {
            //判斷是否載入hashtable
            if (Session["AddtoCart"] == null)
            {
                Session["AddtoCart"] = ht;
            }
            else
            {
                ht = (Hashtable)Session["AddtoCart"];
            }

            var pID = e.CommandArgument;//產品ID
            String pName = ((Label)FormView1.FindControl("Label1")).Text.ToString();//取得商品名稱
            String pPrice = ((Label)FormView1.FindControl("Label5")).Text.ToString();//取得商品價格

            //判斷是否有同商品
            if (ht.ContainsKey(pID))
            {
                String textHt = Convert.ToString(ht[pID]);
                String[] arrStr = textHt.Split('&');
                arrStr[2] = Convert.ToString(Convert.ToUInt32(arrStr[2]) + 1);//商品數量在加一
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

    protected void FormView1_DataBound(object sender, EventArgs e)
    {
        int amount = Convert.ToInt32(((Label)FormView1.FindControl("Label6")).Text);
        if (amount == 0)
        {
            ((Label)FormView1.FindControl("Label9")).Text = "已銷售完";
            ((LinkButton)FormView1.FindControl("LinkButton1")).Visible = false;
        }
        DateTime t1 = Convert.ToDateTime(((Label)FormView1.FindControl("Label2")).Text.ToString()).AddDays(30);

        if (DateTime.Compare(DateTime.Now, t1) < 0)
        {
            ((Image)FormView1.FindControl("Image3")).ImageUrl = "~/images/newpro.png";
        }
        else
        {
            ((Image)FormView1.FindControl("Image3")).Visible = false;
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            Response.Redirect("~/message.aspx?book_id=" + Request.QueryString["book_id"]);
        }
        else
        {
            Response.Redirect("~/member/mem_login.aspx");
        }
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
}