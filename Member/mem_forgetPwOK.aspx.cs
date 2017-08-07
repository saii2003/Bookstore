using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mem_forgetPwOK : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Request.QueryString["mail"] == null)
            {
                Response.Redirect("~/index.aspx");
            }
            else
            {
                Label1.Text = Request.QueryString["mail"].ToString();
            }
        }
        catch (Exception ex)
        {
            ex.ToString();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/index.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Member/index.aspx");
    }
}