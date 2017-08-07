using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Security.Application;
using System.Web.Security;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {   //seeeion 登入
            //if (Session["login"] == null)
            //{
            //    Label1.Text = "Hi,您好";
            //    LinkButton1.Text = "登入";
            //    LinkButton1.PostBackUrl = "~/Member/mem_login.aspx";
            //}
            //else
            //{
            //    Label1.Text = "Hi," + Session["username"].ToString();
            //    LinkButton1.Text = "登出";
            //}


            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                Label1.Text = "Hi," + HttpContext.Current.User.Identity.Name.ToString();
                LinkButton1.Text = "登出";

            }
            else
            {
                Label1.Text = "Hi,您好";
                LinkButton1.Text = "登入";
                LinkButton1.PostBackUrl = "~/Member/mem_login.aspx";
            }


        }
        catch (Exception ex)
        {
            ex.ToString();
        }
    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        //Session.Abandon();
        //Response.Redirect("~/index.aspx");

        if (HttpContext.Current.User.Identity.IsAuthenticated)
        {
            FormsAuthentication.SignOut();
            HttpCookie cookie = Request.Cookies[HttpContext.Current.User.Identity.Name];
            cookie.Values.Clear();
            Response.Redirect("~/index.aspx");
        }

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        string search;
        search = "/BookStore/pro_search.aspx?type=" + DropDownList1.SelectedValue + "&search=" + AntiXss.HtmlEncode(Server.HtmlEncode(TextBox1.Text));
        Response.Redirect(search);
    }
    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);
        Page.Header.DataBind();
    }
    
}
