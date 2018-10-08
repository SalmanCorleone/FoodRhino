using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace FinalProject
{
    public partial class CustomerHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string username = Session["username"] as string;
            /*
            if (username == null || username.Equals(""))
            {
                Response.Redirect("~/Login.aspx");
            }
             * 
             * */

            //Debug.Text = "Sample";

        }


        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void HotelTable_SelectedIndexChanged(object sender, EventArgs e)
        {

            //Debug.Text = "Debugging";            
            int hotelID = Convert.ToInt32(HotelTable.DataKeys[HotelTable.SelectedIndex].Value);
            string Hotelname = HotelTable.Rows[HotelTable.SelectedIndex].Cells[1].Text;
            string add = HotelTable.Rows[HotelTable.SelectedIndex].Cells[2].Text;
            //int id = int.Parse(hotelID);
            

            Session["Hname"] = Hotelname;
            Session["Hotelid"] = hotelID;
            Session["address"] = add;
            //Debug.Text = add;
            Response.Redirect("~/Menu.aspx");
        }







    }
}
