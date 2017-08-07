using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessLogic;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BookBL bl = new BookBL();

        GridView1.DataSource = bl.new_Message();
        GridView1.DataBind();

        DataList1.DataSource = bl.chinese_Book("1");
        DataList1.DataBind();

        DataList2.DataSource = bl.chinese_Book("2");
        DataList2.DataBind();


        FormView2.DataSource = bl.chinese_Book("1");
        FormView2.DataBind();

        FormView5.DataSource = bl.chinese_Book("2");
        FormView5.DataBind();

        FormView7.DataSource = bl.chinese_Book("3");
        FormView7.DataBind();


        FormView1.DataSource = bl.everyday_Book();
        FormView1.DataBind();


        FormView4.DataSource = bl.book_top1("1");
        FormView4.DataBind();

        FormView3.DataSource = bl.book_top1("2");
        FormView3.DataBind();

        FormView6.DataSource = bl.book_top1("3");
        FormView6.DataBind();

        bl.book_Hit("1", HyperLink19, HyperLink20, HyperLink21, HyperLink22, HyperLink23, HyperLink24, HyperLink25, HyperLink26, HyperLink27);
        bl.book_Hit("2", HyperLink28, HyperLink29, HyperLink30, HyperLink31, HyperLink32, HyperLink33, HyperLink34, HyperLink35, HyperLink36);
        bl.book_Hit("3", HyperLink38, HyperLink39, HyperLink40, HyperLink41, HyperLink42, HyperLink43, HyperLink44, HyperLink45, HyperLink46);

        

        


       

        
    }
    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}