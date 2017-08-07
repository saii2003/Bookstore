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
using System.Net.Mail;
using System.Net;
using BussinessLogic;
using Microsoft.Security.Application;


public partial class Member_mem_forgetPW : System.Web.UI.Page
{
    MemberBL memBL = new MemberBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            memBL.dropdownlist_date(year, month, day);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MemberBL memBL = new MemberBL();
        string new_pw = FormsAuthentication.HashPasswordForStoringInConfigFile(memBL.new_pw(), "MD5");
        string birthday = year.SelectedValue + "/" + month.SelectedValue + "/" + day.SelectedValue;

        if (memBL.forget_pw(AntiXss.HtmlEncode(new_pw), AntiXss.HtmlEncode(TextBox2.Text), birthday, AntiXss.HtmlEncode(TextBox3.Text)) > 0)
        {
            //寄送新密碼信件
            String content = "<p>親愛的" + TextBox2.Text + "會員您好</p><p>請記住您的新密碼</p><p>您的帳號：" + TextBox2.Text + "</p><p>您的新密碼：" + memBL.new_pw() + "</p><p>";
            memBL.send_mail(TextBox3.Text, content);
            Response.Redirect("~/Member/mem_forgetPwOK.aspx?mail=" + TextBox3.Text.Replace(TextBox3.Text.Substring(3, 4), "****"));

        }
        else
        {
            Response.Write("<script>alert('您輸入資料有錯誤!')</script>");
        }
    }
}