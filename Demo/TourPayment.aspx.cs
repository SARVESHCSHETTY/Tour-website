using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class TourPayment : System.Web.UI.Page
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
                    txtid.Text = rd["userid"].ToString();
                    txtusername.Text = rd["username"].ToString();
                    txtemailid.Text = rd["emailid"].ToString();
                    txtphone.Text = rd["contact"].ToString();
                    
                }
                rd.Close();
                con.Close();

                con.Open();
                SqlCommand cmd1= new SqlCommand("select totalamount  from Booking  where emailid='" + Session["Email"] + "'", con);
                SqlDataReader rd1 = cmd1.ExecuteReader();
                while (rd1.Read())
                {
                    string amount = rd1["totalamount"].ToString();                  
                    txttotal.Text = amount;
                }
                rd1.Close();
                con.Close();
            }

        }

        private bool IsValidExpiration(String expiration)
        {
                if (expiration.Length == 5 && expiration[2] == '/')
                {

                    string[] parts = expiration.Split('/');
                    if (int.TryParse(parts[0], out int month) && int.TryParse(parts[1], out int year))
                    {
                        if (month >= 1 && month <= 12 && year >= DateTime.Now.Year % 100)
                        {
                            return true;
                        }
                    }
                }

            return false;
        }
    

        protected void btnpay_Click(object sender, EventArgs e)
        {
            string expiration = txtexp.Text;
            if (!IsValidExpiration(expiration))
            {
                Label2.Visible = true;
                Label2.Text = "Invalid expiration date.";
                return;
            }
            else
            {
                con.Open();
                //SqlCommand command = new SqlCommand("select * from Payment where emailid='" + Session["Email"] + "'", con);
                //SqlDataReader srd = command.ExecuteReader();
                //if (srd.Read())
                //{
                //    //DateTime date = Convert.ToDateTime(srd["date"]);
                //    //string date2 = date.ToShortDateString();
                //    string status = srd["status"].ToString();
                //    if (status != "paid")
                //    {

                string a = "Paid";
                SqlCommand cmd = new SqlCommand("Insert into Payment values('" + txtusername.Text + "','" + txtid.Text + "','" + txtemailid.Text + "','" + txtphone.Text + "','" + txtcardnumber.Text + "','" + txtcvv.Text + "','" + txtexp.Text + "','" + txttotal.Text + "','" + a + "')", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Payment Done Sucessfully') </script>");
                string redirectScript = "setTimeout(function() { window.location.href = 'TourFeedback.aspx'; }, 1000);"; // Delay of 3000 milliseconds (3 seconds)
                ClientScript.RegisterStartupScript(this.GetType(), "RedirectScript", redirectScript, true);
            

                //    }
                //    else
                //    {
                //        Response.Write("<script> alert('Amount is already paid by you..'); </script>");
                //    }

                //}
                //srd.Close();
                //con.Close();
            }
        }
    }
}
