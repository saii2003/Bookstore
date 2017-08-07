using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_admin : System.Web.UI.MasterPage
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
                    Label2.Text = Session["account"].ToString();
                    Label1.Text = Session["level"].ToString();
                    LinkButton1.Text = "登出";

                }
            }
        }
        catch (Exception ex)
        {
            ex.ToString();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("~/admin/admin_login.aspx");
    }
}
