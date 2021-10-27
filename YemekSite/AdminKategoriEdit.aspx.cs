using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekSite
{
    public partial class AdminKategoriEdit : System.Web.UI.Page
    {
        sqlConnection conn = new sqlConnection();
        string id = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Kategoriid"];
            if (Page.IsPostBack==false)
            {
                SqlCommand command = new SqlCommand("Select * From tbl_Kategoriler where Kategoriid=@p1", conn.connection());
                command.Parameters.AddWithValue("@p1", id);
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    txtBoxKategoriAd.Text = reader[1].ToString();
                    txtBoxKategoriAdet.Text = reader[2].ToString();
                }
            }
           
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            id = Request.QueryString["Kategoriid"];
            SqlCommand command = new SqlCommand("Update tbl_Kategoriler set KategoriAd=@p1,KategoriAdet=@p2 where Kategoriid=@p3", conn.connection());
            command.Parameters.AddWithValue("@p1", txtBoxKategoriAd.Text);
            command.Parameters.AddWithValue("@p2", txtBoxKategoriAdet.Text);
            command.Parameters.AddWithValue("@p3", id);
            command.ExecuteNonQuery();

        }
    }
}