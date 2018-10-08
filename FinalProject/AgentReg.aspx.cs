using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace FinalProject
{
    public partial class AgentReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {









            /*
             * INSERT INTO DELIVERY_AGENT VALUES (13,'Moyeen','Uddin','moyeen','moyeen',1,19,'Vuter Goli',465,'12-12-2015',50,0);


        else
        {

            //INSERT INTO CUSTOMER VALUES(105, 'sam', 'smith', 'sam', 'sam',1,'adrress','premium','email','3535535',NULL,NULL);
            string insertquery = "insert into CUSTOMER values ("
                                                             + id +
                                                        "," + "'" + firstname + "'" +
                                                        ", " + "'" + lastname + "'" +
                                                        ", " + "'" + username + "'" +
                                                        ", " + "'" + password + "'" +
                                                        ", " + location +
                                                        ", " + "'" + address + "'" +
                                                        ", " + "'" + membership + "'" +
                                                        ", " + "'" + email + "'" +
                                                        ", " + "'" + contact + "'" +
                                                        ", " + "TO_CHAR(SYSDATE,'dd-mm-yyyy')" +
                                                        ", " + "'" + birthday + "'" +
                                                        ")";
            DebugLabel.Text = insertquery;
             *


            SqlDataSource1.InsertCommand = insertquery;
            SqlDataSource1.InsertCommandType = SqlDataSourceCommandType.Text;
            int nrows = SqlDataSource1.Insert();


            //Response.Redirect("~/Login.aspx");
             * */


        }

        protected void SignButton_Click(object sender, EventArgs e)
        {
            
            string firstname = TextBox1.Text;
            string lastname = TextBox2.Text;
            string username = TextBox3.Text;
            string password = TextBox4.Text;

            string loc1 = DropDownList1.SelectedValue;
            int location1 = int.Parse(loc1);

            string loc2 = DropDownList2.SelectedValue;
            int location2 = int.Parse(loc2);


            string address = TextBox6.Text;
            string contact = TextBox7.Text;
            string join = TextBox8.Text;
            string salary = TextBox9.Text;

            if (password != TextBox6.Text)
            {
                DebugLabel.Text = "Input Password Carefully!";

            }


            string query1 = "SELECT MAX(\"agent_id\") AS aid FROM DELIVERY_AGENT";
            AgentProtocol.SelectCommand = query1;
            AgentProtocol.SelectCommandType = SqlDataSourceCommandType.Text;
            DataView dv = AgentProtocol.Select(DataSourceSelectArguments.Empty) as DataView;


            int id = 0;

            id = Convert.ToInt32(dv.Table.Rows[0][0]);
            id += 1;

            string insQ= "INSERT INTO DELIVERY_AGENT VALUES ("+id+",'"+
                firstname+"','"+lastname+"','"+username+"','"+password+"',"+loc1+","+loc2
                +",'"+address+"',"+contact+",'"+join+"',"+salary+",0)";
            DebugLabel.Text = insQ;





            AgentProtocol.InsertCommand = insQ;
            AgentProtocol.InsertCommandType = SqlDataSourceCommandType.Text;
            int nrows = AgentProtocol.Insert();

            if (nrows > 0)
            {
                DebugLabel.Text = "Insertion successful";
                
            }
            else
            {
                DebugLabel.Text = "Insertion failed. Please try again.";
            }

        }
        protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
        {
           // Response.Redirect("~/Login.aspx");
        }


    }
}
