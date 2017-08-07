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

public partial class admin_admin_adminSel : System.Web.UI.Page
{
    adminBL admin = new adminBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("~/admin/admin_login.aspx");
        }
        else
        {
            GridView1.DataSource = admin.adminSel();
            GridView1.DataBind();
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

        GridView1.PageIndex = e.NewPageIndex;

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Del")
        {
            admin.admin_Del(e.CommandArgument.ToString());
            GridView1.DataSource = admin.adminSel();
            GridView1.DataBind();
        }
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Button bt = (Button)e.Row.Cells[5].FindControl("Button1");
            bt.OnClientClick = "javascript:return confirm('確定要刪除「" + ((Label)e.Row.Cells[1].FindControl("Label3")).Text.ToString() + "」的帳戶嗎?')";
        }
    }
}