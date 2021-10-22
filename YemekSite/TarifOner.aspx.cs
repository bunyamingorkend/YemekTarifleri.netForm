using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekSite
{
    public partial class TarifOner : System.Web.UI.Page
    {
        sqlConnection conn = new sqlConnection();
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("insert into tbl_Tarifler(TarifAd, TarifMalzeme,Tarifyapilis,TarifResim,TarifSahip,TarifSahipMail)values(@t1,@t2,@t3,@t4,@t5,@t6)", conn.connection());
            command.Parameters.AddWithValue("@t1", txtBoxAd.Text);
            command.Parameters.AddWithValue("@t2", txtBoxMalzeme.Text);
            command.Parameters.AddWithValue("@t3", txtBoxYapilis.Text);
            command.Parameters.AddWithValue("@t4", fUploadResim.FileName);
            command.Parameters.AddWithValue("@t5", txtBoxOneren.Text);
            command.Parameters.AddWithValue("@t6", txtBoxMail.Text);
            command.ExecuteNonQuery();
            conn.connection().Close();
            Response.Write("Tarif Eklendi");
        }
    }
}