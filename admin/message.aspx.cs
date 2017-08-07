using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessLogic;

public partial class admin_message : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!Page.IsPostBack)
            {
                if (Session["admin"] == null)
                {
                    Response.Redirect("~/admin/admin_login.aspx");
                }
                else
                {
                    Label19.Text = Session["account"].ToString();
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

        if (admin.messageInsert(DropDownList1.SelectedValue, TextBox1.Text, Label19.Text, TextBox2.Text) > 0)
        {

            DropDownList1.SelectedIndex = 0;
            TextBox1.Text = "";
            TextBox2.Text = "";
            Response.Write("<script>alert('訊息登錄成功');</script>");
        }
    }
}