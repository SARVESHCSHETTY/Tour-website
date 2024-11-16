using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class TourUserReset : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string password = txtcpass.Text;
            if (txtnpass.Text == txtcpass.Text)
            {

                SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-07AK9NSJ\SQLEXPRESS;Initial Catalog=tour;Integrated Security=True");
                string q = ("update  Registration set cpass='" + password + "' where  emailid='" + Session["emailid"] + "'");
                SqlCommand cmd = new SqlCommand(q, con);
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Password Sucessfully changed')</script>");
                string redirectScript = "setTimeout(function() { window.location.href = 'TourUserLogin.aspx'; }, 1000);"; // Delay of 3000 milliseconds (3 seconds)
                ClientScript.RegisterStartupScript(this.GetType(), "RedirectScript", redirectScript, true);
            }
            else
            {
                Response.Write("<script>alert('Sorry your newpassword and confirm password is not matched')</script>");
            }

        }
    }
}