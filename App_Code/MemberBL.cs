using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Net;
using System.Net.Mail;
using System.Web.UI.WebControls;
using DataAccess;
using System.Web.Security;
using System.Web;

namespace BussinessLogic
{
    public class MemberBL
    {
       


        #region FormsAuthentication 登入
        public bool FormAuth_Login(string username, string password, int expireTime, Label error)
        {
            bool allow = false;
            MemberDA da = new MemberDA();

            if (da.FormAuth_Login(username, password))
            {
                if (da.level == "1")
                {
                    FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1,
                        da.username,//註冊會員帳號
                        DateTime.Now,//起始時間
                        DateTime.Now.AddMinutes(expireTime),//到期時間
                        false,
                        "Login",
                        FormsAuthentication.FormsCookiePath);//cookie路徑
                    //加密
                    string encTicket = FormsAuthentication.Encrypt(ticket);
                    HttpContext.Current.Response.Cookies.Add(new HttpCookie(FormsAuthentication.FormsCookieName, encTicket));

                    HttpCookie cookie = new HttpCookie(da.username);

                    cookie.Values["mID"] = HttpContext.Current.Server.UrlEncode(da.mID);
                    cookie.Values["username"] = HttpContext.Current.Server.UrlEncode(da.username);
                    cookie.Values["name"] = HttpContext.Current.Server.UrlEncode(da.name);
                    cookie.Values["sex"] = HttpContext.Current.Server.UrlEncode(da.sex);
                    cookie.Values["birthday"] = HttpContext.Current.Server.UrlEncode(Convert.ToDateTime(da.birthday).ToShortDateString());
                    cookie.Values["phone"] = HttpContext.Current.Server.UrlEncode(da.phone);
                    cookie.Values["cellphone"] = HttpContext.Current.Server.UrlEncode(da.cellphone);
                    cookie.Values["address"] = HttpContext.Current.Server.UrlEncode(da.address);
                    cookie.Values["email"] = HttpContext.Current.Server.UrlEncode(da.email);
                    cookie.Expires = DateTime.Now.AddMinutes(expireTime);
                    HttpContext.Current.Response.Cookies.Add(cookie);

                    allow = true;


                }
                else
                {
                    error.Text = "會員驗證未通過";
                    allow = false;//會員驗證未通過
                }

            }
            else
            {
                error.Text = "帳號密碼有誤";
                allow = false;//帳號密碼有誤
            }
            return allow;

        }
        #endregion

        #region 加入會員
        public int mem_new(string username, string password, string name, string sex, DateTime birthday, string phone, string cellphone, string address, string email)
        {
            int count = 0;
            MemberDA memDA = new MemberDA();
            count = memDA.mem_new(username, password, name, sex, birthday, phone, cellphone, address, email);
            return count;
        }
        #endregion

        #region 帳號是否重複
        public int check_username(string username)
        {
            int count = 0;
            MemberDA memDA = new MemberDA();
            count = memDA.check_username(username);
            return count;
        }
        #endregion

        #region 認證信帳號啟動
        public int mem_verify(string password)
        {
            int count = 0;
            MemberDA memDA = new MemberDA();
            count = memDA.mem_verify(password);
            return count;
        }
        #endregion

        #region 忘記密碼取得新密碼
        public int forget_pw(string password, string username, string birthday, string email)
        {
            int count = 0;
            MemberDA memDA = new MemberDA();
            count = memDA.forget_pw(password, username, birthday, email);
            return count;
        }
        #endregion

        #region 修改密碼
        public int modify_pw(string username, string password, string newpassword)
        {
            int count = 0;
            MemberDA memDA = new MemberDA();
            count = memDA.modify_pw(username, password, newpassword);
            return count;
        }
        #endregion

        #region 修改會員資料
        public int mem_update(string id, string name, string sex, string phone, string cellphone, string address, string email)
        {
            int count = 0;
            MemberDA memDA = new MemberDA();
            count = memDA.mem_update(id, name, sex, phone, cellphone, address, email);
            return count;
        }
        #endregion

        #region 會員訂單
        public DataTable order_select(string mID)
        {
            MemberDA memDA = new MemberDA();
            return memDA.order_select(mID);
        }
        #endregion

        #region 新密碼
        public string new_pw()
        {
            Random rd = new Random();
            string str = "";
            for (int i = 1; i <= 15; i++)
            {
                switch (rd.Next(0, 3))
                {
                    case 0:
                        str += rd.Next(1, 10);
                        break;
                    case 1:
                        str += (char)rd.Next(65, 91);//ASCII65~91 A~Z 
                        break;
                    case 2:
                        str += (char)rd.Next(97, 112);//ASCII97~122 a~z
                        break;
                }
            }
            return str;
        }
        #endregion

        #region 寄信
        public void send_mail(string email, string content)
        {
            MailMessage message = new MailMessage("saii.com@msa.hinet.net", email, "網路書店", content);
            message.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient("msa.hinet.net", 25);
            smtp.Credentials = new NetworkCredential("saii.com@msa.hinet.net", "h'4namaaeljo3xjp6");
            smtp.Send(message);
        }
        #endregion

        #region 刪除訂單
        public int order_Del(string orderID)
        {
            int count = 0;
            MemberDA memDA = new MemberDA();
            count = memDA.order_Del(orderID);
            return count;
        }
        #endregion

        #region 年月日
        public void dropdownlist_date(DropDownList year, DropDownList month, DropDownList day)
        {
            year.Items.Add(new ListItem("-------", "-------",false));
            month.Items.Add(new ListItem("-------", "-------",false));
            day.Items.Add(new ListItem("-------", "-------",false));

            for (int y = 1910; y <= Convert.ToInt32(DateTime.Now.Year.ToString()); y++)
            {
                year.Items.Add(new ListItem(y.ToString(), y.ToString(),true));

            }
            for (int m = 1; m <= 12; m++)
            {
                month.Items.Add(new ListItem(m.ToString("00"), m.ToString("00"),true));

            }
            for (int d = 1; d <= 31; d++)
            {
                day.Items.Add(new ListItem(d.ToString("00"), d.ToString("00"),true));

            }
            
        }
        #endregion
    }
}
