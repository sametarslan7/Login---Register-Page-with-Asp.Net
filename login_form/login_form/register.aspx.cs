using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace login_form
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-75TA27J\\SQLEXPRESS;Initial Catalog=Proje4_DB_LoginForm;Integrated Security=True");

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into TBL_LOGIN(KULLANICIAD , MAIL , TELEFON , SIFRE) VALUES(@p1,@p2,@p3,@p4)", baglanti);
            komut.Parameters.AddWithValue("@p1", txtkullaniciad.Text);
            komut.Parameters.AddWithValue("@p2", txtmail.Text);
            komut.Parameters.AddWithValue("@p3", txttelefon.Text);
            komut.Parameters.AddWithValue("@p4", txtsifre.Text);
            komut.ExecuteNonQuery();
            baglanti.Close();
            
        }
    }
}