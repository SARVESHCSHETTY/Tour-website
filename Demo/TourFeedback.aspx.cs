using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class TourFeedback : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-07AK9NSJ\SQLEXPRESS;Initial Catalog=tour;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select * from Registration where emailid='" + Session["Email"] + "'", con);
                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.Read())
                    {
                        txtname.Text = rd["username"].ToString();
                        txtemailid.Text = rd["emailid"].ToString();
                       
                    }
                    rd.Close();
                    con.Close();
            }
               
            
        }

       

        protected void btn1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Feedback values(@username,@emailid,@feedback,@ratings)", con);
            cmd.Parameters.AddWithValue("@username", txtname.Text);
            cmd.Parameters.AddWithValue("@emailid", txtemailid.Text);
            cmd.Parameters.AddWithValue("@feedback", txtmsg.Text);
            cmd.Parameters.AddWithValue("@ratings", RadioButtonList1.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script> alert('Thank you for your feedback..');</script>");
            string redirectScript = "setTimeout(function() { window.location.href = 'TourUserHomePage.aspx'; }, 1000);"; // Delay of 3000 milliseconds (3 seconds)
            ClientScript.RegisterStartupScript(this.GetType(), "RedirectScript", redirectScript, true);
        }
    }
}