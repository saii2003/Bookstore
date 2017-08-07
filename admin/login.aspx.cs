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
using BussinessLogic;


public partial class admin_admin_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        adminBL admin = new adminBL();
        string password = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox2.Text, "MD5");
        if (string.IsNullOrEmpty(TextBox1.Text) && string.IsNullOrEmpty(TextBox2.Text))
        {
            Label2.Text = "請輸入帳號密碼!";
        }
        else
        {
            if (TextBox3.Text == Session["CheckCode"].ToString())
            {
                if (admin.admin_login(TextBox1.Text, password) > 0)
                {
                    Session["admin"] = "ok";
                    Session["account"] = TextBox1.Text.ToString();
                    Session["level"] = admin.admin_login(TextBox1.Text, password).ToString();
                    Response.Redirect("~/admin/index.aspx");
                }
                else
                {
                    Label2.Text = "帳號密碼錯誤!";
                }
            }
            else
            {
                Label2.Text = "驗證碼錯誤!";
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
}