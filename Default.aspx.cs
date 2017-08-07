using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["BookShopConnectionString"].ConnectionString);
        conn.Open();
        SqlCommand cmd = new SqlCommand("UPDATE Orders SET pay=@pay WHERE orderID=@orderID", conn);
        cmd.Parameters.Add("@pay", SqlDbType.Bit).Value = true;
        cmd.Parameters.Add("@orderID", SqlDbType.NVarChar, 50).Value = "20170207000004";
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        conn.Close();
        conn.Dispose();
    }
}