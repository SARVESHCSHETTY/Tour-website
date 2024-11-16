using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class TourAdminReset : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            if (txtnpass.Text == txtcpass.Text)
            {

                SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-07AK9NSJ\SQLEXPRESS;Initial Catalog=tour;Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("update  Admin set password='" + txtcpass.Text + "' where  emailid='" + Session["emailid"] + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Password Sucessfully changed')</script>");
                string redirectScript = "setTimeout(function() { window.location.href = 'TourAdminLogin.aspx'; }, 1000);"; // Delay of 3000 milliseconds (3 seconds)
                ClientScript.RegisterStartupScript(this.GetType(), "RedirectScript", redirectScript, true);
            }
            else
            {
                Response.Write("<script>alert('Sorry your newpassword and confirm password is not matched')</script>");
            }

        }
    }
}