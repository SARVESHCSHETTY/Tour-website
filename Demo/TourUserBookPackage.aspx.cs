using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class TourUserBookPackage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-07AK9NSJ\SQLEXPRESS;Initial Catalog=tour;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("select place from Package", con);
                SqlDataReader rd1 = cmd.ExecuteReader();
                while (rd1.Read())
                {
                    string value = rd1["place"].ToString();
                    string text = rd1["place"].ToString();
                    ListItem item = new ListItem(text, value);

                    DropDownList1.Items.Add(item);
                }
                rd1.Close();
                con.Close();

                con.Open();
                SqlCommand cmd1 = new SqlCommand("select * from Registration  where emailid='" + Session["Email"] + "'", con);
                SqlDataReader rd5 = cmd1.ExecuteReader();
                if (rd5.Read())
                {
                    string email = rd5["emailid"].ToString();
                    txtemailid.Text = email;


                }
                rd5.Close();
                con.Close();

            }
        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            DateTime today = DateTime.Today;
            DateTime sday = today.AddDays(2);
            DateTime date = DateTime.Parse(txtdate.Text);
            if (date < sday && date >= today)
            {
                Response.Write("<script> alert('You can only select Booking date after  2 days');</script>");

            }
            else if (date < today)
            {
                Response.Write("<script> alert('invalid Date');</script>");
            }
            else
            {
                string b = "Booked";
                SqlCommand cmd = new SqlCommand("insert into Booking(emailid,place,packageid,perpersons,stayamount,foodamount,noofdays,noofnights,vehicleamount,date,totalamount,status) values(@emailid,@place,@packageid,@perpersons,@stayamount,@foodamount,@noofdays ,@noofnights,@vehicleamount,@date,@totalamount,@status)", con);
                cmd.Parameters.AddWithValue("@emailid", txtemailid.Text.Trim());
                cmd.Parameters.AddWithValue("@place", DropDownList1.Text.Trim());
                cmd.Parameters.AddWithValue("@packageid", txtid.Text.Trim());
                cmd.Parameters.AddWithValue("@perpersons", Convert.ToDecimal(dperson.SelectedValue));
                cmd.Parameters.AddWithValue("@stayamount", Convert.ToDecimal(txtstayamount.Text));
                cmd.Parameters.AddWithValue("@foodamount", Convert.ToDecimal(txtfoodamount.Text));
                cmd.Parameters.AddWithValue("@noofdays", Convert.ToDecimal(txtnoofdays.Text));
                cmd.Parameters.AddWithValue("@noofnights", Convert.ToDecimal(txtnoofnights.Text));
                cmd.Parameters.AddWithValue("@vehicleamount", txtvehicalamount.Text.Trim());
                cmd.Parameters.AddWithValue("@date", txtdate.Text);
                cmd.Parameters.AddWithValue("@totalamount", txttotalamount.Text.Trim());
                cmd.Parameters.AddWithValue("@status", b);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Booking is SucessFully Done')</script>");
                 string redirectScript = "setTimeout(function() { window.location.href = 'TourPayment.aspx'; }, 1000);"; // Delay of 3000 milliseconds (3 seconds)
                ClientScript.RegisterStartupScript(this.GetType(), "RedirectScript", redirectScript, true);
            }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select packageid,noofdays,noofnights from Package where place=@place", con);
            cmd.Parameters.AddWithValue("@place", DropDownList1.Text);
            SqlDataReader rd;
            rd = cmd.ExecuteReader();
            //bool temp = false; 
            while (rd.Read())
            {
                string id = rd["packageid"].ToString();
                string days = rd["noofdays"].ToString();
                string nights = rd["noofnights"].ToString();
                txtid.Text = id;
                txtnoofdays.Text = days;
                txtnoofnights.Text = nights;
            }
            rd.Close();
            con.Close();
        }

        protected void dperson_SelectedIndexChanged(object sender, EventArgs e)
        {
            int perperson = Convert.ToInt32(dperson.SelectedValue);
            int a = 1000;
            int b = 2400;
            txtstayamount.Text = (perperson * a).ToString();
            txtfoodamount.Text = (perperson * b).ToString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedValue == "Bus")
            {
                SqlCommand cd = new SqlCommand("select busamount from Package where packageid = '" + txtid.Text + "'", con);
                con.Open();
                SqlDataReader rd2 = cd.ExecuteReader();
                if (rd2.Read())
                {
                    txtvehicalamount.Text = rd2["busamount"].ToString();
                }
                con.Close();
                var result = Convert.ToDouble(txtstayamount.Text) + Convert.ToDouble(txtfoodamount.Text) + Convert.ToDouble(txtvehicalamount.Text);
                txttotalamount.Text = result.ToString();
            }
            else
            {
                if (RadioButtonList1.SelectedValue == "Car")
                {

                    SqlCommand cd1 = new SqlCommand("select caramount from Package where packageid = '" + txtid.Text + "'", con);
                    con.Open();
                    SqlDataReader rd1 = cd1.ExecuteReader();
                    if (rd1.Read())
                    {
                        txtvehicalamount.Text = rd1["caramount"].ToString();
                    }
                    con.Close();
                    var result1 = Convert.ToDouble(txtstayamount.Text) + Convert.ToDouble(txtfoodamount.Text) + Convert.ToDouble(txtvehicalamount.Text);
                    txttotalamount.Text = result1.ToString();
                }
            }
        }

       
    }
}