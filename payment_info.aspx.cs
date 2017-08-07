using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class payment_info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["shop"].ToString() == "ok")
        {
            HttpCookie cookie = HttpContext.Current.Request.Cookies[HttpContext.Current.User.Identity.Name];
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                Session["payment"] = "PayPal";
                TextBox2.Text = HttpContext.Current.Server.UrlDecode(cookie.Values["name"].ToString());
                TextBox3.Text = HttpContext.Current.Server.UrlDecode(cookie.Values["phone"].ToString());
                TextBox6.Text = HttpContext.Current.Server.UrlDecode(cookie.Values["cellphone"].ToString());
                TextBox4.Text = HttpContext.Current.Server.UrlDecode(cookie.Values["address"].ToString());
                TextBox5.Text = HttpContext.Current.Server.UrlDecode(cookie.Values["email"].ToString());
                
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }
        else
        {
            Response.Redirect("index.aspx");
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/shop_cart.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == false)
        {
            Response.Write("<script>alert('請選擇付款方式');</script>");
        }
        else
        {
            Response.Redirect("~/confirm.aspx");
        }
    }
}