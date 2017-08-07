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


public partial class admin_admin_bookadd : System.Web.UI.Page
{
    adminBL BL = new adminBL();
    BookBL bookBL = new BookBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("~/admin/admin_login.aspx");
            }

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Guid photoGuid = Guid.NewGuid();
        string fileName = imagesUpload.FileName;
        string photoFileName = photoGuid.ToString() + fileName;
        DateTime dt = Convert.ToDateTime(TextBox1.Text);
        if (bookBL.photo_HasFile(imagesUpload))
        {
            if (BL.add_Book(name.Text, DropDownList1.SelectedValue, DropDownList2.SelectedValue, DropDownList3.SelectedValue, author.Text, publisher.Text, dt, ISBN.Text, binding.Text, language.Text, price.Text, amonet.Text, introduction.Text, content.Text, photoFileName) > 0)
            {
                bookBL.file_Upload(imagesUpload, photoGuid.ToString());
                name.Text = "";
                author.Text = "";
                publisher.Text = "";
                ISBN.Text = "";
                language.Text = "";
                amonet.Text = "";
                TextBox1.Text = "";
                binding.Text = "";
                price.Text = "";
                introduction.Text = "";
                content.Text = "";
                Response.Write("<script>alert('新增書籍成功!');</script>");
            }
            else
            {
                Response.Write("<script>alert('新增書籍失敗!');</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('請上傳書籍封面!');</script>");
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList2.Items.Clear();
        switch (DropDownList1.SelectedValue)
        {
            case "0":
                DropDownList2.Items.Add(new ListItem("請選擇分類", "0"));
                DropDownList2.Enabled = false;
                break;
            case "1":
                DropDownList2.Items.Add(new ListItem("文學", "1"));
                DropDownList2.Items.Add(new ListItem("心靈勵志", "2"));
                DropDownList2.Items.Add(new ListItem("藝術設計", "3"));
                DropDownList2.Items.Add(new ListItem("電腦資訊", "4"));
                DropDownList2.Items.Add(new ListItem("自然科普", "5"));
                DropDownList2.Items.Add(new ListItem("人文歷史", "6"));
                DropDownList2.Items.Add(new ListItem("社會科學", "7"));
                DropDownList2.Items.Add(new ListItem("醫療保健", "8"));
                DropDownList2.Items.Add(new ListItem("財經企管", "9"));
                DropDownList2.Items.Add(new ListItem("語言學習", "10"));
                DropDownList2.Items.Add(new ListItem("漫畫", "11"));
                DropDownList2.Enabled = true;
                break;
            case "2":
                DropDownList2.Items.Add(new ListItem("文學", "1"));
                DropDownList2.Items.Add(new ListItem("藝術設計", "2"));
                DropDownList2.Items.Add(new ListItem("電腦資訊", "3"));
                DropDownList2.Items.Add(new ListItem("人文歷史", "4"));
                DropDownList2.Items.Add(new ListItem("財經企管", "5"));
                DropDownList2.Items.Add(new ListItem("語言學習", "6"));
                DropDownList2.Enabled = true;
                break;
            case "3":
                DropDownList2.Items.Add(new ListItem("時尚美妝", "1"));
                DropDownList2.Items.Add(new ListItem("遊戲電玩", "2"));
                DropDownList2.Items.Add(new ListItem("電腦資訊", "3"));
                DropDownList2.Items.Add(new ListItem("汽/機車", "4"));
                DropDownList2.Items.Add(new ListItem("財經企管", "5"));
                DropDownList2.Items.Add(new ListItem("語言學習", "6"));
                DropDownList2.Items.Add(new ListItem("旅遊", "7"));
                DropDownList2.Items.Add(new ListItem("其他雜誌", "8"));
                DropDownList2.Enabled = true;
                break;
        }
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "1")
        {
            DropDownList3.Items.Clear();
            switch (DropDownList2.SelectedValue)
            {
                case "0":
                    DropDownList3.Items.Add(new ListItem("請選擇分類", "0"));
                    DropDownList3.Enabled = false;
                    break;
                case "1":
                    DropDownList3.Items.Add(new ListItem("中文現代文學", "1"));
                    DropDownList3.Items.Add(new ListItem("日本現代文學", "2"));
                    DropDownList3.Items.Add(new ListItem("歐美現代文學", "3"));
                    DropDownList3.Items.Add(new ListItem("世界文學", "4"));
                    DropDownList3.Items.Add(new ListItem("推理/科幻小說", "5"));
                    DropDownList3.Items.Add(new ListItem("奇幻/恐怖小說", "6"));
                    DropDownList3.Items.Add(new ListItem("武俠/歷史小說", "7"));
                    DropDownList3.Items.Add(new ListItem("其他文學", "8"));
                    DropDownList3.Enabled = true;
                    break;
                case "2":
                    DropDownList3.Items.Add(new ListItem("勵志", "1"));
                    DropDownList3.Items.Add(new ListItem("心理學", "2"));
                    DropDownList3.Items.Add(new ListItem("其他心靈勵志", "3"));
                    DropDownList3.Enabled = true;
                    break;
                case "3":
                    DropDownList3.Items.Add(new ListItem("美術設計", "1"));
                    DropDownList3.Items.Add(new ListItem("商業設計", "2"));
                    DropDownList3.Items.Add(new ListItem("室內設計", "3"));
                    DropDownList3.Items.Add(new ListItem("電影", "4"));
                    DropDownList3.Items.Add(new ListItem("音樂", "5"));
                    DropDownList3.Items.Add(new ListItem("攝影", "6"));
                    DropDownList3.Items.Add(new ListItem("其他藝術設計", "7"));
                    DropDownList3.Enabled = true;
                    break;
                case "4":
                    DropDownList3.Items.Add(new ListItem("作業系統", "1"));
                    DropDownList3.Items.Add(new ListItem("電腦組裝", "2"));
                    DropDownList3.Items.Add(new ListItem("網路通訊", "3"));
                    DropDownList3.Items.Add(new ListItem("影像繪圖", "4"));
                    DropDownList3.Items.Add(new ListItem("程式設計", "5"));
                    DropDownList3.Items.Add(new ListItem("文書應用", "6"));
                    DropDownList3.Items.Add(new ListItem("其他資訊", "7"));
                    DropDownList3.Enabled = true;
                    break;
                case "5":
                    DropDownList3.Items.Add(new ListItem("自然科學", "1"));
                    DropDownList3.Items.Add(new ListItem("動物", "2"));
                    DropDownList3.Items.Add(new ListItem("植物", "3"));
                    DropDownList3.Items.Add(new ListItem("其他自然科普", "4"));
                    DropDownList3.Enabled = true;
                    break;
                case "6":
                    DropDownList3.Items.Add(new ListItem("歷史", "1"));
                    DropDownList3.Items.Add(new ListItem("哲學", "2"));
                    DropDownList3.Items.Add(new ListItem("宗教", "3"));
                    DropDownList3.Items.Add(new ListItem("其他人文歷史", "4"));
                    DropDownList3.Enabled = true;
                    break;
                case "7":
                    DropDownList3.Items.Add(new ListItem("法律", "1"));
                    DropDownList3.Items.Add(new ListItem("政治", "2"));
                    DropDownList3.Items.Add(new ListItem("軍事", "3"));
                    DropDownList3.Items.Add(new ListItem("教育", "4"));
                    DropDownList3.Items.Add(new ListItem("其他", "5"));
                    DropDownList3.Enabled = true;
                    break;
                case "8":
                    DropDownList3.Items.Add(new ListItem("養身", "1"));
                    DropDownList3.Items.Add(new ListItem("飲食", "2"));
                    DropDownList3.Items.Add(new ListItem("減重", "3"));
                    DropDownList3.Items.Add(new ListItem("其他醫療保健", "4"));
                    DropDownList3.Enabled = true;
                    break;
                case "9":
                    DropDownList3.Items.Add(new ListItem("企業管理", "1"));
                    DropDownList3.Items.Add(new ListItem("投資理財", "2"));
                    DropDownList3.Items.Add(new ListItem("會計", "3"));
                    DropDownList3.Items.Add(new ListItem("統計", "4"));
                    DropDownList3.Items.Add(new ListItem("其他財經企管", "5"));
                    DropDownList3.Enabled = true;
                    break;
                case "10":
                    DropDownList3.Items.Add(new ListItem("中文學習", "1"));
                    DropDownList3.Items.Add(new ListItem("英文學習", "2"));
                    DropDownList3.Items.Add(new ListItem("日文學習", "3"));
                    DropDownList3.Items.Add(new ListItem("字典", "4"));
                    DropDownList3.Items.Add(new ListItem("其他語言", "5"));
                    DropDownList3.Enabled = true;
                    break;
            }
        }
        //
        if (DropDownList1.SelectedValue == "2")
        {
            DropDownList3.Items.Clear();
            switch (DropDownList2.SelectedValue)
            {
                case "0":
                    DropDownList3.Items.Add(new ListItem("請選擇分類", "0"));
                    DropDownList3.Enabled = false;
                    break;
                case "1":
                    DropDownList3.Items.Add(new ListItem("大眾文學", "1"));
                    DropDownList3.Items.Add(new ListItem("西洋文學", "2"));
                    DropDownList3.Items.Add(new ListItem("世界文學", "3"));
                    DropDownList3.Items.Add(new ListItem("中國文學", "4"));
                    DropDownList3.Items.Add(new ListItem("其他文學", "5"));
                    DropDownList3.Enabled = true;
                    break;
            }
        }
        if (DropDownList1.SelectedValue == "3")
        {
            DropDownList3.Items.Clear();
            switch (DropDownList2.SelectedValue)
            {
                case "0":
                    DropDownList3.Items.Add(new ListItem("請選擇分類", "0"));
                    DropDownList3.Enabled = false;
                    break;
                case "1":
                    DropDownList3.Items.Add(new ListItem("女性雜誌", "1"));
                    DropDownList3.Items.Add(new ListItem("男性雜誌", "2"));
                    DropDownList3.Items.Add(new ListItem("髮型", "3"));
                    DropDownList3.Items.Add(new ListItem("美容化妝", "4"));
                    DropDownList3.Items.Add(new ListItem("其他", "5"));
                    DropDownList3.Enabled = true;
                    break;
            }
        }
    }
}