using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
namespace YemekSite
{
    public class sqlConnection
    {
        public SqlConnection connection()
        {
            SqlConnection conn = new SqlConnection(@"Data Source =(localdb)\localDb; Initial Catalog = dbo_yemektarifi; Integrated Security = True");
            conn.Open();
            return conn;
        }

    }
}