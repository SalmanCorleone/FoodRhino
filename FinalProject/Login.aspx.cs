using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //DebugLabel.Text = "hello";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = UsernameTextBox.Text;
        string password = PasswordTextBox.Text;


        //SELECT * from USER WHERE "username"='santino' AND "password"='santino';

        string logQ = "select * from \"USER\" where \"username\" = "
                            + "'" + username + "'" +
                            " and \"password\" = " + "'" + password + "'" +
                            "and \"user_type\"= 'customer'";

        //DebugLabel.Text = selectquery;
        UserProtocol.SelectCommand = logQ;
        UserProtocol.SelectCommandType = SqlDataSourceCommandType.Text;
        DataView dv = UserProtocol.Select(DataSourceSelectArguments.Empty) as DataView;



        if (dv.Count > 0)
        {
            int cid = Convert.ToInt32(dv.Table.Rows[0][1]);
            Session["cid"] = cid;
            string name = dv.Table.Rows[0]["username"] as string;
            Session["username"] = username as string;
            Response.Redirect("~/CustomerHome.aspx?Name=" + name);
            

            DebugLabel.Text = "success";


        }
        else
        {
            DebugLabel.Text = "Wrong username or passsword. Please try again.";
        }

        
        //Response.Redirect("~/Home.aspx");
    }
}
