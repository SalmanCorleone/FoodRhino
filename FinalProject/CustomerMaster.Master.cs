using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class CustomerMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Session["username"] as string;
            NameLabel.Text = username;
            Label1.Text = username;
            //Response.Redirect("~/CustomerHome.aspx");

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/CustomerHome.aspx");
        }

        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Order.aspx");
        }

        protected void LogOutButton_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Profile.aspx");
        }





        


    }
}
