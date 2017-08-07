using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessLogic;

public partial class Member_mem_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BookBL bookBL = new BookBL();
        GridView1.DataSource = bookBL.new_Message();
        GridView1.DataBind();
    }
}