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

public partial class admin_mem : System.Web.UI.Page
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
                GridView1.DataSource = admin.memSel();
                GridView1.DataBind();
            }
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DetailsView1.DataSource = admin.memDetaile(GridView1.SelectedValue.ToString());
        DetailsView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        switch (DropDownList1.SelectedValue)
        {
            case "1":
                GridView1.DataSource = admin.memSelUsername(TextBox1.Text.ToString());
                GridView1.DataBind();
                break;

            case "2":
                GridView1.DataSource = admin.memSelName(TextBox1.Text.ToString());
                GridView1.DataBind();
                break;
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = admin.memSel();
        GridView1.DataBind();
    }
}