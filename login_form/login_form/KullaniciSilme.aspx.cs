using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace login_form
{
    public partial class KullaniciSilme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["ID"].ToString());
            DataSet1TableAdapters.TBL_LOGINTableAdapter dt=new DataSet1TableAdapters.TBL_LOGINTableAdapter();
            dt.KullaniciSil(x);
            Response.Redirect("veriler.aspx");
        }
    }
}