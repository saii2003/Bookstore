using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Web.Configuration;

namespace DataAccess
{
    public class BookDA:DBbase
    {
        public string order_ID;//訂單編號
        public int bookAmonet;//商品庫存
        public int bookhit;//書籍銷售量
        public string imageUrl;//書籍封面連結

        #region 中文新書上架
        public DataTable chinese_Book(string bookType)
        {
            DataTable dt = new DataTable();
            SqlCommand cmd = getCommand("SELECT TOP 8 * FROM Books WHERE bookType=@bookType ORDER BY bookDate DESC");
            cmd.Parameters.Add("@bookType", SqlDbType.NVarChar, 2).Value = bookType;
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;
        }
        #endregion

        #region 新增訊息
        public DataTable new_Message()
        {
            DataTable dt = new DataTable();
            SqlCommand cmd = getCommand("SELECT TOP 4 * FROM Message ORDER BY messageDate DESC");
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;
        }
        #endregion

        #region index.aspx中文書
        public DataTable foreign_Book(string bookType)
        {
            DataTable dt = new DataTable();
            string cmdText = "SELECT TOP 8 * FROM Books WHERE bookType=@bookType ORDER BY bookDate DESC";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@bookType", SqlDbType.NVarChar, 2).Value = bookType;
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;
        }
        #endregion

        #region 推薦書
        public DataTable everyday_Book()
        {
            DataTable dt = new DataTable();
            string cmdText = "SELECT TOP 1 * FROM Books";
            SqlCommand cmd = getCommand(cmdText);
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;
        }
        #endregion

        #region 銷售量No1
        public DataTable book_top1(string bookType)
        {
            DataTable dt = new DataTable();
            string cmdText = "SELECT TOP 1 * FROM Books WHERE bookType=@bookType  ORDER BY bookHit DESC";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@bookType", SqlDbType.NVarChar, 2).Value = bookType;
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;
        }
        #endregion

        #region 排行榜
        public void book_Hit(string bookType,HyperLink h1,HyperLink h2,HyperLink h3, HyperLink h4, HyperLink h5, HyperLink h6,HyperLink h7,HyperLink h8,HyperLink h9)
        {
            DataTable dt = new DataTable();
            string cmdText = "with BookPage as(SELECT bookID,bookName,Row_Number()Over(ORDER BY bookHit DESC)as 'RowNumber' FROM Books WHERE bookType=@bookType) SELECT * FROM BookPage WHERE  RowNumber Between 2 And 10";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@bookType", SqlDbType.NVarChar, 2).Value = bookType;
            dt.Load(cmd.ExecuteReader());

            h1.NavigateUrl = "~/product.aspx?book_id=" + dt.Rows[0][0].ToString();
            h1.Text = dt.Rows[0][1].ToString();

            h2.NavigateUrl = "~/product.aspx?book_id=" + dt.Rows[1][0].ToString();
            h2.Text = dt.Rows[1][1].ToString();

            h3.NavigateUrl = "~/product.aspx?book_id=" + dt.Rows[2][0].ToString();
            h3.Text = dt.Rows[2][1].ToString();

            h4.NavigateUrl = "~/product.aspx?book_id=" + dt.Rows[3][0].ToString();
            h4.Text = dt.Rows[3][1].ToString();

            h5.NavigateUrl = "~/product.aspx?book_id=" + dt.Rows[4][0].ToString();
            h5.Text = dt.Rows[4][1].ToString();

            h6.NavigateUrl = "~/product.aspx?book_id=" + dt.Rows[5][0].ToString();
            h6.Text = dt.Rows[5][1].ToString();

            h7.NavigateUrl = "~/product.aspx?book_id=" + dt.Rows[6][0].ToString();
            h7.Text = dt.Rows[6][1].ToString();

            h8.NavigateUrl = "~/product.aspx?book_id=" + dt.Rows[7][0].ToString();
            h8.Text = dt.Rows[7][1].ToString();

            h9.NavigateUrl = "~/product.aspx?book_id=" + dt.Rows[8][0].ToString();
            h9.Text = dt.Rows[8][1].ToString();

            cmd.Dispose();
            Dispose();
        }
        #endregion

