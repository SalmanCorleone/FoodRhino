using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FinalProject
{
    public class Order
    {
        int id;
        int quantity;
        int price;
        string name;
        public string hotelName;
        public string hotelAddress;

        public Order(int x, string y)
        {
            this.id=x;
            this.name = y;
            this.quantity = 0;
        }
        public Order(int x, string y, int z, int pricee,string h, string ad)
        {
            this.id = x;
            this.name = y;
            this.quantity = z;
            this.price = pricee;
            //price = price * quantity;
            this.hotelName = h;
            this.hotelAddress = ad;
        }


        /**********************************/
        /*
        public int ID
        {
            get 
            {
                return id;
            }
        }*/
        public String Name
        {
            get
            {
                return name;
            }
        }

        public int Quantity
        {
            get
            {
                return quantity;
            }
        }


        public int Price
        {
            get
            {
                return price;
            }
        }

        public String Hotel
        {
            get
            {
                return hotelName;
            }
        }
        public String Address
        {
            get
            {
                return hotelAddress;
            }
        }






            
    }
}