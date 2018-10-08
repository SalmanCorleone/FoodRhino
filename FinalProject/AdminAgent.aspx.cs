using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class AdminAgent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Session["AdminName"] as string;
            if (name == null)
            {
                Response.Redirect("~/AdminLogin.aspx");
            }

        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AgentReg.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            string aid = GridView1.Rows[GridView1.SelectedIndex].Cells[0].Text;
            int agent_id = int.Parse(aid);
            Session["Aid"] = agent_id;
            Response.Redirect("~/AdminSuspend.aspx");
        }
    }
}