        #region 公告訊息
        public DataTable messgaeContent(string id)
        {
            DataTable dt = new DataTable();
            string cmdText = "Select * FROM Message where messageID=@messageID";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@messageID", SqlDbType.Int).Value = id;
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;
        }
        #endregion

        #region 書籍內容product.aspx
        public DataTable product(string bookID)
        {
            DataTable dt = new DataTable();
            string cmdText = "SELECT * FROM Books Where bookID=@bookID";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@bookID", SqlDbType.Int).Value = bookID;
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;
        }
        #endregion

        #region 作者所有書籍
        public DataTable authorBook(string bookAuthor)
        {
            DataTable dt = new DataTable();
            string cmdText = "SELECT * FROM Books Where bookAuthor=@bookAuthor";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@bookAuthor", SqlDbType.NVarChar, 50).Value = bookAuthor;
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;
        }
        #endregion

        #region 留言板
        public int message_center(string mID, string bookID, string title, string date, string contents)
        {

            int count = 0;
            string cmdText = "INSERT INTO MessageCenter(mID,bookID,title,date,contents)VALUES(@mID,@bookID,@title,@date,@contents)";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@mID", SqlDbType.Int).Value = mID;
            cmd.Parameters.Add("@bookID", SqlDbType.Int).Value = bookID;
            cmd.Parameters.Add("@title", SqlDbType.NVarChar, 50).Value = title;
            cmd.Parameters.Add("@date", SqlDbType.DateTime).Value = date;
            cmd.Parameters.Add("@contents", SqlDbType.NVarChar, 300).Value = contents;
            count = cmd.ExecuteNonQuery();
            cmd.Dispose();
            Dispose();
            return count;
        }
        #endregion

        #region 顯示留言
        public DataTable product_message(string bookID)
        {
            DataTable dt = new DataTable();
            string cmdText = "SELECT * FROM MessageCenter,member WHERE bookID=@bookID AND MessageCenter.mID=member.mID";
            DataSet ds = new DataSet();
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.AddWithValue("@bookID", bookID);
            dt.Load(cmd.ExecuteReader());
            Dispose();
            return dt;
        }
        #endregion

        #region 書籍名稱查詢
        public DataTable BookNameSearch(string bookName, int Pages)
        {

            DataTable dt = new DataTable();
            string cmdText = "with BookPage as(SELECT *,Row_Number()Over(ORDER BY bookDate)as 'RowNumber' FROM Books WHERE bookName like '%'+@bookName+'%') SELECT * FROM BookPage WHERE  RowNumber Between((@pages-1)*8)+1 And ((@pages-1)*8)+8";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@bookName", SqlDbType.NVarChar, 50).Value = bookName;
            cmd.Parameters.Add("@pages", SqlDbType.Int).Value = Pages;
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;

        }
        #endregion

        #region 查詢書籍名稱數量
        public string BookNameSearchCount(string bookName)
        {

            string count = "";
            string cmdText = "SELECT COUNT(*) FROM Books WHERE bookName like '%'+@bookName+'%'";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@bookName", SqlDbType.NVarChar, 50).Value = bookName;
            count = cmd.ExecuteScalar().ToString();
            cmd.Dispose();
            Dispose();
            return count;

        }
        #endregion

        #region 作者書籍查詢
        public DataTable BookAuthorSearch(string bookAuthor, int Pages)
        {

            DataTable dt = new DataTable();
            string cmdText = "with BookPage as(SELECT *,Row_Number()Over(ORDER BY bookDate)as 'RowNumber' FROM Books WHERE bookAuthor like '%'+@bookAuthor+'%') SELECT * FROM BookPage WHERE  RowNumber Between((@pages-1)*8)+1 And ((@pages-1)*8)+8";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@bookAuthor", SqlDbType.NVarChar, 50).Value = bookAuthor;
            cmd.Parameters.Add("@pages", SqlDbType.Int).Value = Pages;
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;

        }
        #endregion

