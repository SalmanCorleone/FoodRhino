using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class Completed : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            int x= Convert.ToInt32(Session["count"]);
            if (x != 0)
            {
                TopLabel.Text = "Thanks For Ordering from FoodRhino!";
                BotLabel.Text = " Your Confirmation Code: ";
                if (Session["code"] != null)
                {
                    int code = (int)Session["code"];
                    ConfirmationCode.Text = code.ToString();

                }
                Session["count"] = null;
                Session["code"] = null;
                Session["OrderList_Session"] = null;
            }
            else
            {
                TopLabel.Text = "You Haven't Ordred Anything Yet!";
            }
        }
    }
}
