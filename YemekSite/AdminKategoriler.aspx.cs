using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekSite
{
    public partial class AdminKategoriler : System.Web.UI.Page
    {
        sqlConnection conn = new sqlConnection();
        string id = string.Empty;
        string islem = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["Kategoriid"];
                islem = Request.QueryString["islem"];
            }
            panelCategories.Visible = false;
            panelAddCategori.Visible = false;
            SqlCommand command = new SqlCommand("Select * From tbl_Kategoriler", conn.connection());
            SqlDataReader reader = command.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();
            if (islem == "sil")
            {
                SqlCommand command1 = new SqlCommand("Delete From tbl_Kategoriler Where Kategoriid=@p1", conn.connection());
                command1.Parameters.AddWithValue("@p1", id);
                command1.ExecuteNonQuery();
            }
        }
        protected void btnAddCategori_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("insert into tbl_Kategoriler(KategoriAd) values(@p1) ", conn.connection());
            command.Parameters.AddWithValue("@p1", txtBoxAd.Text);
            command.ExecuteNonQuery();
            Response.Write("Kategori Eklendi");
        }
        protected void btnHide_Click(object sender, ImageClickEventArgs e)
        {
            panelCategories.Visible = false;
        }

        protected void btnShow_Click(object sender, ImageClickEventArgs e)
        {
            panelCategories.Visible = true;
        }

        protected void btnAddHide_Click(object sender, ImageClickEventArgs e)
        {
            panelAddCategori.Visible = false;
        }

        protected void btnAddShow_Click(object sender, ImageClickEventArgs e)
        {
            panelAddCategori.Visible = true;
        }
    }
}