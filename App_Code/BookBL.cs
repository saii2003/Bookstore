using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.IO;

using DataAccess;

namespace BussinessLogic
{
    public class BookBL
    {
        public string order_ID;//編號
        public int bookAmonet;//庫存
        public int bookhit;//銷售量
        public int order_No;//流水號
        //訊息公告
        public DataTable new_Message()
        {
            BookDA bookDA = new BookDA();
            return bookDA.new_Message();
        }
        //chinese
        public DataTable chinese_Book(string bookType)
        {
            BookDA bookDA = new BookDA();
            return bookDA.chinese_Book(bookType);
        }
        //外文新書上架
        public DataTable foreign_Book(string bookType)
        {
            BookDA bookDA = new BookDA();
            return bookDA.foreign_Book(bookType);
        }
        public DataTable book_top1(string bookType)
        {
            BookDA bookDA = new BookDA();
            return bookDA.book_top1(bookType);
        }
        //排行榜
         public void book_Hit(string bookType,HyperLink h1,HyperLink h2,HyperLink h3, HyperLink h4, HyperLink h5, HyperLink h6,HyperLink h7,HyperLink h8,HyperLink h9)
         {
             BookDA bookDA = new BookDA();
             bookDA.book_Hit(bookType, h1, h2, h3, h4, h5, h6, h7, h8, h9);

         }
        //每日一書
        public DataTable everyday_Book()
        {
            BookDA bookDA = new BookDA();
            return bookDA.everyday_Book();
        }
        public DataTable messgaeContent(string id)
        {
            BookDA bookDA = new BookDA();
            return bookDA.messgaeContent(id);
        }
        //書籍內容product.aspx
        public DataTable product(string bookID)
        {
            BookDA bookDA = new BookDA();
            return bookDA.product(bookID);
        }
        //作者所有書籍
        public DataTable authorBook(string bookAuthor)
        {
            BookDA bookDA = new BookDA();
            return bookDA.authorBook(bookAuthor);
        }
        //留言板
        public int message_center(string mID, string bookID, string title, string date, string contents)
        {
            BookDA bookDA = new BookDA();
            return bookDA.message_center(mID, bookID, title, date, contents);
        }
        //顯示留言
        public DataTable product_message(string bookID)
        {
            BookDA bookDA = new BookDA();
            return bookDA.product_message(bookID);
        }
        //書籍名稱查詢
        public DataTable BookNameSearch(string bookName, int Pages)
        {
            BookDA bookDA = new BookDA();
            return bookDA.BookNameSearch(bookName, Pages);
        }
        //查詢書籍名稱數量
        public string BookNameSearchCount(string bookName)
        {
            BookDA bookDA = new BookDA();
            return bookDA.BookNameSearchCount(bookName);
        }
        //作者書籍查詢
        public DataTable BookAuthorSearch(string bookAuthor, int Pages)
        {
            BookDA bookDA = new BookDA();
            return bookDA.BookAuthorSearch(bookAuthor, Pages);
        }
        //作者書籍查詢數量
        public string BookAuthorSearchCount(string bookAuthor)
        {
            BookDA bookDA = new BookDA();
            return bookDA.BookAuthorSearchCount(bookAuthor);
        }
        //書籍出版社查詢
        public DataTable BookPublisherSearch(string bookPublisher, int Pages)
        {
            BookDA bookDA = new BookDA();
            return bookDA.BookPublisherSearch(bookPublisher, Pages);
        }
        //書籍出版社查詢數量
        public string BookPublisherSearchCount(string bookPublisher)
        {
            BookDA bookDA = new BookDA();
            return bookDA.BookPublisherSearchCount(bookPublisher);
        }
        //書籍ISBN查詢
        public DataTable BookISBNSearch(string bookISBN, int Pages)
        {
            BookDA bookDA = new BookDA();
            return bookDA.BookISBNSearch(bookISBN, Pages);
        }
        //書籍ISBN數量
        public string BookISBNSearchCount(string bookISBN)
        {
            BookDA bookDA = new BookDA();
            return bookDA.BookISBNSearchCount(bookISBN);
        }
        public DataTable bookList(string bookType, string bookClass1, string bookClass2, int Pages)
        {
            BookDA bookDA = new BookDA();
            return bookDA.bookList(bookType, bookClass1, bookClass2, Pages);
        }
        public string bookListCount(string bookType, string bookClass1, string bookClass2)
        {
            BookDA bookDA = new BookDA();
            return bookDA.bookListCount(bookType, bookClass1, bookClass2);
        }
        //新增訂單
        public int orders_Add(string orderID, int mID, string payment, string orderDate, int totalPrice, int productAmount)
        {
            BookDA bookDA = new BookDA();
            return bookDA.orders_Add(orderID, mID, payment, orderDate, totalPrice, productAmount);
        }
        //年月日+流水號訂單編號
        public string orderID(string Date)
        {
            string oID;
            BookDA bookDA = new BookDA();
            bookDA.orderID(Date);
            this.order_ID = bookDA.order_ID;
            string id = this.order_ID == "" ? order_ID : this.order_ID.Substring(0, 6);

            if (id != DateTime.Now.ToString("yyyyMM"))
            {
                oID = DateTime.Now.ToString("yyyyMMdd") + "000001";
            }
            else
            {
                oID = DateTime.Now.ToString("yyyyMMdd") + (Convert.ToInt32(this.order_ID.Substring(8, 6)) + 1).ToString("000000");
            }
            return oID;


        }
        //訂單明細
        public int orderDetailes_Add(string orderID, string bookID, int amount, int unitPrice)
        {
            BookDA bookDA = new BookDA();
            return bookDA.orderDetailes_Add(orderID, bookID, amount, unitPrice);
        }
        public int hit_amonet(string bookID, int bookAmonet, int bookhit)
        {
            BookDA bookDA = new BookDA();
            return bookDA.hit_amonet(bookID, bookAmonet, bookhit);
        }
        public void sel_hit_amonet(string bookID)
        {
            BookDA bookDA = new BookDA();
            bookDA.sel_hit_amonet(bookID);
            this.bookAmonet = bookDA.bookAmonet;
            this.bookhit = bookDA.bookhit;
        }









