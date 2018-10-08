using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class AdminSuspend : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Session["AdminName"] as string;
            if (name == null)
            {
                Response.Redirect("~/AdminLogin.aspx");
            }

        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminAgent.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Session["Aid"]);
            
            string delQ= "DELETE FROM DELIVERY_AGENT WHERE \"agent_id\"="+id;
            SqlDataSource1.DeleteCommand =delQ;
            SqlDataSource1.DeleteCommandType= SqlDataSourceCommandType.Text;
            int row = SqlDataSource1.Delete();
            if (row > 0)
            {
                Response.Redirect("~/AdminAgent.aspx");
                Label1.Text = "Suspended Successfully :(";
            }
            else Label1.Text = "Failed";

            

        }
    }
}