        #region 作者書籍查詢數量
        public string BookAuthorSearchCount(string bookAuthor)
        {
            string count = "";
            string cmdText = "SELECT COUNT(*) FROM Books WHERE bookAuthor like '%'+@bookAuthor+'%'";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@bookAuthor", SqlDbType.NVarChar, 50).Value = bookAuthor;
            count = cmd.ExecuteScalar().ToString();
            cmd.Dispose();
            Dispose();
            return count;

        }
        #endregion

        #region 書籍出版社查詢
        public DataTable BookPublisherSearch(string bookPublisher, int Pages)
        {
            DataTable dt = new DataTable();
            string cmdText = "with BookPage as(SELECT *,Row_Number()Over(ORDER BY bookDate)as 'RowNumber' FROM Books WHERE bookPublisher like '%'+@bookPublisher+'%') SELECT * FROM BookPage WHERE  RowNumber Between((@Pages -1)*8)+1 And ((@Pages -1)*8)+8";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@bookPublisher", SqlDbType.NVarChar, 50).Value = bookPublisher;
            cmd.Parameters.Add("@Pages", SqlDbType.Int).Value = Pages;
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;

        }
        #endregion

        #region 書籍出版社查詢數量
        public string BookPublisherSearchCount(string bookPublisher)
        {

            string count = "";
            string cmdText = "SELECT COUNT(*) FROM Books WHERE bookPublisher like '%'+@bookPublisher+'%'";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@bookPublisher", SqlDbType.NVarChar, 50).Value = bookPublisher;
            count = cmd.ExecuteScalar().ToString();
            cmd.Dispose();
            Dispose();
            return count;

        }
        #endregion

        #region 書籍ISBN查詢
        public DataTable BookISBNSearch(string bookISBN, int Pages)
        {
            DataTable dt = new DataTable();
            string cmdText = "with BookPage as(SELECT *,Row_Number()Over(ORDER BY bookDate)as 'RowNumber' FROM Books WHERE bookISBN like '%'+@bookISBN+'%') SELECT * FROM BookPage WHERE  RowNumber Between((@Pages -1)*8)+1 And ((@Pages + -1)*8)+8";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@bookISBN", SqlDbType.NVarChar, 50).Value = bookISBN;
            cmd.Parameters.Add("@Pages", SqlDbType.Int).Value = Pages;
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;

        }
        #endregion

        #region 書籍ISBN數量
        public string BookISBNSearchCount(string bookISBN)
        {

            string count = "";
            string cmdText = "SELECT COUNT(*) FROM Books WHERE bookISBN like '%'+@bookISBN+'%'";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@bookISBN", SqlDbType.NVarChar, 50).Value = bookISBN;
            count = cmd.ExecuteScalar().ToString();
            cmd.Dispose();
            Dispose();
            return count;

        }
        #endregion

        #region 書籍清單
        public DataTable bookList(string bookType, string bookClass1, string bookClass2, int Pages)
        {
            DataTable dt = new DataTable();
            string cmdText = "with booklist as(SELECT *,Row_Number()Over(ORDER BY bookDate)as 'RowNumber' FROM Books WHERE bookType=@bookType AND bookClass1=@bookClass1 AND bookClass2=@bookClass2) SELECT * FROM booklist WHERE  RowNumber Between((@Pages-1)*12)+1 And ((@Pages -1)*12)+12";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@bookType", SqlDbType.NVarChar, 10).Value = bookType;
            cmd.Parameters.Add("@bookClass1", SqlDbType.NVarChar, 10).Value = bookClass1;
            cmd.Parameters.Add("@bookClass2", SqlDbType.NVarChar, 10).Value = bookClass2;
            cmd.Parameters.Add("@Pages", SqlDbType.Int).Value = Pages;
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;
        }
        #endregion

        #region 書籍清單數量
        public string bookListCount(string bookType, string bookClass1, string bookClass2)
        {

            string count = "";
            string cmdText = "SELECT COUNT(*) FROM Books WHERE bookType=@bookType AND bookClass1=@bookClass1 AND bookClass2=@bookClass2";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@bookType", SqlDbType.Int).Value = bookType;
            cmd.Parameters.Add("@bookClass1", SqlDbType.Int).Value = bookClass1;
            cmd.Parameters.Add("@bookClass2", SqlDbType.Int).Value = bookClass2;
            count = cmd.ExecuteScalar().ToString();
            cmd.Dispose();
            Dispose();
            return count;
        }
        #endregion

