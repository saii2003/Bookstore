using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paypal_ipn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        iPayPal paypal = new iPayPal();
        paypal.PayPal_IPN();
    }
}