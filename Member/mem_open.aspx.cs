using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessLogic;

public partial class mem_open : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            MemberBL memBL = new MemberBL();
            memBL.mem_verify(Request.QueryString["id"].ToString());
        }
        else
        {
            Response.Redirect("~/index.aspx");
        }
    }
}