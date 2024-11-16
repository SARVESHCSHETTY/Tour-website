using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class AdminRefund : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-07AK9NSJ\SQLEXPRESS;Initial Catalog=tour;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnpay_Click(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("select count(userid) from Payment where cardnumber='" + txtcardnumber.Text + "' and cvv='" + txtcvv.Text + "'", con);
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            if (count >= 1)
            {
                con.Open();
                SqlCommand cmd1 = new SqlCommand("select totalamount from Booking where emailid='" + txtemailid.Text + "' ", con);
                int cost1 = Convert.ToInt32(cmd1.ExecuteScalar());
                con.Close();
                double total = cost1 * 0.80;
                con.Open();
                SqlCommand cmd2 = new SqlCommand("select amount from Payment where cardnumber='" + txtcardnumber.Text + "' and cvv='" + txtcvv.Text + "'", con);
                int cost2 = Convert.ToInt32(cmd2.ExecuteScalar());
                con.Close();
                double total2 = total;

                con.Open();
                SqlCommand cmd3 = new SqlCommand("update Payment set amount='" + total2 + "' where cardnumber='" + txtcardnumber.Text + "' and cvv='" + txtcvv.Text + "'", con);
                cmd3.ExecuteNonQuery();
                con.Close();
                Response.Write("<script> alert('Amount refund to your Bank');</script>");
                string redirectScript = "setTimeout(function() { window.location.href = 'TourAdminHome.aspx'; }, 1000);";
                ClientScript.RegisterStartupScript(this.GetType(), "RedirectScript", redirectScript, true);

                con.Open();

                SqlCommand cmd5 = new SqlCommand("select status from Payment  Where userid='" + txtid.Text + "' ", con);

                SqlDataReader sdr = cmd5.ExecuteReader();

                if (sdr.HasRows)
                {
                    string b = "Refund";
                    sdr.Close();
                    SqlCommand cmd15 = new SqlCommand("update Payment set status=@Status where userid='" + txtid.Text + "' ", con);
                    cmd15.Parameters.AddWithValue("@Status", b);
                    cmd15.ExecuteNonQuery();
                    con.Close();

                }

            }

            else
            {
                Response.Write("<script> alert('Incaoorct Details');</script>");
            }
        }

        protected void btnshow_Click(object sender, EventArgs e)
        {
            string id = txtid.Text;
            SqlCommand cmd = new SqlCommand("select emailid,cardnumber,cvv,date from Payment where userid=@id", con);
            con.Open();
            cmd.Parameters.AddWithValue("@id", id);

            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {

                string email= rd["emailid"].ToString();
                string Card = rd["cardnumber"].ToString();
                string Cvv = rd["cvv"].ToString();
                string date = rd["date"].ToString();
                txtemailid.Text = email;
                txtcardnumber.Text = Card;
                txtcvv.Text = Cvv;
                txtexp.Text = date;

            }
            rd.Close();
            con.Close();
        }
    }
}
