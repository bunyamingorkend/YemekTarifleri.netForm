using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekSite
{
    public partial class AdminYemekEdit2 : System.Web.UI.Page
    {
        sqlConnection conn = new sqlConnection();
        string id = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yemekid"];
            if (Page.IsPostBack == false)
            {
                SqlCommand command = new SqlCommand("Select * From tbl_Yemekler where Yemekid=@p1", conn.connection());
                command.Parameters.AddWithValue("@p1",id);
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    txtBoxYemekAd.Text = reader[1].ToString();
                    txtBoxYemekMalzeme.Text = reader[2].ToString();
                    txtBoxYemekTarif.Text = reader[3].ToString();
                    txtBoxYemekKategori.Text = reader[7].ToString();
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            id = Request.QueryString["Yemekid"];
            SqlCommand command = new SqlCommand("Update tbl_Yemekler set YemekAd=@p1,YemekMalzeme=@p2, YemekTarif=@p3 where Kategoriid=@p4", conn.connection());
            command.Parameters.AddWithValue("@p1", txtBoxYemekAd.Text);
            command.Parameters.AddWithValue("@p2", txtBoxYemekMalzeme.Text);
            command.Parameters.AddWithValue("@p3", txtBoxYemekTarif.Text);
            command.Parameters.AddWithValue("@p4", id);
            command.ExecuteNonQuery();
            Response.Write("Yemek Güncellendi");

        }
    }
}