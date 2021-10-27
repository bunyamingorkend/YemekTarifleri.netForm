using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekSite
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        sqlConnection conn = new sqlConnection();
        public string kategoriid = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriid = Request.QueryString["kategoriid"];

            SqlCommand command = new SqlCommand("Select * From tbl_Yemekler where Kategoriid = @p1", conn.connection());
            command.Parameters.AddWithValue("@p1", kategoriid);
            SqlDataReader reader = command.ExecuteReader();
            DataList2.DataSource = reader;
            DataList2.DataBind();


        }


    }
}