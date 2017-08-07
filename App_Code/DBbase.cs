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

        public void Dispose()//關閉連線
        {
            if (publicConnection.State == ConnectionState.Open)
            {
                publicConnection.Close();
                publicConnection.Dispose();
            }
        }
    }
}