        //上傳書籍封面 
        public void file_Upload(FileUpload upload, string photoGuid)
        {
            //是否允許上傳
            bool allow_Upload = false;
            string savePath = HttpContext.Current.Request.MapPath("~/productImages/");//儲存路徑
            string fileName = upload.FileName;//檔案名稱
            string fileExtension = Path.GetExtension(upload.FileName).ToLower();//副檔名

            //只允許{ jpeg,gif,jpg,png }副檔名
            string[] allowExtension = { ".jpeg", ".gif", ".jpg", ".png" };

            //檢查是否有檔案
            if (upload.HasFile)
            {
                for (int i = 0; i < allowExtension.Length; i++)//檢查副檔名
                {
                    if (fileExtension == allowExtension[i])
                    {
                        allow_Upload = true;
                    }
                }
                if (allow_Upload)
                {
                    upload.SaveAs(savePath + photoGuid + fileName); 
                }
            }
        }
        //上傳書籍封面是否有檔案
        public bool photo_HasFile(FileUpload upload)
        {
            bool allow = false;
            allow = upload.HasFile;
            return allow;
        }
        //Datalist booklist分頁 
        public void Pages(Panel Panels, string activePage, int dataCount, string type, string id, string list)
        {
            //第一頁
            LinkButton FirstLink = new LinkButton();
            FirstLink.Text = "第一頁";
            FirstLink.CssClass = "Link";
            FirstLink.PostBackUrl = string.Format("?type={0}&class_id={1}&list={2}&page={3}", type, id, list, 1);
            Panels.Controls.Add(FirstLink);
            //上一頁
            LinkButton ProLink = new LinkButton();
            ProLink.Text = "前一頁";
            ProLink.CssClass = "Link";
            ProLink.PostBackUrl = string.Format("?type={0}&class_id={1}&list={2}&page={3}", type, id, list, Convert.ToInt32(activePage) - 1);
            Panels.Controls.Add(ProLink);
            
            //判斷是否為第一頁 
            if (Convert.ToInt32(activePage) == 1)
            {
                FirstLink.Visible = false;
                ProLink.Visible = false;
            }
            else
            {
                FirstLink.Visible = true;
                ProLink.Visible = true;
            }
            decimal Data_Count = dataCount;//資料總數量
            decimal Page_Count = 12;//一頁輸出資料數量
            decimal Total_Page = Data_Count / Page_Count; ;//總頁數
            decimal Pages = Convert.ToDecimal(activePage) / 10;

            if (dataCount <= 12)
            {
                FirstLink.Visible = false;
            }
            else
            {
                if (Total_Page > Math.Truncate(Total_Page))
                {
                    Total_Page = Math.Truncate(Total_Page) + 1;
                }
                else
                {
                    Total_Page = Data_Count / Page_Count;
                }
            }
            if (Pages <= 0)
            {
                Pages = 1;
            }
            else
            {
                if (Pages > Math.Truncate(Pages))
                {
                    Pages = Math.Truncate(Pages) + 1;
                }
            }
            for (int i = 1; i <= 10; i++)
            {

                LinkButton NumLink = new LinkButton();
                //一次呈現10頁
                NumLink.ID = (((Pages - 1) * 10 + i)).ToString();
                NumLink.Text = Convert.ToString(((Pages - 1) * 10) + i);
                NumLink.CssClass = "Num";

                if (Convert.ToInt32(NumLink.ID) > Total_Page)
                {
                    NumLink.Visible = false;
                }

                if (((Pages - 1) * 10) + i == Convert.ToInt32(activePage))
                {
                    NumLink.CssClass = "active";
                }

                NumLink.PostBackUrl = string.Format("?type={0}&class_id={1}&list={2}&page={3}", type, id, list, ((Pages - 1) * 10) + i);
                Panels.Controls.Add(NumLink);

            }

           



            //下一頁
            LinkButton NextLink = new LinkButton();
            NextLink.Text = "下一頁";
            NextLink.CssClass = "Link";
            NextLink.PostBackUrl = string.Format("?type={0}&class_id={1}&list={2}&page={3}", type, id, list, Convert.ToInt32(activePage) + 1);
            Panels.Controls.Add(NextLink);
            //最後一頁
            LinkButton LastLink = new LinkButton();
            LastLink.Text = "最後一頁";
            LastLink.CssClass = "Link";
            LastLink.PostBackUrl = string.Format("?type={0}&class_id={1}&list={2}&page={3}", type, id, list, Total_Page);
            Panels.Controls.Add(LastLink);
            if (Convert.ToInt32(activePage) >= Total_Page)
            {
                NextLink.Visible = false;
                LastLink.Visible = false;
            }
            else
            {
                NextLink.Visible = true;
                LastLink.Visible = true;
            }


        }
        //書籍查詢分頁
        public void Pages(Panel Panels, string activePage, int dataCount, string type, string search)
        {
            //第一頁
            LinkButton FirstLink = new LinkButton();
            FirstLink.Text = "第一頁";
            FirstLink.CssClass = "Link";
            FirstLink.PostBackUrl = string.Format("?type={0}&search={1}&page={2}", type, search, 1);
            Panels.Controls.Add(FirstLink);
            //上一頁
            LinkButton ProLink = new LinkButton();
            ProLink.Text = "前一頁";
            ProLink.CssClass = "Link";
            ProLink.PostBackUrl = string.Format("?type={0}&search={1}&page={2}", type, search, Convert.ToInt32(activePage) - 1);
            Panels.Controls.Add(ProLink);
            if (Convert.ToInt32(activePage) == 1)
            {
                FirstLink.Visible = false;
                ProLink.Visible = false;
            }
            else
            {
                FirstLink.Visible = true;
                ProLink.Visible = true;
            }
            decimal Data_Count = dataCount;//資料數量
            decimal Page_Count = 8;//一頁輸出資料數量
            decimal Total_Page = Data_Count / Page_Count; ;//總頁數

            if (dataCount <= 8)
            {
                FirstLink.Visible = false;
            }
            else
            {
                if (Total_Page > Math.Truncate(Total_Page))
                {
                    Total_Page = Math.Truncate(Total_Page) + 1;
                }
                else
                {
                    Total_Page = Data_Count / Page_Count;
                }
            }
            for (int i = 1; i <= Total_Page; i++)
            {
                LinkButton NumLink = new LinkButton();
                NumLink.Text = Convert.ToString(i.ToString());
                NumLink.CssClass = "Num";
                if (Data_Count <= 8)
                {
                    NumLink.Visible = false;
                }
                else
                {
                    if (Convert.ToInt32(i.ToString()) == Convert.ToInt32(activePage))
                    {
                        NumLink.CssClass = "active";
                    }
                }
                NumLink.PostBackUrl = string.Format("?type={0}&search={1}&page={2}", type, search, i.ToString());
                Panels.Controls.Add(NumLink);

            }

            //下一頁
            LinkButton NextLink = new LinkButton();
            NextLink.Text = "下一頁";
            NextLink.CssClass = "Link";
            NextLink.PostBackUrl = string.Format("?type={0}&search={1}&page={2}", type, search, Convert.ToInt32(activePage) + 1);
            Panels.Controls.Add(NextLink);
            //最後一頁
            LinkButton LastLink = new LinkButton();
            LastLink.Text = "最後一頁";
            LastLink.CssClass = "Link";
            LastLink.PostBackUrl = string.Format("?type={0}&search={1}&page={2}", type, search, Total_Page);
            Panels.Controls.Add(LastLink);
            if (Convert.ToInt32(activePage) >= Total_Page)
            {
                NextLink.Visible = false;
                LastLink.Visible = false;
            }
            else
            {
                NextLink.Visible = true;
                LastLink.Visible = true;
            }


        }

