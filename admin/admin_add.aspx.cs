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

public partial class admin_admin_add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!Page.IsPostBack)
            {
                if (Session["level"].ToString() != "2")
                {
                    Response.Redirect("~/admin/admin_index.aspx");
                }
            }
        }
        catch (Exception ex)
        {
            ex.ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        adminBL admin = new adminBL();
        string password = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox2.Text, "MD5");
        if (admin.admin_add(TextBox1.Text, password, TextBox4.Text, Convert.ToInt32(DropDownList1.SelectedValue)) > 0)
        {
            TextBox2.Text = "";
            TextBox1.Text = "";
            TextBox4.Text = "";
            DropDownList1.SelectedIndex = 0;
            Response.Write("<script>alert('新增成功');</script>");
        }
    }
}