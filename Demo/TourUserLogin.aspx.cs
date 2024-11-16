using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class TourUserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Email"] = txtemailid.Text;
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-07AK9NSJ\SQLEXPRESS;Initial Catalog=tour;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select count(*) from Registration  where emailid='" + txtemailid.Text + "' and cpass='" + txtpass.Text + "'", con);
            con.Open();
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (temp == 1)
            {
                //Response.Write("<script>alert('Login Sucessfully')</script>");
                Response.Redirect("TourUserHomePage.aspx");


            }
            else
            {
                Response.Write("<script>alert('Invalid Login details')</script>");
            }
            txtemailid.Text = " ";
            txtpass.Text = " ";

        }
    }
}