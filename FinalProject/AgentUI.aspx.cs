using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace FinalProject
{
    public partial class AgentUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string name = Session["Agentname"] as string;
            if (name == null)
            {
                Response.Redirect("~/AgentLogin.aspx");
            }
            int agent_id = Convert.ToInt32(Session["Aid"]);
            string profQ = "SELECT * FROM TRANSACTION WHERE \"agent_id\" =" + agent_id+" AND \"delivery_status\"='pending'"      ;


            TransProtocol.SelectCommand = profQ;
            TransProtocol.SelectCommandType = SqlDataSourceCommandType.Text;
            DataView dv = TransProtocol.Select(DataSourceSelectArguments.Empty) as DataView;

            GridView1.DataSource = dv;
            GridView1.DataSourceID = null;
            GridView1.DataBind();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int transID = Convert.ToInt32(GridView1.DataKeys[GridView1.SelectedIndex].Value);

            Label1.Text = transID.ToString();

            Session["tid"] = transID;
            

            string codeQ= "SELECT \"pin_code\" FROM \"TRANSACTION\" WHERE \"trans_id\"="+ transID;
            TransProtocol.SelectCommand = codeQ;
            TransProtocol.SelectCommandType = SqlDataSourceCommandType.Text;
            DataView dx = TransProtocol.Select(DataSourceSelectArguments.Empty) as DataView;

            int code = Convert.ToInt32(dx.Table.Rows[0][0]);
            //Label1.Text = code.ToString();

            Session["transCode"] = code;

            Response.Redirect("~/AgentConfirm.aspx");
        }
    }
}
