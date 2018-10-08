using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace FinalProject
{
    public partial class AgentLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogButton_Click(object sender, EventArgs e)
        {

            string username = nameBox.Text;
            string password = passBox.Text;


            //SELECT * from CUSTOMER WHERE "username"='santino' AND "password"='santino';
            string selectquery = "select * from \"USER\" where \"username\" = "
                                            + "'" + username + "'" +
                                            " and \"password\" = " + "'" + password + "'"
                                             +"and \"user_type\"= 'agent'";

            //DebugLabel.Text = selectquery;
            SqlDataSource1.SelectCommand = selectquery;
            SqlDataSource1.SelectCommandType = SqlDataSourceCommandType.Text;
            DataView dv = SqlDataSource1.Select(DataSourceSelectArguments.Empty) as DataView;



            if (dv.Count > 0)
            {
                int aid = Convert.ToInt32(dv.Table.Rows[0][1]);
                Session["Aid"] = aid;
                string name = dv.Table.Rows[0]["username"] as string;
                Session["AgentName"] = username as string;
                Response.Redirect("~/AgentUI.aspx");


                //DebugLabel.Text = "success";


            }
            else
            {
                DebugLabel.Text = "Wrong username or passsword. Please try again.";
            }

            //Response.Redirect("~/AgentUI.aspx");
        }
    }
}
