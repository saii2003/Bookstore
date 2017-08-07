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
using BussinessLogic;


public partial class admin_admin_bookinquire : System.Web.UI.Page
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
            GridView2.DataSource = admin.bookAll();
            GridView2.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        switch (DropDownList1.SelectedValue)
        {
            case "1":
                GridView2.DataSource = admin.bookAll();
                GridView2.DataBind();
                break;
            case "2":
                GridView2.DataSource = admin.bookNameSel(TextBox12.Text);
                GridView2.DataBind();
                break;
            case "3":
                GridView2.DataSource = admin.bookISBNSel(TextBox12.Text);
                GridView2.DataBind();
                break;
            case "4":
                GridView2.DataSource = admin.bookAmountSel(Convert.ToInt32(TextBox12.Text));
                GridView2.DataBind();
                break;
        }
    }

    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView2.PageIndex = e.NewPageIndex;
        GridView2.DataBind();
    }

    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "bookDel")
        {
            if (admin.bookDel(e.CommandArgument.ToString()) > 0)
            {
                Response.Write("<script>alert('刪除書籍成功')</script>");
                GridView2.DataSource = admin.bookAll();
                GridView2.DataBind();
            }
        }
    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        DetailsView1.DataSource = admin.bookDetaile(GridView2.SelectedValue.ToString());
        DetailsView1.DataBind();
    }

    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Button but = (Button)e.Row.Cells[6].FindControl("Button2");
            but.OnClientClick = "javascript:return confirm('您確定要刪除編號「" + ((Label)e.Row.Cells[0].FindControl("Label11")).Text.ToString() + "」的書籍嗎?')";
        }
    }

    protected void DetailsView1_ItemCommand(object sender, DetailsViewCommandEventArgs e)
    {
        try
        {
            switch (e.CommandName)
            {
                //編輯模式
                case "Edits":
                    DetailsView1.ChangeMode(DetailsViewMode.Edit);
                    DetailsView1.DataSource = admin.bookDetaile(e.CommandArgument.ToString());
                    DetailsView1.DataBind();
                    ((Button)DetailsView1.Rows[0].Cells[1].FindControl("Button6")).Visible = false;
                    ((Button)DetailsView1.Rows[0].Cells[1].FindControl("Button4")).Visible = true;
                    ((Button)DetailsView1.Rows[0].Cells[1].FindControl("Button5")).Visible = true;
                    break;
                //書籍更新
                case "Updates":
                    string id = ((Label)DetailsView1.Rows[0].Cells[1].Controls[1]).Text;
                    string Name = ((TextBox)DetailsView1.Rows[1].Cells[1].Controls[1]).Text;
                    string author = ((TextBox)DetailsView1.Rows[2].Cells[1].Controls[1]).Text;
                    string publisher = ((TextBox)DetailsView1.Rows[3].Cells[1].Controls[1]).Text;
                    DateTime Date = Convert.ToDateTime(((TextBox)DetailsView1.Rows[4].Cells[1].Controls[1]).Text);
                    string ISBN = ((TextBox)DetailsView1.Rows[5].Cells[1].Controls[1]).Text;
                    string binding = ((TextBox)DetailsView1.Rows[6].Cells[1].Controls[1]).Text;
                    string language = ((TextBox)DetailsView1.Rows[7].Cells[1].Controls[1]).Text;
                    string price = ((TextBox)DetailsView1.Rows[8].Cells[1].Controls[1]).Text;
                    string amonut = ((TextBox)DetailsView1.Rows[9].Cells[1].Controls[1]).Text;
                    string image = ((TextBox)DetailsView1.Rows[10].Cells[1].Controls[1]).Text;
                    string introduction = ((TextBox)DetailsView1.Rows[11].Cells[1].Controls[1]).Text;
                    string content = ((TextBox)DetailsView1.Rows[12].Cells[1].Controls[1]).Text;
                    if (admin.Update_book(id, Name, author, publisher, Date, ISBN, binding, language, price, amonut, introduction, content, image) > 0)
                    {
                        Response.Write("<script>alert('更新成功');</script>");
                        DetailsView1.DataSource = admin.bookDetaile(id);
                        DetailsView1.DataBind();
                        ((Button)DetailsView1.Rows[0].Cells[1].FindControl("Button6")).Visible = false;
                        ((Button)DetailsView1.Rows[0].Cells[1].FindControl("Button4")).Visible = true;
                        ((Button)DetailsView1.Rows[0].Cells[1].FindControl("Button5")).Visible = true;

                    }

                    break;
                //取消編輯模式
                case "Cancels":
                    DetailsView1.ChangeMode(DetailsViewMode.ReadOnly);
                    DetailsView1.DataSource = admin.bookDetaile(e.CommandArgument.ToString());
                    DetailsView1.DataBind();
                    ((Button)DetailsView1.Rows[0].Cells[1].FindControl("Button6")).Visible = true;
                    break;
            }
        }
        catch (Exception ex)
        {
            ex.ToString();
        }
    }
    protected void Button7_Click1(object sender, EventArgs e)
    {
        switch (DropDownList2.SelectedValue)
        {
            case "Excel":
                admin.outputExcel(GridView2);
                break;
            case "Word":
                admin.outputWord(GridView2);
                break;
        }
    }
    public override void VerifyRenderingInServerForm(Control control)
    {

    }
   
}