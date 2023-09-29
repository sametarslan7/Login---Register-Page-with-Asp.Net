using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace login_form
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-75TA27J\\SQLEXPRESS;Initial Catalog=Proje4_DB_LoginForm;Integrated Security=True");
        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select * from TBL_LOGIN where KULLANICIAD=@p1 and SIFRE=@p2",baglanti);
            komut.Parameters.AddWithValue("@p1",TextBox1.Text);
            komut.Parameters.AddWithValue("@p2",TextBox2.Text);

            SqlDataReader dr= komut.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("veriler.aspx");
            }
            else
            {
                Response.Write("Lütfen girdiğiniz bilgileri kontrol edin.");
            }
            baglanti.Close();
        }
    }
}