using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AramarkPizzaApp
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void basketButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Basket.aspx");
        }

        protected void MeatButton_Click(object sender, EventArgs e)
        {
            string details = Session["orderDetails"].ToString();
            details += " Pepperoni";
            Session["orderDetails"] = details.ToString();

            string costString = Session["orderTotal"].ToString();
            double costs = double.Parse(costString);
            costs += 3.80;
            Session["orderTotal"] = costs.ToString();
        }

        protected void cheeseButton_Click(object sender, EventArgs e)
        {
            string details = Session["orderDetails"].ToString();
            details += " Margherita";
            Session["orderDetails"] = details.ToString();

            string costString = Session["orderTotal"].ToString();
            double costs = double.Parse(costString);
            costs += 3.60;
            Session["orderTotal"] = costs.ToString();
        }

        protected void homeBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string details = Session["orderDetails"].ToString();
            details += " Water";
            Session["orderDetails"] = details.ToString();

            string costString = Session["orderTotal"].ToString();
            double costs = double.Parse(costString);
            costs += 1.00;
            Session["orderTotal"] = costs.ToString();
        }
    }
}