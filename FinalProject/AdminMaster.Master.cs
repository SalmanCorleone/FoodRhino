using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class AdminMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string x= Session["AdminName"] as string;
            Label1.Text = x;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminAgent.aspx");
        }

        protected void TransButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminTrans.aspx");
        }

        protected void CustomerButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminCustomer.aspx");
        }

        protected void RegButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AgentReg.aspx");
        }

        protected void outButton_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/AdminLogin.aspx");
        }

        protected void RegButton_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/AgentReg.aspx");
        }
    }
}
