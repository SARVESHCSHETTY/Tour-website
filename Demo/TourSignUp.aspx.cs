using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class TourSignUp : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-07AK9NSJ\SQLEXPRESS;Initial Catalog=tour;Integrated Security=True");
        string id = "10";

        private void GenerateAutoID()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(userid) from Registration", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            i++;
            txtid.Text = id + i.ToString();
        }
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GenerateAutoID();
            }
        }

        protected void btnsub_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into Registration values('" + txtid.Text + "','" + txtname.Text + "','" + txtcontact.Text + "','" + txtemailid.Text + "','" + txtcpass.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('You Registered Sucessfully') </script>");
            string redirectScript = "setTimeout(function() { window.location.href = 'Tour Home.aspx'; }, 1000);"; // Delay of 3000 milliseconds (3 seconds)
            ClientScript.RegisterStartupScript(this.GetType(), "RedirectScript", redirectScript, true);

        }
    }
}