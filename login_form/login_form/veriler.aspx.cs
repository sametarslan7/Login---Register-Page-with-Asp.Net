using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace login_form
{
    public partial class veriler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_LOGINTableAdapter dt = new DataSet1TableAdapters.TBL_LOGINTableAdapter();
            Repeater1.DataSource= dt.BilgiGoster();
            Repeater1.DataBind();
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }
    }
}