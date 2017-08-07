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


public partial class admin_admin_messageSel : System.Web.UI.Page
{
    adminBL admin = new adminBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("~/admin/admin_login.aspx");
            }
            else
            {
                GridView1.DataSource = admin.messageSel();
                GridView1.DataBind();
            }
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "deletes")
        {
            admin.Del(e.CommandArgument.ToString());
            GridView1.DataSource = admin.messageSel();
            GridView1.DataBind();
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        switch (DropDownList1.SelectedValue)
        {
            case "2":
                GridView1.DataSource = admin.messageSel(Convert.ToDateTime(TextBox1.Text), Convert.ToDateTime(TextBox2.Text));
                GridView1.DataBind();
                break;


        }
    }
}