        #region 新增訂單
        public int orders_Add(string orderID, int mID, string payment, string orderDate, int totalPrice, int productAmount)
        {

            int count = 0;
            string cmdText = "INSERT INTO Orders(orderID,mID,payment,orderDate,totalPrice,productAmount,pay,ship)VALUES(@orderID,@mID,@payment,@orderDate,@totalPrice,@productAmount,@pay,@ship)";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@orderID", SqlDbType.NVarChar, 50).Value = orderID;
            cmd.Parameters.Add("@mID", SqlDbType.Int).Value = mID;
            cmd.Parameters.Add("@payment", SqlDbType.NVarChar, 50).Value = payment;
            cmd.Parameters.Add("@orderDate", SqlDbType.DateTime).Value = orderDate;
            cmd.Parameters.Add("@totalPrice", SqlDbType.Int).Value = totalPrice;
            cmd.Parameters.Add("@productAmount", SqlDbType.Int).Value = productAmount;
            cmd.Parameters.Add("@pay", SqlDbType.Bit).Value = false;
            cmd.Parameters.Add("@ship", SqlDbType.Bit).Value = false;
            count = cmd.ExecuteNonQuery();
            cmd.Dispose();
            Dispose();
            return count;
        }
        #endregion

        #region 訂單編號
        public void orderID(string Date)
        {

            SqlDataReader dr;
            string cmdText = "SELECT MAX(orderID) as O_ID FROM Orders WHERE (LEFT(orderID,6)=@Date)";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@Date", SqlDbType.NVarChar, 50).Value = Date;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                this.order_ID = dr["O_ID"].ToString();
            }
            dr.Dispose();
            dr.Close();
            Dispose();


        }
        #endregion

        #region 新增訂單明細
        public int orderDetailes_Add(string orderID, string bookID, int amount, int unitPrice)
        {

            int count = 0;
            string cmdText = "INSERT INTO OrderDetailes(orderID,bookID,amount,unitPrice)VALUES(@orderID,@bookID,@amount,@unitPrice)";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@orderID", SqlDbType.NVarChar, 50).Value = orderID;
            cmd.Parameters.Add("@bookID", SqlDbType.Int).Value = bookID;
            cmd.Parameters.Add("@amount", SqlDbType.Int).Value = amount;
            cmd.Parameters.Add("@unitPrice", SqlDbType.Int).Value = unitPrice;
            count = cmd.ExecuteNonQuery();
            cmd.Parameters.Clear();
            cmd.Dispose();
            Dispose();
            return count;
        }
        #endregion

        #region 更新書籍庫存和銷售量
        public int hit_amonet(string bookID, int bookAmonet, int bookhit)
        {

            int count = 0;
            string cmdText = "UPDATE Books SET bookAmonet=@bookAmonet,bookhit=@bookhit WHERE bookID=@bookID";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@bookID", SqlDbType.Int).Value = bookID;
            cmd.Parameters.Add("@bookAmonet", SqlDbType.Int).Value = bookAmonet;
            cmd.Parameters.Add("@bookhit", SqlDbType.Int).Value = bookhit;
            count = cmd.ExecuteNonQuery();
            cmd.Dispose();
            Dispose();
            return count;
        }
        #endregion

        #region 取得商品庫存
        public void sel_hit_amonet(string bookID)
        {


            SqlDataReader dr;
            string cmdText = "SELECT * FROM Books WHERE bookID=@bookID";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@bookID", SqlDbType.Int).Value = bookID;
            dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    this.bookAmonet = Convert.ToInt32(dr["bookAmonet"].ToString());
                    this.bookhit = Convert.ToInt32(dr["bookhit"].ToString());
                }
            }
            dr.Dispose();
            Dispose();

        }
        #endregion
        
        #region autoComplet
        public DataTable autoComplete()
        {
            DataTable dt = new DataTable();
            SqlCommand cmd = getCommand("Select bookISBN From Books");

            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;

        }
        #endregion
    }
}
