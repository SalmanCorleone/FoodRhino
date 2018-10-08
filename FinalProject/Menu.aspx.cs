using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace FinalProject
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Hotel.Text = Session["Hname"] as string;
            //Debug.Text = "Hi";
            if (!IsPostBack)
            {
                Hotel.Text = Session["Hname"] as string;
                int x = Convert.ToInt32(Session["HotelId"]);
                //Debug.Text = x.ToString()+x.GetType().ToString();
                

                //"SELECT \"food_name\" as \"Food Name\" ,\"menu_type\" as \"Availability\",\"price\" as \"Price(tk)\" FROM FOOD WHERE \"hotel_id\"= " + hotelID;
                string queryHotel = "SELECT \"food_id\" as \"ID\" ,\"food_name\" as \"Food Name\" ,\"menu_type\" as \"Availability\",\"price\" as \"Price(tk)\" FROM FOOD WHERE \"hotel_id\"= " + x;
                FoodDataSource.SelectCommand = queryHotel;
                FoodDataSource.SelectCommandType = SqlDataSourceCommandType.Text;
                DataView foods = FoodDataSource.Select(DataSourceSelectArguments.Empty) as DataView;


                FoodGrid.DataSource = foods;
                FoodGrid.DataSourceID = null;
                FoodGrid.DataBind();
            }


            /*
            if (!IsPostBack)
            {
                if (Request.QueryString["key"] != null)
                {
                    DropDownListTime.SelectedValue = QueryString["key"];
                }

                BindData();

            } 
            */

            /*

            string queryHotel = "SELECT \"food_name\" ,\"menu_type\" ,\"price\" FROM FOOD WHERE \"hotel_id\"= " + hotelID;
            sadf.SelectCommand = queryHotel;
            SqlDataSource2.SelectCommandType = SqlDataSourceCommandType.Text;
            DataView foods = SqlDataSource1.Select(DataSourceSelectArguments.Empty) as DataView;
             * 
             * 
             *             DropDownList1.AutoPostBack = true;
            DropDownList1.DataSource = deptList;
            //DropDownList1.DataSourceID = null;
            
            DropDownList1.DataTextField = "Deptname";
            DropDownList1.DataValueField = "Deptid";
            DropDownList1.DataBind();*/
            

        }

        protected void FoodGrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            List<Order> OrderList= null;
            OrderList = Session["OrderList_Session"] as List<Order>;
            if (OrderList == null)
            {
                OrderList = new List<Order>();
                Session["OrderList_Session"] = OrderList;
            }


           // string qn = FoodGrid.Rows[FoodGrid.SelectedIndex].Cells[1].FindControl("Quantity");
            //int qnt = int.Parse(qn);
            DropDownList drop = (DropDownList)FoodGrid.Rows[FoodGrid.SelectedIndex].Cells[1].FindControl("QuantityDrop");
            string qn = drop.Text;
            int qnt = int.Parse(qn);

            string fid = FoodGrid.Rows[FoodGrid.SelectedIndex].Cells[2].Text;
            int FooDid = int.Parse(fid);

            string fname = FoodGrid.Rows[FoodGrid.SelectedIndex].Cells[3].Text;


            string pricee = FoodGrid.Rows[FoodGrid.SelectedIndex].Cells[5].Text;
            int price = int.Parse(pricee);

            string hotelName = Session["Hname"] as string;
            string address = Session["address"] as string;
            
            
            //string ename = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
            //string esalary = GridView1.Rows[GridView1.SelectedIndex].Cells[3].Text;

            //Debug.Text = qn;
            
            Order newOrder= new Order(FooDid,fname,qnt,price,hotelName,address);
            OrderList.Add(newOrder);
            Session["OrderList_Session"] = OrderList;
            
            
             

        }

        protected void ProceedButton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Order.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session["OrderList_Session"] = null;
        }
    }
}
