using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekSite
{
    public partial class iletisim : System.Web.UI.Page
    {
        sqlConnection conn = new sqlConnection();

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("insert into tbl_Mesajlar(MesajAd, MesajEposta,Mesajicerik)values(@t1,@t2,@t3)", conn.connection());
            command.Parameters.AddWithValue("@t1", txtBoxAd.Text);
            command.Parameters.AddWithValue("@t2", textBoxMail.Text);
            command.Parameters.AddWithValue("@t3", txtBoxMesaj.Text);
            command.ExecuteNonQuery();
            conn.connection().Close();
            Response.Write("Mesaj Gönderildi");

        }
    }
}