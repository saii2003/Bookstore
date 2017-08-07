using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;


namespace DataAccess
{
    public class MemberDA:DBbase
    {
        private string _mID;
        private string _username;
        private string _password;
        private string _name;
        private string _sex;
        private string _birthday;
        private string _phone;
        private string _cellphone;
        private string _address;
        private string _email;
        private string _level;

        public string mID
        {
            get { return _mID; }
            set { _mID = value; }
        }
        public string username
        {
            get { return _username; }
            set { _username = value; }
        }
        public string password
        {
            get { return _password; }
            set { _password = value; }
        }
        public string name
        {
            get { return _name; }
            set { _name = value; }
        }
        public string sex
        {
            get { return _sex; }
            set { _sex = value; }
        }
        public string birthday
        {
            get { return _birthday; }
            set { _birthday = value; }
        }
        public string phone
        {
            get { return _phone; }
            set { _phone = value; }
        }
        public string cellphone
        {
            get { return _cellphone; }
            set { _cellphone = value; }
        }
        public string address
        {
            get { return _address; }
            set { _address = value; }
        }
        public string email
        {
            get { return _email; }
            set { _email = value; }
        }
        public string level
        {
            get { return _level; }
            set { _level = value; }
        }

        #region FormAuthentication 登入
        public bool FormAuth_Login(string username, string password)
        {
            bool allow = false;
            string cmdText = "SELECT * FROM member WHERE username=@username AND password=@password";
            SqlDataReader dr;
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@username", SqlDbType.NVarChar, 50).Value = username;
            cmd.Parameters.Add("@password", SqlDbType.NVarChar, 50).Value = password;
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                allow = true;
                while (dr.Read())
                {
                    this.mID = dr["mID"].ToString();
                    this.username = dr["username"].ToString();
                    this.password = dr["password"].ToString();
                    this.name = dr["name"].ToString();
                    this.sex = dr["sex"].ToString();
                    this.birthday = string.Format(dr["birthday"].ToString(), "yyyy/MM/dd");
                    this.phone = dr["phone"].ToString();
                    this.cellphone = dr["cellphone"].ToString();
                    this.address = dr["address"].ToString();
                    this.email = dr["email"].ToString();
                    this.level = dr["level"].ToString();
                }
            }
            dr.Close();
            Dispose();
            cmd.Dispose();
            return allow;
        }
        #endregion

        #region session會員登入
        public int mem_Login(string username, string password)
        {
            int login = 0;

            string cmdText = "SELECT * FROM member WHERE username=@username AND password=@password";
            SqlDataReader dr;
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@username", SqlDbType.NVarChar, 50).Value = username;
            cmd.Parameters.Add("@password", SqlDbType.NVarChar, 50).Value = password;
            dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            if (dr.HasRows)
            {
                login = 1;
                while (dr.Read())
                {
                    this.mID = dr["mID"].ToString();
                    this.username = dr["username"].ToString();
                    this.password = dr["password"].ToString();
                    this.name = dr["name"].ToString();
                    this.sex = dr["sex"].ToString();
                    this.birthday = dr["birthday"].ToString();
                    this.phone = dr["phone"].ToString();
                    this.cellphone = dr["cellphone"].ToString();
                    this.address = dr["address"].ToString();
                    this.email = dr["email"].ToString();
                    this.level = dr["level"].ToString();
                }
            }
            dr.Close();
            Dispose();;
            return login;

        }
#endregion
    
        #region 加入會員
        public int mem_new(string username, string password, string name, string sex, DateTime birthday, string phone, string cellphone, string address, string email)
        {

            int count = 0;
            string cmdText = "INSERT INTO member(username,password,name,sex,birthday,phone,cellphone,address,email,level,cash)VALUES(@username,@password,@name,@sex,@birthday,@phone,@cellphone,@address,@email,@level,@cash)";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@username", SqlDbType.NVarChar, 50).Value = username;
            cmd.Parameters.Add("@password", SqlDbType.NVarChar, 50).Value = password;
            cmd.Parameters.Add("@name", SqlDbType.NVarChar, 50).Value = name;
            cmd.Parameters.Add("@sex", SqlDbType.NVarChar, 5).Value = sex;
            cmd.Parameters.Add("@birthday", SqlDbType.DateTime).Value = birthday;
            cmd.Parameters.Add("@phone", SqlDbType.NVarChar, 50).Value = phone;
            cmd.Parameters.Add("@cellphone", SqlDbType.NVarChar, 50).Value = cellphone;
            cmd.Parameters.Add("@address", SqlDbType.NVarChar, 50).Value = address;
            cmd.Parameters.Add("@email", SqlDbType.NVarChar, 50).Value = email;
            cmd.Parameters.Add("@level", SqlDbType.Int).Value = 1;
            cmd.Parameters.Add("@cash", SqlDbType.Int).Value = 0;
            count = cmd.ExecuteNonQuery();
            cmd.Dispose();
            Dispose();
            return count;

        }
        #endregion

