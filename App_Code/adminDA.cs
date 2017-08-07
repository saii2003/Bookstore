using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Web;


namespace DataAccess
{
    public class adminDA:DBbase
    {

        //新增書籍
        public int add_Book(string bookName, string bookType, string bookClass1, string bookClass2, string bookAuthor, string bookPublisher, DateTime bookDate, string bookISBN, string bookBinding, string bookLanguage, string bookPrice, string bookAmonet, string bookIntroduction, string bookContent, string bookImage)
        {

            int count = 0;
            string cmdText = "INSERT INTO Books(bookName,bookType,bookClass1,bookClass2,bookAuthor,bookPublisher,bookDate,bookISBN,bookBinding,bookLanguage,bookPrice,bookAmonet,bookIntroduction,bookContent,bookImage,bookhit)VALUES(@bookName,@bookType,@bookClass1,@bookClass2,@bookAuthor,@bookPublisher,@bookDate,@bookISBN,@bookBinding,@bookLanguage,@bookPrice,@bookAmonet,@bookIntroduction,@bookContent,@bookImage,@bookhit)";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@bookName", SqlDbType.NVarChar, 50).Value = bookName;
            cmd.Parameters.Add("@bookType", SqlDbType.NVarChar, 10).Value = bookType;
            cmd.Parameters.Add("@bookClass1", SqlDbType.NVarChar, 10).Value = bookClass1;
            cmd.Parameters.Add("@bookClass2", SqlDbType.NVarChar, 10).Value = bookClass2;
            cmd.Parameters.Add("@bookAuthor", SqlDbType.NVarChar, 50).Value = bookAuthor;
            cmd.Parameters.Add("@bookPublisher", SqlDbType.NVarChar, 50).Value = bookPublisher;
            cmd.Parameters.Add("@bookDate", SqlDbType.DateTime).Value = bookDate;
            cmd.Parameters.Add("@bookISBN", SqlDbType.NVarChar, 50).Value = bookISBN;
            cmd.Parameters.Add("@bookBinding", SqlDbType.NVarChar, 50).Value = bookBinding;
            cmd.Parameters.Add("@bookLanguage", SqlDbType.NVarChar, 50).Value = bookLanguage;
            cmd.Parameters.Add("@bookPrice", SqlDbType.Int).Value = bookPrice;
            cmd.Parameters.Add("@bookAmonet", SqlDbType.Int).Value = bookAmonet;
            cmd.Parameters.Add("@bookIntroduction", SqlDbType.NVarChar).Value = bookIntroduction;
            cmd.Parameters.Add("@bookContent", SqlDbType.NVarChar).Value = bookContent;
            cmd.Parameters.Add("@bookImage", SqlDbType.NVarChar).Value = bookImage;
            cmd.Parameters.Add("@bookhit", SqlDbType.Int).Value = 0;
            count = cmd.ExecuteNonQuery();
            cmd.Dispose();
            Dispose();
            return count;
        }
        public DataTable bookAll()
        {
            string cmdText = "SELECT * FROM Books";
            DataTable dt = new DataTable();
            SqlCommand cmd = getCommand(cmdText);
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;
        }
        //搜尋書籍名稱
        public DataTable bookNameSel(string bookName)
        {
            
            string cmdText = "SELECT * FROM Books WHERE bookName LIKE '%'+@bookName+'%'";
            DataTable dt = new DataTable();
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.AddWithValue("@bookName", bookName);
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;
            
        }
        //搜尋書籍數量
        public DataTable bookAmountSel(int amount)
        {

            string cmdText = "SELECT * FROM Books WHERE bookAmonet <= @bookAmonet";
            DataTable dt = new DataTable();
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.AddWithValue("@bookAmonet",amount);
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;
        }
        //搜尋書籍ISBN碼
        public DataTable bookISBNSel(string ISBN)
        {

            string cmdText = "SELECT * FROM Books WHERE bookISBN = @ISBN";
            DataTable dt = new DataTable();
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.AddWithValue("@ISBN", ISBN);
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;
        }
        //書籍詳細明細
        public DataTable bookDetaile(string bookID)
        {
            DataTable dt = new DataTable();
            string cmdText = "SELECT * FROM Books WHERE bookID=@bookID";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@bookID", SqlDbType.Int).Value = bookID;
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;
        }
        //更改書籍資料
        public int Update_book(string ID, string Name, string Author, string Publisher, DateTime Date, string ISBN, string Binding, string Language, string Price, string Amonet, string Introduction, string Content, string Image)
        {

            int count = 0;
            string cmdText = "UPDATE Books SET bookName=@bookName,bookAuthor=@bookAuthor,bookPublisher=@bookPublisher,bookDate=@bookDate,bookISBN=@bookISBN,bookBinding=@bookBinding,bookLanguage=@bookLanguage,bookPrice=@bookPrice,bookAmonet=@bookAmonet,bookIntroduction=@bookIntroduction,bookContent=@bookContent,bookImage=@bookImage WHERE bookID=@bookID";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@bookID", SqlDbType.Int).Value = ID;
            cmd.Parameters.Add("@bookName", SqlDbType.NVarChar, 50).Value = Name;
            cmd.Parameters.Add("@bookAuthor", SqlDbType.NVarChar, 50).Value = Author;
            cmd.Parameters.Add("@bookPublisher", SqlDbType.NVarChar, 50).Value = Publisher;
            cmd.Parameters.Add("@bookDate", SqlDbType.DateTime).Value = Date;
            cmd.Parameters.Add("@bookISBN", SqlDbType.NVarChar, 50).Value = ISBN;
            cmd.Parameters.Add("@bookBinding", SqlDbType.NVarChar, 50).Value = Binding;
            cmd.Parameters.Add("@bookLanguage", SqlDbType.NVarChar, 50).Value = Language;
            cmd.Parameters.Add("@bookPrice", SqlDbType.Int).Value = Price;
            cmd.Parameters.Add("@bookAmonet", SqlDbType.Int).Value = Amonet;
            cmd.Parameters.Add("@bookIntroduction", SqlDbType.NVarChar).Value = Introduction;
            cmd.Parameters.Add("@bookContent", SqlDbType.NVarChar).Value = Content;
            cmd.Parameters.Add("@bookImage", SqlDbType.NVarChar).Value = Image;
            count = cmd.ExecuteNonQuery();
            cmd.Dispose();
            Dispose();
            return count;

        }
        //顯示所有會員
        public DataTable memSel()
        {

            string cmdText = "SELECT * FROM member";
            DataTable dt = new DataTable();
            SqlCommand cmd = getCommand(cmdText);
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;
        }
        //會員詳細資料
        public DataTable memDetaile(string mID)
        {

            string cmdText = "SELECT * FROM member WHERE mID=@mID";
            DataTable dt = new DataTable();
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.AddWithValue("@mID", mID);
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;
        }
        //搜尋會員帳號
        public DataTable memSelUsername(string username)
        {

            string cmdText = "SELECT * FROM member WHERE username LIKE '%'+@username+'%'";
            DataTable dt = new DataTable();
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.AddWithValue("@username", username);
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;
        }
        //搜尋會員名字
        public DataTable memSelName(string name)
        {

            string cmdText = "SELECT * FROM member WHERE name LIKE '%'+@name+'%'";
            DataTable dt = new DataTable();
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.AddWithValue("@name", name);
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;
        }
        //顯示所有訂單
        public DataTable orderSel()
        {

            string cmdText = "SELECT * FROM Orders";
            DataTable dt = new DataTable();
            SqlCommand cmd = getCommand(cmdText);
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;
        }
        //訂單明細
        public DataTable orderDetaile(string orderID)
        {

            DataTable dt = new DataTable();
            string cmdText = "SELECT * FROM OrderDetailes,Books WHERE OrderDetailes.bookID=Books.bookID AND orderID=@orderID";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@orderID", SqlDbType.NVarChar, 50).Value = orderID;
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;
        }
        //修改訂單
        public int UpdateOrder(string orderID, bool pay, bool ship)
        {
            int count = 0;
            string cmdText = "UPDATE Orders SET pay=@pay,ship=@ship WHERE orderID=@orderID";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@pay", SqlDbType.Bit).Value = pay;
            cmd.Parameters.Add("@ship", SqlDbType.Bit).Value = ship;
            cmd.Parameters.Add("@orderID", SqlDbType.NVarChar, 50).Value = orderID;
            count = cmd.ExecuteNonQuery();
            cmd.Dispose();
            Dispose();
            return count;
        }
        //以會員ID搜尋資料
        public DataTable memDate(string mID)
        {

            string cmdText = "SELECT * FROM member WHERE mID=@mID";
            DataTable dt = new DataTable();
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.AddWithValue("@mID", mID);
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;
        }
        //搜尋是否已款
        public DataTable orderpay(bool pay)
        {

            string cmdText = "SELECT * FROM Orders WHERE pay=@pay";
            DataTable dt = new DataTable();
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.AddWithValue("@pay", pay);
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;
        }
        //訂單是否出貨
        public DataTable ordership(bool ship)
        {
            string cmdText = "SELECT * FROM Orders WHERE ship=@ship";
            DataTable dt = new DataTable();
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.AddWithValue("@ship", ship);
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;
        }
        //新增公告訊息
        public int messageInsert(string type, string title, string messager, string content)
        {

            int count = 0;
            string cmdText = "INSERT INTO Message(messageType,messageTitle,messager,messageDate,messageContent)VALUES(@messageType,@messageTitle,@messager,@messageDate,@messageContent)";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@messageType", SqlDbType.NVarChar, 50).Value = type;
            cmd.Parameters.Add("@messageTitle", SqlDbType.NVarChar, 50).Value = title;
            cmd.Parameters.Add("@messager", SqlDbType.NVarChar, 50).Value = messager;
            cmd.Parameters.Add("@messageDate", SqlDbType.DateTime).Value = DateTime.Now;
            cmd.Parameters.Add("@messageContent", SqlDbType.NVarChar, 50).Value = content;
            count = cmd.ExecuteNonQuery();
            cmd.Dispose();
            Dispose();
            return count;
        }
        //搜尋公告訊息
        public DataTable messageSel()
        {

            string cmdText = "SELECT * FROM Message";
            DataTable dt = new DataTable();
            SqlCommand cmd = getCommand(cmdText);
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;
        }
        //刪除公告訊息
        public DataTable Del(string id)
        {

            string cmdText = "DELETE FROM Message WHERE messageID=@messageID";
            DataTable dt = new DataTable();
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.AddWithValue("@messageID", id);
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;

        }
        //以時間搜尋公告訊息
        public DataTable messageSel(DateTime time1, DateTime time2)
        {

            string cmdText = "SELECT * FROM Message WHERE messageDate BETWEEN @time1 AND @time2";
            DataTable dt = new DataTable();
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.AddWithValue("@time1", time1);
            cmd.Parameters.AddWithValue("@time2", time2);
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;

        }
        //是否付款
        public int shipCount()
        {

            string cmdText = "SELECT COUNT(*) FROM Orders WHERE pay=@pay";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@pay", SqlDbType.Bit).Value = false;
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            cmd.Dispose();
            Dispose();
            return count;
        }
        //書籍數量
        public DataTable bookAmounts()
        {
            DataTable dt = new DataTable();
            string cmdText = "SELECT * FROM Books WHERE bookAmonet=@bookAmonet";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@bookAmonet", SqlDbType.Int).Value = 0;
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;
        }
        //書籍總數
        public int bookAmountsCount()
        {
            SqlCommand cmd = getCommand("SELECT Count(*) FROM Books WHERE bookAmonet=@bookAmonet");
            cmd.Parameters.AddWithValue("@bookAmonet", 0);
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            cmd.Dispose();
            Dispose();
            return count;
        }
        //會員總數
        public int memCount()
        {

            string cmdText = "SELECT COUNT(*) FROM member";
            SqlCommand cmd = getCommand(cmdText);
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            cmd.Dispose();
            Dispose();
            return count;
        }
        //新增管理者帳號
        public int admin_add(string account, string password, string name, int level)
        {

            int count = 0;
            string cmdText = "INSERT INTO admin(account,password,name,level)VALUES(@account,@password,@name,@level)";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@account", SqlDbType.NVarChar, 50).Value = account;
            cmd.Parameters.Add("@password", SqlDbType.NVarChar, 50).Value = password;
            cmd.Parameters.Add("@name", SqlDbType.NVarChar, 50).Value = name;
            cmd.Parameters.Add("@level", SqlDbType.Int).Value = level;
            count = cmd.ExecuteNonQuery();
            cmd.Dispose();
            Dispose();
            return count;

        }
        //管理者登入
        public int admin_login(string account, string password)
        {

            int level = 0;
            SqlDataReader dr;
            string cmdText = "SELECT * FROM admin WHERE account=@account AND password=@password";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@account", SqlDbType.NVarChar, 50).Value = account;
            cmd.Parameters.Add("@password", SqlDbType.NVarChar, 50).Value = password;
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    level = Convert.ToInt32(dr["level"].ToString());
                }
            }
            dr.Dispose();
            cmd.Dispose();
            Dispose();
            return level;

        }
        //刪除書籍
        public int bookDel(string bookID)
        {
            int count = 0;
            string cmdText = "DELETE FROM Books WHERE bookID=@bookID";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@bookID", SqlDbType.Int).Value = bookID;
            count = cmd.ExecuteNonQuery();
            cmd.Dispose();
            Dispose();
            return count;

        }
        //管理者帳戶搜尋
        public DataTable adminSel()
        {

            string cmdText = "SELECT * FROM admin";
            DataTable dt = new DataTable();
            SqlCommand cmd = getCommand(cmdText);
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;

        }
        //刪除管理者帳號
        public int admin_Del(string id)
        {
            int count = 0;
            string cmdText = "DELECT FROM admin WHERE id=@id";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
            count = cmd.ExecuteNonQuery();
            cmd.Dispose();
            Dispose();
            return count;
        }
    }
}
