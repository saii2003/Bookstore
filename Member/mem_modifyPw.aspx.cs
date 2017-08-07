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
public partial class Member_mem_modifyPw : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (HttpContext.Current.User.Identity.IsAuthenticated == false)
        {
            Response.Redirect("mem_login.aspx");
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MemberBL memBL = new MemberBL();
        string passwrod = FormsAuthentication.HashPasswordForStoringInConfigFile(AntiXss.HtmlEncode(PW.Text), "MD5");
        string new_pw = FormsAuthentication.HashPasswordForStoringInConfigFile(AntiXss.HtmlEncode(newPW.Text), "MD5");
        string confirm_pw = FormsAuthentication.HashPasswordForStoringInConfigFile(AntiXss.HtmlEncode(confirm.Text), "MD5");

        if (memBL.modify_pw(Session["username"].ToString(), passwrod, new_pw) > 0)
        {
            Response.Redirect("~/Member/mem_modifyPwOK.aspx");
        }
        else
        {
            Response.Write("<script>alert('修改密碼失敗!');</script>");
        }
    }
}