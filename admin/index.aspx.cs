using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessLogic;

public partial class admin_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("~/admin/admin_login.aspx");
        }
        else
        {
            adminBL admin = new adminBL();
            Label1.Text = admin.shipCount().ToString();

            GridView1.DataSource = admin.bookAmounts();
            GridView1.DataBind();
            Label4.Text = admin.bookAmountsCount().ToString();
            Label5.Text = admin.memCount().ToString();
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
}