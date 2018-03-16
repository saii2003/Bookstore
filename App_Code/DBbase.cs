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
	/// <summary>
	/// 資料庫基本連線設定
	/// </summary>
    public class DBbase
    {
        private SqlConnection publicConnection = null;//公用連線

        public DBbase()
        {
            publicConnection = getConnection();
        }
        protected SqlConnection getConnection()
        {
            System.Configuration.Configuration webConfig = WebConfigurationManager.OpenWebConfiguration(HttpContext.Current.Request.ApplicationPath);
            SqlConnection conn = new SqlConnection(webConfig.ConnectionStrings.ConnectionStrings["BookShopConnectionString"].ConnectionString);
            conn.Open();
            return conn;

        }
        public SqlCommand getCommand(string cmdStr)
        {
            SqlCommand cmd = new SqlCommand(cmdStr, publicConnection);
            return cmd;

        }
		//釋放連線資源
        public void Dispose()
        {
            if (publicConnection.State == ConnectionState.Open)
            {
                publicConnection.Close();
                publicConnection.Dispose();
            }
        }
    }
}
