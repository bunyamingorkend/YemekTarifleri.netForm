using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekSite
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        sqlConnection conn = new sqlConnection();
        public string Yemekid = String.Empty; 
        protected void Page_Load(object sender, EventArgs e)
        {
            Yemekid= Request.QueryString["Yemekid"];

            SqlCommand command = new SqlCommand("Select YemekAd From tbl_Yemekler where Yemekid = @p1",conn.connection());
            command.Parameters.AddWithValue("@p1", Yemekid);
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                lblAd.Text = reader[0].ToString();
            }
          
            SqlCommand commandYorumGetir = new SqlCommand("Select * From tbl_Yorumlar where Yemekid = @p2", conn.connection());
            commandYorumGetir.Parameters.AddWithValue("@p2", Yemekid);
            SqlDataReader sqlDataReader = commandYorumGetir.ExecuteReader();
            DataList2.DataSource = sqlDataReader;
            DataList2.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Yemekid = Request.QueryString["Yemekid"];
            SqlCommand commandYorumYap = new SqlCommand("insert into tbl_Yorumlar (YorumAdSoyad, YorumMail,Yorumicerik,Yemekid)values(@t1,@t2,@t3,@t4)", conn.connection());
            commandYorumYap.Parameters.AddWithValue("@t1", txtBoxAd.Text);
            commandYorumYap.Parameters.AddWithValue("@t2", txtBoxMail.Text);
            commandYorumYap.Parameters.AddWithValue("@t3", txtBoxYorum.Text);
            commandYorumYap.Parameters.AddWithValue("@t4", Yemekid);
            commandYorumYap.ExecuteNonQuery();
            conn.connection().Close();
            Response.Write("Yorum Eklendi");
        }
    }
}