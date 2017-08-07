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

public partial class Member_mem_orderSel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MemberBL memBL = new MemberBL();
        if (HttpContext.Current.User.Identity.IsAuthenticated)
        {
            HttpCookie cookie = HttpContext.Current.Request.Cookies[HttpContext.Current.User.Identity.Name];
            string mid = HttpContext.Current.Server.UrlDecode(cookie.Values["mID"].ToString());
            GridView2.DataSource = memBL.order_select(mid);
            GridView2.DataBind();
            Label10.Text = (GridView2.Rows.Count).ToString();
            
        }
        else
        {
            Response.Redirect("~/Member/mem_login.aspx");
        }
        
    }
    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
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