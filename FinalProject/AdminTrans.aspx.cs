using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class AdminUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Session["AdminName"] as string;
            if (name == null)
            {
                Response.Redirect("~/AdminLogin.aspx");
            }

        }
    }
}
