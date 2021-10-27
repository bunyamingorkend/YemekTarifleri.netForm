using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekSite
{
    public partial class AdminYemekEdit : System.Web.UI.Page
    {
        sqlConnection conn = new sqlConnection();
        string id = string.Empty;
        string islem = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {

                id = Request.QueryString["Yemekid"];
                islem = Request.QueryString["islem"];

                panelYemekler.Visible = false;
                panelYemekEkle.Visible = false;

                ///DropDownlisete Kategorileri Getirme
                SqlCommand command1 = new SqlCommand("Select * From tbl_Kategoriler", conn.connection());
                SqlDataReader reader1 = command1.ExecuteReader();

                dropDownCategories.DataTextField = "KategoriAd";
                dropDownCategories.DataValueField = "Kategoriid";
                dropDownCategories.DataSource = reader1;
                dropDownCategories.DataBind();
                reader1.Close();
                conn.connection().Close();

            }
            SqlCommand command = new SqlCommand("Select * From tbl_Yemekler", conn.connection());
            SqlDataReader reader = command.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();
            reader.Close();
            conn.connection().Close();


            if (islem == "sil")
            {
                SqlCommand command2 = new SqlCommand("Delete From tbl_Yemekler Where Yemekid=@p1", conn.connection());
                command2.Parameters.AddWithValue("@p1", id);
                command2.ExecuteNonQuery();
            }
        }
        protected void btnAddYemek_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("insert into tbl_Yemekler(YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values(@p1,@p2,@p3,@p4) ", conn.connection());
            command.Parameters.AddWithValue("@p1", txtBoxAd.Text);
            command.Parameters.AddWithValue("@p2", txtBoxMalzeme.Text);
            command.Parameters.AddWithValue("@p3", txtBoxTarif.Text);
            command.Parameters.AddWithValue("@p4", dropDownCategories.SelectedValue);
            command.ExecuteNonQuery();
            Response.Write("Yemek Eklendi");
        }
        protected void btnHide_Click(object sender, ImageClickEventArgs e)
        {
            panelYemekler.Visible = false;
        }

        protected void btnShow_Click(object sender, ImageClickEventArgs e)
        {
            panelYemekler.Visible = true;
        }

        protected void btnAddHide_Click(object sender, ImageClickEventArgs e)
        {
            panelYemekEkle.Visible = false;
        }

        protected void btnAddShow_Click(object sender, ImageClickEventArgs e)
        {
            panelYemekEkle.Visible = true;
        }

    }
}