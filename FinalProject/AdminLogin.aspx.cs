using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace FinalProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string username = nameBox.Text;
            string pass = passBOx.Text;

     


            //SELECT * from CUSTOMER WHERE "username"='santino' AND "password"='santino';
            string selectquery = "select * from \"USER\" where \"username\" = "
                                            + "'" + username + "'" +
                                            " and \"password\" = " + "'" + pass + "'"
                                             + "and \"user_type\"= 'admin'";

            //DebugLabel.Text = selectquery;
            SqlDataSource1.SelectCommand = selectquery;
            SqlDataSource1.SelectCommandType = SqlDataSourceCommandType.Text;
            DataView dv = SqlDataSource1.Select(DataSourceSelectArguments.Empty) as DataView;



            if (dv.Count > 0)
            {
                int aid = Convert.ToInt32(dv.Table.Rows[0][1]);
                Session["adminID"] = aid;
                string name = dv.Table.Rows[0]["username"] as string;
                Session["AdminName"] = username as string;
                Response.Redirect("~/AdminTrans.aspx");


                //DebugLabel.Text = "success";


            }
            else
            {
                DebugLabel.Text = "Wrong username or passsword. Please try again.";
            }



        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void nameBox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
