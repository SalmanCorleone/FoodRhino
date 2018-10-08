using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SignUpButton_Click(object sender, EventArgs e)
    {

        string query1="SELECT MAX(\"customer_id\") AS CID FROM CUSTOMER";
        SqlDataSource1.SelectCommand = query1;
        SqlDataSource1.SelectCommandType = SqlDataSourceCommandType.Text;
        DataView dv = SqlDataSource1.Select(DataSourceSelectArguments.Empty) as DataView;

        //Debug2.Text = query1;
        int id = 0;

        id = Convert.ToInt32(dv.Table.Rows[0][0]);
        id += 1;






        string firstname = FirstNameTextBox.Text;
        string lastname = LastNameTextBox.Text;
        string username = UsernameTextBox.Text;
        string password = PasswordTextBox.Text;

        string loc = LocationBox.SelectedValue;
        int location = int.Parse(loc);

        string address = AddressBox.Text;


        string membership = Member.SelectedValue;
        
        string email = EmailBox.Text;
        string contact = ContactBox.Text;



        string birthday = date.Text + "-" + month.SelectedValue + "-" + year.SelectedValue;


        if (password != Password2TextBox.Text)
        {
            DebugLabel.Text = "Input Password Carefully!";

        }

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

            
            SqlDataSource1.InsertCommand = insertquery;
            SqlDataSource1.InsertCommandType = SqlDataSourceCommandType.Text;
            int nrows = SqlDataSource1.Insert();


            if (nrows > 0)
            {
                DebugLabel.Text = "Insertion successful";
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                DebugLabel.Text = "Insertion failed. Please try again.";
            }

            //Response.Redirect("~/Login.aspx");
            

        }
    }
    protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
    {
        Response.Redirect("~/Login.aspx");

    }
    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

    }


    protected void UsernameTextBox_TextChanged(object sender, EventArgs e)
    {
        //**************/

        
    }

    protected void Password2TextBox_TextChanged(object sender, EventArgs e)
    {
        
    }
}
