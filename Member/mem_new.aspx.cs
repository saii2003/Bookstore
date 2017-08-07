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

public partial class Member_mem_new : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
 
        if (!Page.IsPostBack)
        {
            
         
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string passwords = FormsAuthentication.HashPasswordForStoringInConfigFile(password.Text, "MD5");
        MemberBL memBL = new MemberBL();
        

        if ((username.Text.Length >= 8 && username.Text.Length <= 20) && (password.Text.Length >= 8 && password.Text.Length <= 20))
        {
            if (memBL.check_username(username.Text) == 0)
            {
                if (confirmPass.Text == password.Text)
                {
                    if (memBL.mem_new(AntiXss.HtmlEncode(username.Text), AntiXss.HtmlEncode(passwords), AntiXss.HtmlEncode(name.Text), AntiXss.HtmlEncode(sex.Text),Convert.ToDateTime(birthday.Text.ToString()), AntiXss.HtmlEncode(phone.Text), AntiXss.HtmlEncode(cellphone.Text), AntiXss.HtmlEncode(address.Text), AntiXss.HtmlEncode(email.Text)) > 0)
                    {

                        //註冊成功寄送驗證信
                        //string strUrl = "http://localhost/BookStore/Member/mem_open.aspx?id=" + Server.HtmlDecode(passwords.ToString());
                        //string content = "會員" + name.Text + "您好：<p>恭喜您註冊成功!您所註冊</p><p>帳號：" + username.Text + "</p><p>密碼：" + password.Text.Replace(password.Text.Substring(3, 4), "****") + "</p><p>此帳號尚未啟動起點選下面連結啟動帳號：</p><p><a href='" + strUrl + "'>啟動此帳號</a></p>";
                        //memBL.send_mail(email.Text, content);
                        Response.Redirect("~/member/mem_newOK.aspx");
                    }

                }
                else
                {
                    Response.Write("<scritp>alert('password and confirm password do not match!');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('username is already in use!');</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('input error!');</script>");
        }

    }
}