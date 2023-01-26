using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AramarkPizzaApp
{
    public partial class Basket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            resultLabel.Text = Session["orderDetails"].ToString();

            resultLabelTotalCost.Text = Session["orderTotal"].ToString();
        }

        protected void menuBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void SavePersonInfo_Click(object sender, EventArgs e)
        {
            Pizza_ordersEntities db = new Pizza_ordersEntities();
            var dbcustomer = db.customers;

            var newCustomer = new customer();

            newCustomer.CustomerName = PersonNameInput.Text;
            newCustomer.CustomerAddress = PersonAddressInput.Text;
            newCustomer.CustomerPostCode = PostCodeInput.Text;
            newCustomer.Cost = decimal.Parse(resultLabelTotalCost.Text);
            newCustomer.Order = resultLabel.Text;

            db.customers.Add(newCustomer);
            db.SaveChanges();
            grdOrders.DataBind();
        }

        protected void clearB_Click(object sender, EventArgs e)
        {
            Session["orderDetails"] = "";

            Session["orderTotal"] = "0";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}