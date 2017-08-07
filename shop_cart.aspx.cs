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

public partial class shop_cart : System.Web.UI.Page
{
    Hashtable ht = new Hashtable();
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        Cart();
        
        if (HttpContext.Current.User.Identity.IsAuthenticated)
        {
            Button3.Text = "結帳";
            

        }
        else
        {
            Button3.Text = "結帳(尚未登入)";
        }
    }
    protected void Cart()
    {
		/*購物車*/
        DataTable dt = new DataTable();
        DataRow dr;
        Int32 Totle = 0;
        Int32 q = 0;
        String[] arrStr;
        String pName, pPrice, pQ;
        ht = (Hashtable)Session["AddtoCart"];
        try
        {
			
            if (ht.Count == 0)
            {
				//hashtable無資料無須動作
            }
            else
            {
                dt.Columns.Add("商品編號");
                dt.Columns.Add("商品名稱" );
                dt.Columns.Add("單價" );
                dt.Columns.Add("數量" );
                dt.Columns.Add("合計");

            }
            foreach (String pID in ht.Keys)
            {
                arrStr = Convert.ToString(ht[pID]).Split('&');
                pName = arrStr[0];
                pPrice = arrStr[1];
                pQ = arrStr[2];
                dr = dt.NewRow();
                dr["商品編號"] = pID;
                dr["商品名稱"] = pName;
                dr["單價"] = pPrice;
                dr["數量"] = pQ;
                dr["合計"] = Convert.ToInt32(pPrice) * Convert.ToInt32(pQ);
                dt.Rows.Add(dr);
                q += Convert.ToInt32(pQ);
                Totle += (Convert.ToInt32(pPrice) * Convert.ToInt32(pQ));
            }
            Label2.Text = Convert.ToString(q);
            Label1.Text = Convert.ToString(Totle);
           
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
        catch (Exception ex)
        {
            ex.ToString();
        }
        if (GridView1.Rows.Count == 0)
        {
            Button3.Enabled = false;
            Button4.Visible = false;
        }

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        ht.Remove(GridView1.Rows[id].Cells[1].Text);
        Cart();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (HttpContext.Current.User.Identity.IsAuthenticated)
        {
            Session["shop"] = "ok";
            Response.Redirect("~/payment_info.aspx");
        }
        else
        {
            Response.Redirect("~/member/mem_login.aspx");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/index.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        ht.Clear();
        Response.Redirect("~/shop_cart.aspx");
    }



 
}