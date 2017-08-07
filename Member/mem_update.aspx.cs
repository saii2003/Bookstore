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

public partial class Member_mem_update : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated )
            {
                HttpCookie cookie = Request.Cookies[HttpContext.Current.User.Identity.Name];
                username.Text = HttpContext.Current.Server.UrlDecode(cookie.Values["username"].ToString());
                name.Text = HttpContext.Current.Server.UrlDecode(cookie.Values["name"].ToString());
                sex.SelectedValue = HttpContext.Current.Server.UrlDecode(cookie.Values["Sex"].ToString());
                birthday.Text = HttpContext.Current.Server.UrlDecode(cookie.Values["birthday"].ToString());
                phone.Text = HttpContext.Current.Server.UrlDecode(cookie.Values["phone"].ToString());
                cellphone.Text = HttpContext.Current.Server.UrlDecode(cookie.Values["cellphone"].ToString());
                address.Text = HttpContext.Current.Server.UrlDecode(cookie.Values["address"].ToString());
                email.Text = HttpContext.Current.Server.UrlDecode(cookie.Values["email"].ToString());

                //session login
                //username.Text = Session["username"].ToString();
                //name.Text = Session["name"].ToString();
                //sex.SelectedValue = Session["Sex"].ToString();
                //birthday.Text = Session["birthday"].ToString();
                //phone.Text = Session["phone"].ToString();
                //cellphone.Text = Session["cellphone"].ToString();
                //address.Text = Session["address"].ToString();
                //email.Text = Session["email"].ToString();

                
            }
            else
            {
                Response.Redirect("~/Member/mem_login.aspx");

            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MemberBL memBL = new MemberBL();
        try
        {
            if (memBL.mem_update(Session["mID"].ToString(), name.Text, sex.SelectedValue, phone.Text, cellphone.Text, address.Text, email.Text) > 0)
            {
                Session["name"] = AntiXss.HtmlEncode(name.Text);
                Session["Sex"] = AntiXss.HtmlEncode(sex.SelectedValue);
                Session["phone"] = AntiXss.HtmlEncode(phone.Text);
                Session["cellphone"] = AntiXss.HtmlEncode(cellphone.Text);
                Session["address"] = AntiXss.HtmlEncode(address.Text);
                Session["email"] = AntiXss.HtmlEncode(email.Text);
                Response.Redirect("~/member/mem_updateOK.aspx");
            }
            else
            {
                Response.Write("<script>alert('會員資料修改失敗!');</script>");
            }
        }
        catch (Exception ex)
        {
            ex.ToString();
        }
    }
}