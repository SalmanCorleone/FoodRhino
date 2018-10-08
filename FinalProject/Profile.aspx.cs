using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace FinalProject
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            int cust_id= Convert.ToInt32(Session["cid"]);
            string profQ = "SELECT * FROM CUSTOMER WHERE \"customer_id\" =" + cust_id;


            ProfileProtocol.SelectCommand = profQ;
            ProfileProtocol.SelectCommandType = SqlDataSourceCommandType.Text;
            DataView dv = ProfileProtocol.Select(DataSourceSelectArguments.Empty) as DataView;

            ProfileTable.DataSource = dv;
            ProfileTable.DataSourceID = null;
            ProfileTable.DataBind();
            


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CustomerHome.aspx");
        }
    }
}
