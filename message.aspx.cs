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
using Microsoft.Security.Application;

public partial class message : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["Login"] == null && Request.QueryString["book_id"] == null)
            {
                Response.Redirect("~/member/mem_login.aspx");
            }
            else
            {
                Label1.Text = Session["username"].ToString();
                Label2.Text = DateTime.Now.ToString();

            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        BookBL bookBL = new BookBL();
        try
        {
            if (TextBox2.Text.Length <= 300)
            {
                if (bookBL.message_center(Session["mID"].ToString(), Request.QueryString["book_id"].ToString(), AntiXss.HtmlEncode(Server.HtmlEncode(TextBox3.Text)), DateTime.Now.ToString(), AntiXss.HtmlEncode(Server.HtmlEncode(TextBox2.Text))) > 0)
                {
                    Response.Redirect("product.aspx?book_id=" + AntiXss.HtmlEncode(Request.QueryString["book_id"].ToString()));
                }
            }
            else
            {
                Response.Write("<script>alert('留言字數不可超過300字!');</script>");
            }
        }
        catch (Exception ex)
        {
            ex.ToString();
        }
    }
}