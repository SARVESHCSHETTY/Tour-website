using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class TourAdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-07AK9NSJ\SQLEXPRESS;Initial Catalog=tour;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select count(*) from Admin  where emailid='" + txtemailid.Text + "' and password='" + txtpass.Text + "'", con);
            con.Open();
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            if (temp == 1)
            {
                Response.Redirect("TourAdminHome.aspx");

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