        public void Cart(Hashtable ht, Label l1, Label l2, GridView gv)
        {
            DataTable dt = new DataTable();
            string[] arr;
            string name, unitPrice, count;
            int totalPrice = 0;//購買總價
            int totalCount = 0;//購買商品數量
            try
            {

                if (ht.Count != 0)
                {
                    dt.Columns.Add("商品編號");
                    dt.Columns.Add("商品名稱");
                    dt.Columns.Add("單價");
                    dt.Columns.Add("數量");
                    dt.Columns.Add("合計");
                }
                foreach (string pID in ht.Keys)
                {
                    arr = Convert.ToString(ht[pID]).Split('&');
                    name = arr[0];
                    unitPrice = arr[1];
                    count = arr[2];
                    DataRow dr;
                    dr = dt.NewRow();
                    dr["商品編號"] = pID;
                    dr["商品名稱"] = name;
                    dr["單價"] = unitPrice;
                    dr["數量"] = count;
                    dr["合計"] = Convert.ToInt32(unitPrice) * Convert.ToInt32(count);
                    dt.Rows.Add(dr);
                    totalCount += Convert.ToInt32(count);
                    totalPrice += (Convert.ToInt32(unitPrice) * Convert.ToInt32(count));

                    l1.Text = totalPrice.ToString();
                    l2.Text = totalCount.ToString();

                    gv.DataSource = dt;
                    gv.DataBind();
                }
            }
            catch (Exception ex)
            {
                ex.ToString();
            }


        }
    }
}
