using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace FinalProject
{
    public partial class AgentConfirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Session["Agentname"] as string;
            if (name == null)
            {
                Response.Redirect("~/AgentLogin.aspx");
            }
        }

        protected void confirmButton_Click(object sender, EventArgs e)
        {

            int Aid= Convert.ToInt32(Session["Aid"]);
            int XCode = int.Parse(CodeBox.Text);
            Label1.Text = XCode.ToString();
            int tid= Convert.ToInt32(Session["tid"]);

            int real = Convert.ToInt32(Session["transCode"]);

            if (XCode == real)
            {

                string updateQ= "UPDATE \"TRANSACTION\" SET \"delivery_status\"='completed' WHERE \"agent_id\"="+ Aid+"And \"trans_id\"="+ tid;
                SqlDataSource1.UpdateCommand= updateQ;

                SqlDataSource1.UpdateCommandType = SqlDataSourceCommandType.Text;
                int row= SqlDataSource1.Update();
                if (row > 0)
                {
                    Label1.Text = "Successful";
                    
                }
                else Label1.Text = "Failed";

            }

            //Response.Redirect("~/AgentUI.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AgentUI.aspx");
        }
    }
}
