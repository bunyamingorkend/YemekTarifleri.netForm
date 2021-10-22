using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekSite
{
    public partial class MainPage : System.Web.UI.Page
    {
        sqlConnection conn = new sqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cm = new SqlCommand("Select * From tbl_Yemekler", conn.connection());
            SqlDataReader reader = cm.ExecuteReader();
            DataList2.DataSource = reader;
            DataList2.DataBind();

        }
    }
}