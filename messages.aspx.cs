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

public partial class messages : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("index.aspx");
            }
            else
            {
                BookBL bl = new BookBL();
                FormView1.DataSource = bl.messgaeContent(Request.QueryString["id"]);
                FormView1.DataBind();
            }
        }
        catch (Exception ex)
        {
            ex.ToString();
        }
    }
}