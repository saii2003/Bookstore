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

public partial class Member_mem_orderDel : System.Web.UI.Page
{
    HttpCookie cookie =HttpContext.Current.Request.Cookies[HttpContext.Current.User.Identity.Name];
    protected void Page_Load(object sender, EventArgs e)
    {
        MemberBL memBL = new MemberBL();

        if (HttpContext.Current.User.Identity.IsAuthenticated)
        {
            if (!Page.IsPostBack)
            {
                GridView2.DataSource = memBL.order_select(HttpContext.Current.Server.UrlDecode(cookie.Values["mID"].ToString()));
                GridView2.DataBind();
                Label10.Text = GridView2.Rows.Count.ToString();
            }
         }
        else
        {
            Response.Redirect("~/Member/mem_login.aspx");
        }
    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        MemberBL memBL = new MemberBL();
        if (e.CommandName == "orderDel")
        {

            if (memBL.order_Del(e.CommandArgument.ToString()) > 0)
            {
                Response.Write("<script>alert('取消訂單成功');</script>");
                GridView2.DataSource = memBL.order_select(HttpContext.Current.Server.UrlDecode(cookie.Values["mID"].ToString()));
                GridView2.DataBind();
            }
        }
    }
    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            if (((Label)e.Row.Cells[4].FindControl("Label5")).Text == "True" || ((Label)e.Row.Cells[5].FindControl("Label6")).Text == "True")
            {
                ((Button)e.Row.Cells[6].FindControl("Button2")).Enabled = false;
            }

            Button but = (Button)e.Row.Cells[6].FindControl("Button2");
            but.Attributes.Add("onclick", "javascript: if (confirm('確定要取消訂單嗎?')){return true;} else {return false;}");

            if (((Label)e.Row.Cells[4].FindControl("Label5")).Text == "True")
            {
                ((Label)e.Row.Cells[4].FindControl("Label5")).Text = "已付款";
            }
            else
            {
                ((Label)e.Row.Cells[4].FindControl("Label5")).Text = "未付款";
            }

            if (((Label)e.Row.Cells[5].FindControl("Label6")).Text == "True")
            {
                ((Label)e.Row.Cells[5].FindControl("Label6")).Text = "已出貨";
            }
            else
            {
                ((Label)e.Row.Cells[5].FindControl("Label6")).Text = "未出貨";
            }
        }
    }

}