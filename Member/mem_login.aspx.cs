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
using DataAccess;
using Microsoft.Security.Application;
using BussinessLogic;

public partial class Member_mem_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            //如果有已登入，先簽出。
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                FormsAuthentication.SignOut();
                Response.Redirect("~/Member/login.aspx");
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            MemberBL bl = new MemberBL();
            if (CheckBox1.Checked == true)
            {
                if (string.Compare(Session["CheckCode"].ToString(), AntiXss.HtmlEncode(code.Text), true) == 0)
                {
                    if (bl.FormAuth_Login(AntiXss.HtmlEncode(username.Text), FormsAuthentication.HashPasswordForStoringInConfigFile(AntiXss.HtmlEncode(password.Text), "MD5"), 43200, Label2) == true)
                    {
                        Response.Redirect("~/index.aspx");
                    }
                }
                else
                {
                    Label2.Text = "驗證碼錯誤";
                }
            }
            else
            {
                if (string.Compare(Session["CheckCode"].ToString(), AntiXss.HtmlEncode(code.Text), true) == 0)
                {
                    if (bl.FormAuth_Login(AntiXss.HtmlEncode(username.Text), FormsAuthentication.HashPasswordForStoringInConfigFile(AntiXss.HtmlEncode(password.Text), "MD5"), 1440, Label2) == true)
                    {

                        Response.Redirect("~/index.aspx");
                    }
                }
                else
                {
                    Label2.Text = "驗證碼錯誤";
                }
            }



















            //session 登入
            //MemberDA memDA = new MemberDA();

            //if (memDA.mem_Login(AntiXss.HtmlEncode(username.Text), FormsAuthentication.HashPasswordForStoringInConfigFile(AntiXss.HtmlEncode(password.Text), "MD5")) > 0)
            //{
            //    if (memDA.level != "0")
            //    {
            //        if (Session["CheckCode"].ToString() == AntiXss.HtmlEncode(code.Text))
            //        {

            //            Session["login"] = "OK";
            //            Session["mID"] = memDA.mID;
            //            Session["username"] = memDA.username;
            //            Session["password"] = memDA.password;
            //            Session["name"] = memDA.name;
            //            Session["sex"] = memDA.sex;
            //            Session["birthday"] = memDA.birthday.Substring(0, 9);
            //            Session["phone"] = memDA.phone;
            //            Session["cellphone"] = memDA.cellphone;
            //            Session["address"] = memDA.address;
            //            Session["email"] = memDA.email;
            //            Session.Timeout = 60;
            //            Response.Redirect("~/index.aspx");
            //        }
            //        else
            //        {
            //            Label2.Text = "驗證碼錯誤";
            //        }
            //    }
            //    else
            //    {
            //        Label2.Text = "您的帳號尚未啟動，請至您的信箱點選認證信開啟帳號";
            //    }
            //}
            //else
            //{
            //    Label2.Text = "帳號密碼錯誤";
            //}
        }
        catch (Exception ex)
        {
            ex.ToString();
        }
    }
}