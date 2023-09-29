using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace login_form
{
    public partial class KullaniciGuncelleme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["ID"].ToString());
            DataSet1TableAdapters.TBL_LOGINTableAdapter dt = new DataSet1TableAdapters.TBL_LOGINTableAdapter();
            txtID.Text = x.ToString();
            txtID.Enabled= false;
            if(Page.IsPostBack==false) 
            {
                txtKullaniciAd.Text = dt.VeriGetir(Convert.ToInt32(txtID.Text))[0].KULLANICIAD;
                txtMail.Text = dt.VeriGetir(Convert.ToInt32(txtID.Text))[0].MAIL;
                txtTelefon.Text = dt.VeriGetir(Convert.ToInt32(txtID.Text))[0].TELEFON;
                txtSifre.Text = dt.VeriGetir(Convert.ToInt32(txtID.Text))[0].SIFRE;

            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_LOGINTableAdapter dt = new DataSet1TableAdapters.TBL_LOGINTableAdapter();
            dt.KullaniciGuncelle(txtKullaniciAd.Text,txtMail.Text,txtTelefon.Text,txtSifre.Text,Convert.ToInt32(txtID.Text));
            Response.Redirect("veriler.aspx");
        }
    }
}