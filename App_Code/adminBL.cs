using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.IO;
using System.Web.UI;
using System.Xml;
using System.Xml.Linq;
using System.Web.UI.WebControls;
using DataAccess;

namespace BussinessLogic
{
    public class adminBL
    {
        public int add_Book(string bookName, string bookType, string bookClass1, string bookClass2, string bookAuthor, string bookPublisher, DateTime bookDate, string bookISBN, string bookBinding, string bookLanguage, string bookPrice, string bookAmonet, string bookIntroduction, string bookContent, string bookImage)
        {
            int count = 0;
            adminDA da = new adminDA();
            count = da.add_Book(bookName, bookType, bookClass1, bookClass2, bookAuthor, bookPublisher, bookDate, bookISBN, bookBinding, bookLanguage, bookPrice, bookAmonet, bookIntroduction, bookContent, bookImage);
            return count;
        }
        public DataTable bookAll()
        {
            adminDA admin = new adminDA();
            return admin.bookAll();
        }
        public DataTable bookNameSel(string bookName)
        {
            adminDA admin = new adminDA();
            return admin.bookNameSel(bookName);
        }
        public DataTable bookAmountSel(int amount)
        {
            adminDA admin = new adminDA();
            return admin.bookAmountSel(amount);
        }
        public DataTable bookISBNSel(string ISBN)
        {
            adminDA admin = new adminDA();
            return admin.bookISBNSel(ISBN);
        }
        public DataTable bookDetaile(string bookID)
        {
            adminDA admin = new adminDA();
            return admin.bookDetaile(bookID);
        }
        public DataTable memSel()
        {
            adminDA admin = new adminDA();
            return admin.memSel();
        }
        public DataTable memDetaile(string mID)
        {
            adminDA admin = new adminDA();
            return admin.memDetaile(mID);
        }
        public DataTable memSelUsername(string username)
        {
            adminDA admin = new adminDA();
            return admin.memSelUsername(username);
        }
        public DataTable memSelName(string name)
        {
            adminDA admin = new adminDA();
            return admin.memSelName(name);
        }
        public DataTable orderSel()
        {
            adminDA admin = new adminDA();
            return admin.orderSel();
        }
        public DataTable orderDetaile(string orderID)
        {
            adminDA admin = new adminDA();
            return admin.orderDetaile(orderID);
        }
        public int UpdateOrder(string orderID, bool pay, bool ship)
        {
            adminDA admin = new adminDA();
            return admin.UpdateOrder(orderID, pay, ship);
        }
        public DataTable memDate(string mID)
        {
            adminDA admin = new adminDA();
            return admin.memDate(mID);

        }
        public DataTable orderpay(bool pay)
        {
            adminDA admin = new adminDA();
            return admin.orderpay(pay);
        }
        public DataTable ordership(bool ship)
        {
            adminDA admin = new adminDA();
            return admin.ordership(ship);
        }

        public int messageInsert(string type, string title, string messager, string content)
        {
            adminDA admin = new adminDA();
            return admin.messageInsert(type, title, messager, content);
        }
        public DataTable messageSel()
        {
            adminDA admin = new adminDA();
            return admin.messageSel();
        }
        public DataTable Del(string id)
        {
            adminDA admin = new adminDA();
            return admin.Del(id);
        }
        public DataTable messageSel(DateTime time1, DateTime time2)
        {
            adminDA admin = new adminDA();
            return admin.messageSel(time1, time2);
        }
        public int shipCount()
        {
            int count = 0;
            adminDA admin = new adminDA();
            count = admin.shipCount();
            return count;
        }
        public DataTable bookAmounts()
        {
            adminDA admin = new adminDA();
            return admin.bookAmounts();
        }
        public int bookAmountsCount()
        {
            adminDA admin = new adminDA();
            return admin.bookAmountsCount();
        }
        public int memCount()
        {
            adminDA admin = new adminDA();
            return admin.memCount();
        }
        public int admin_add(string account, string password, string name, int level)
        {
            adminDA admin = new adminDA();
            return admin.admin_add(account, password, name, level);
        }
        public int admin_login(string account, string password)
        {
            adminDA admin = new adminDA();
            return admin.admin_login(account, password);
        }
        public int bookDel(string bookID)
        {
            adminDA admin = new adminDA();
            return admin.bookDel(bookID);
        }
        public int Update_book(string ID, string Name, string Author, string Publisher, DateTime Date, string ISBN, string Binding, string Language, string Price, string Amonet, string Introduction, string Content, string Image)
        {
            adminDA admin = new adminDA();
            return admin.Update_book(ID, Name, Author, Publisher, Date, ISBN, Binding, Language, Price, Amonet, Introduction, Content, Image);
        }
        public DataTable adminSel()
        {
            adminDA admin = new adminDA();
            return admin.adminSel();
        }
        public int admin_Del(string id)
        {
            adminDA admin = new adminDA();
            return admin.admin_Del(id);
        }

        //圖片上傳
        public void file_Upload(FileUpload upload)
        {
            //是否允許上傳
            bool allow_Upload = false;//是否允許上傳
            string savePath = HttpContext.Current.Request.MapPath("~/Ad/");//儲存路徑
            string fileName = upload.FileName;
            string fileExtension = Path.GetExtension(upload.FileName).ToLower();

            //可上傳副檔名
            string[] allowExtension = { ".jpeg", ".gif", ".jpg", ".png" };
            if (upload.HasFile)//是否有上傳檔案
            {
                for (int i = 0; i < allowExtension.Length; i++)
                {
                    if (fileExtension == allowExtension[i])
                    {
                        allow_Upload = true;
                    }
                }
                if (allow_Upload)
                {
                    upload.SaveAs(savePath + fileName);
                }
            }
        }

        //GridView匯出Excel檔
        public void outputExcel(GridView gv)
        {
            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw); 
            
            //輸出檔案名稱
            string fileName = "excelfile.xls";
            
            //關閉分頁和排序
            gv.AllowPaging = false;
            gv.AllowSorting = false;
            gv.DataBind();

            HttpContext.Current.Response.ContentType = "application/x-excel";//輸出資料類型
            HttpContext.Current.Response.AddHeader("content-disposition", string.Format("attachment;filename={0}", HttpUtility.UrlEncode(fileName)));
            gv.RenderControl(htw);//將GridView資料寫入 HtmlTextWriter 物件裡
            HttpContext.Current.Response.Write(sw.ToString());
            HttpContext.Current.Response.End();
        }
        //GridView匯出Word檔 
        public void outputWord(GridView gv)
        {
            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);
            //輸出檔案名稱
            string fileName = "wordfile.doc";

            //關閉分頁和排序
            gv.AllowPaging = false;
            gv.AllowSorting = false;
            gv.DataBind();
            
            HttpContext.Current.Response.ContentType = "application/x-word";//輸出資料類型
            HttpContext.Current.Response.AddHeader("content-disposition", string.Format("attachment;filename={0}", HttpUtility.UrlEncode(fileName)));
            gv.RenderControl(htw);
            HttpContext.Current.Response.Write(sw.ToString());
            HttpContext.Current.Response.End();
        }
    }
}
