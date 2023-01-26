using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace AramarkPizzaApp
{
    public partial class EmployeeLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            con.Open();

            SqlCommand cmd = new SqlCommand("select * from Login where  AdminID=@Username and Password=@Password", con);

            cmd.Parameters.AddWithValue("@Username", usernamebox.Text);

            cmd.Parameters.AddWithValue("@Password", pwordbox.Text);

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            da.Fill(dt);

            if (dt.Rows.Count > 0)

            {
                Response.Redirect("EmployeeView.aspx");
            }

            else
            {
                resultLabel.Text = "Incorrect username/password.";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}