        #region 帳號比對
        public int check_username(string username)
        {

            int count = 0;
            SqlDataReader dr;
            string cmdText = "SELECT count(*) FROM member WHERE username=@username";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@username", SqlDbType.NVarChar, 50).Value = username;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                count = Convert.ToInt32(dr[0]);
            }
            dr.Dispose();
            dr.Close();
            cmd.Dispose();
            Dispose();
            return count;
        }
        #endregion

        #region 驗證信啟動帳號
        public int mem_verify(string password)
        {

            int count = 0;
            string cmdText = "UPDATE member SET [level]=@level WHERE password=@password";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@level", SqlDbType.Int).Value = 1;
            cmd.Parameters.Add("@password", SqlDbType.NVarChar, 50).Value = password;
            count = cmd.ExecuteNonQuery();
            cmd.Dispose();
            Dispose();
            return count;
        }
        #endregion

        #region 修改會員資料
        public int mem_update(string id, string name, string sex, string phone, string cellphone, string address, string email)
        {

            int count = 0;
            string cmdText = "UPDATE member SET name=@name,sex=@sex,phone=@phone,cellphone=@cellphone,address=@address,email=@email Where mID=@mID";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@mID", SqlDbType.Int).Value = id;
            cmd.Parameters.Add("@name", SqlDbType.NVarChar, 50).Value = name;
            cmd.Parameters.Add("@sex", SqlDbType.NVarChar, 5).Value = sex;
            cmd.Parameters.Add("@phone", SqlDbType.NVarChar, 50).Value = phone;
            cmd.Parameters.Add("@cellphone", SqlDbType.NVarChar, 50).Value = cellphone;
            cmd.Parameters.Add("@address", SqlDbType.NVarChar, 50).Value = address;
            cmd.Parameters.Add("@email", SqlDbType.NVarChar, 50).Value = email;
            count = cmd.ExecuteNonQuery();
            cmd.Dispose();
            Dispose();
            return count;
        }
        #endregion

        #region 忘記密碼取得新密碼
        public int forget_pw(string password, string username, string birthday, string email)
        {
            int count = 0;
            string cmdText = "UPDATE member SET password=@password WHERE username=@username AND birthday=@birthday AND email=@email";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@password", SqlDbType.NVarChar, 50).Value = password;
            cmd.Parameters.Add("@username", SqlDbType.NVarChar, 50).Value = username;
            cmd.Parameters.Add("@birthday", SqlDbType.DateTime).Value = birthday;
            cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = email;
            count = cmd.ExecuteNonQuery();
            cmd.Dispose();
            Dispose();
            return count;
        }
        #endregion
       
        #region 修改密碼
        public int modify_pw(string username, string password, string newpassword)
        {
            int count = 0;
            string cmdText = "UPDATE member SET password=@newpassword WHERE username=@username AND password=@password";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@username", SqlDbType.NVarChar, 50).Value = username;
            cmd.Parameters.Add("@password", SqlDbType.NVarChar, 50).Value = password;
            cmd.Parameters.Add("@newpassword", SqlDbType.NVarChar, 50).Value = newpassword;
            count = cmd.ExecuteNonQuery();
            cmd.Dispose();
            Dispose();
            return count;
        }
        #endregion

        #region 訂單查詢
        public DataTable order_select(string mID)
        {
            DataTable dt = new DataTable();
            SqlCommand cmd = getCommand("SELECT * FROM Orders WHERE mID=@mID");
            cmd.Parameters.AddWithValue("@mID", mID);
            dt.Load(cmd.ExecuteReader());
            cmd.Dispose();
            Dispose();
            return dt;
        }
        #endregion

        #region 刪除訂單
        public int order_Del(string orderID)
        {
            int count = 0;
            string cmdText = "DELETE FROM orders WHERE orderID=@orderID";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@orderID", SqlDbType.NVarChar, 50).Value = orderID;
            count = cmd.ExecuteNonQuery();
            cmd.Dispose();
            Dispose();
            return count;
        }
        #endregion


        #region PayaPal已付款
        public void payment_status(string oid)
        {
            int count = 0;
            string cmdText = "UPDATE Orders SET pay=@pay WHERE orderID=@orderID";
            SqlCommand cmd = getCommand(cmdText);
            cmd.Parameters.Add("@pay", SqlDbType.Bit).Value = true;
            cmd.Parameters.Add("@orderID", SqlDbType.NVarChar, 50).Value = oid;
            count = cmd.ExecuteNonQuery();
            cmd.Dispose();
            Dispose();
        }
        #endregion
    }
}
