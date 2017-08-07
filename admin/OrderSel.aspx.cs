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

public partial class admin_OrderSel : System.Web.UI.Page
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
            GridView1.DataSource = admin.orderSel();
            GridView1.DataBind();
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, System.EventArgs e)
    {
        switch (DropDownList1.SelectedValue)
        {

            case "2":
                GridView1.DataSource = admin.orderpay(false);
                GridView1.DataBind();
                break;
            case "3":
                GridView1.DataSource = admin.ordership(false);
                GridView1.DataBind();
                break;
        }
    }

    protected void LinkButton1_Click(object sender, System.EventArgs e)
    {
        GridView1.DataSource = admin.orderSel();
        GridView1.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, System.EventArgs e)
    {
        string id = ((Label)GridView1.Rows[GridView1.SelectedIndex].Cells[0].FindControl("Label18")).Text.ToString();
        GridView2.DataSource = admin.orderDetaile(GridView1.SelectedValue.ToString());
        GridView2.DataBind();

        DetailsView1.DataSource = admin.memDate(id);
        DetailsView1.DataBind();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        GridView1.DataSource = admin.orderSel();
        GridView1.DataBind();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string Id = GridView1.DataKeys[e.RowIndex].Value.ToString();
        bool pay = ((CheckBox)GridView1.Rows[e.RowIndex].Cells[6].FindControl("CheckBox1")).Checked;
        bool ship = ((CheckBox)GridView1.Rows[e.RowIndex].Cells[6].FindControl("CheckBox2")).Checked;
        if (admin.UpdateOrder(Id, pay, ship) > 0)
        {
            Response.Write("<script>alert('更新成功')</script>");
            GridView1.EditIndex = -1;
            GridView1.DataSource = admin.orderSel();
            GridView1.DataBind();
        }
    }
}