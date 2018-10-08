using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace FinalProject
{
    public partial class Order1 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

            List<Order> Orders = null;            
            Orders = Session["OrderList_Session"] as List<Order>;
            //Debug.Text = x.ToString()+x.GetType().ToString();

            //"SELECT \"food_name\" as \"Food Name\" ,\"menu_type\" as \"Availability\",\"price\" as \"Price(tk)\" FROM FOOD WHERE \"hotel_id\"= " + hotelID;
            /*string queryHotel = "SELECT \"food_id\" as \"ID\" ,\"food_name\" as \"Food Name\" ,\"menu_type\" as \"Availability\",\"price\" as \"Price(tk)\" FROM FOOD WHERE \"hotel_id\"= " + x;
            FoodDataSource.SelectCommand = queryHotel;
            FoodDataSource.SelectCommandType = SqlDataSourceCommandType.Text;
            DataView foods = FoodDataSource.Select(DataSourceSelectArguments.Empty) as DataView;
             * */


            CartGrid.DataSource = Orders;
            CartGrid.DataSourceID = null;
            CartGrid.DataBind();

            if (Orders != null)
            {
                int price = 0;
                foreach (Order x in Orders)
                {
                    price += x.Price * x.Quantity;
                }

                Total.Text = "Total Price = ";
                Price.Text = price.ToString();
                int OrderCount = CartGrid.Rows.Count;
                Session["count"] = OrderCount;
            }

            //DebugLabel.Text = OrderCount.ToString();
            

        }

        protected void CartGrid_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Session["count"] = null;
            Session["code"] = null;
            Session["OrderList_Session"] = null;
            //Response.Redirect("~/CustomerHome.aspx");
            Response.Redirect(Request.RawUrl);
        }

        protected void ProceedButton_Click(object sender, EventArgs e)
        {
            List<Order> Orders = null;
            Orders = Session["OrderList_Session"] as List<Order>;
            if (Orders!=null)
            {

                Random rnd = new Random();
                int code = rnd.Next(1000, 9999);
                Session["code"] = code;
                /************************/
                string orderString = null;
                
                foreach (Order x in Orders)
                {
                    
                    orderString += "Food name:" + x.Name + ", ";
                    orderString += "Price: " + x.Price + ", ";
                    orderString += "Quantity: " + x.Quantity + ", ";
                    orderString += "Hotel Name: " + x.hotelName + ", ";
                    orderString += "Address: " + x.hotelAddress + ", ";
                    orderString += "_________________________________";
                    
                }

                DebugLabel.Text = orderString;
                /************************/

                

                /* 
                 *  string query1="SELECT MAX(\"customer_id\") AS CID FROM CUSTOMER";
                    SqlDataSource1.SelectCommand = query1;
                    SqlDataSource1.SelectCommandType = SqlDataSourceCommandType.Text;
                    DataView dv = SqlDataSource1.Select(DataSourceSelectArguments.Empty) as DataView;

                    //Debug2.Text = query1;
                    int id = 0;

                    id = Convert.ToInt32(dv.Table.Rows[0][0]);
                    id += 1;
                 */

                /***************/

                string maxQ="SELECT MAX(\"trans_id\") AS Tid FROM TRANSACTION";
                TransProtocol.SelectCommand = maxQ;
                TransProtocol.SelectCommandType = SqlDataSourceCommandType.Text;
                DataView transDV = TransProtocol.Select(DataSourceSelectArguments.Empty) as DataView;
                int trans = Convert.ToInt32(transDV.Table.Rows[0][0])+1;
                
                
                /****************/

                int cc = Convert.ToInt32(Session["cid"]);

                /****************/

                string money= Price.Text;

                /**********************/

                

                //INSERT INTO "TRANSACTION" VALUES (2,1,'abc',ASSIGN_AGENT(1),125,666,'pending');
                /*
                 * SqlDataSource1.InsertCommand = insertquery;
                SqlDataSource1.InsertCommandType = SqlDataSourceCommandType.Text;
                int nrows = SqlDataSource1.Insert();
                 * 
                 * */

                /*
                
                  string transQ= "INSERT INTO \"TRANSACTION\" VALUES ("
                    
                      + trans+ ", "
                      + cc + ", "
                      + "'" + orderString + "'" +", "
                      + "ASSIGN_AGENT(" + cc + ")" +", "
                      + money+", "
                      + code +", "
                      +"'pending')";
                  */
 
                    
                  string transQ= "DECLARE tempAddress VARCHAR2(100); BEGIN \"getCustomerAddress\"("+cc +", tempAddress); INSERT INTO \"TRANSACTION\" VALUES ("
                    
                      + trans+ ", "
                      + cc + ", "
                      + "tempAddress" + ", "
                      + "'" + orderString + "'" +", "
                      + "ASSIGN_AGENT(" + cc + ")" +", "
                      + money+", "
                      + code +", "
                      +"'pending'); END;";

             
                  
 
                  ;
                    /*
DECLARE

tempAddress VARCHAR2(100);


BEGIN

"getCustomerAddress"(1, tempAddress);
                     * 
                     * */



                DebugLabel.Text = transQ;

                    TransProtocol.InsertCommand = transQ;
                    TransProtocol.InsertCommandType = SqlDataSourceCommandType.Text;
                    int nrows = TransProtocol.Insert();
                    if (nrows > 0)
                    {
                        //DebugLabel.Text = "hoise";
                    }


                /*************************/


                Response.Redirect("~/Completed.aspx");
            }

            else Response.Redirect("~/Completed.aspx");
        }
    }
}
