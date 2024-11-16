using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Demo
{
    public partial class UserCancelPackage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-07AK9NSJ\SQLEXPRESS;Initial Catalog=tour;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible= false;
            Label2.Visible= false;
            btncancel.Visible = false;
            if (!IsPostBack)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Registration where emailid='" + Session["Email"] + "'", con);
                SqlDataReader rd = cmd.ExecuteReader();
                
                if (rd.Read())
                {
                    
                    txtemailid.Text = rd["emailid"].ToString();
                   
                }
                rd.Close();
                con.Close();

            }

        }





        protected void btncancel_Click(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("select status from Booking  Where emailid='" + txtemailid.Text + "' ", con);
            SqlDataReader sdr = cmd.ExecuteReader();
           
            if (sdr.HasRows)
            {
                sdr.Close();
                string b = "Cancel";
               
                SqlCommand cmd1 = new SqlCommand("update Booking set status=@Status where emailid='" + txtemailid.Text + "' ", con);
                cmd1.Parameters.AddWithValue("@Status", b);
                cmd1.ExecuteNonQuery();

                Response.Write("<script> alert ('Your Booking is canceled seccessfully');</script>");
                
                LoadRecord();
               
            }
            else
           
            con.Close();
        }






        protected void Button1_Click(object sender, EventArgs e)
        {
           
                btncancel.Visible = true;
                string id = txtemailid.Text;
                SqlCommand cmd = new SqlCommand("select * from Booking where emailid=@id", con);
                con.Open();
                cmd.Parameters.AddWithValue("@id", id);

                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    rd.Close();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    GridView1.DataSource = dt;
                    dt = dt.DefaultView.ToTable();
                    GridView1.DataBind();
                    con.Close();
                }


                string Pay = txtemailid.Text;
                LoadRecord1();

                SqlCommand cmd1 = new SqlCommand("select * from Payment where emailid=@id", con);
                con.Open();
                cmd1.Parameters.AddWithValue("@id", Pay);

                SqlDataReader rd1 = cmd1.ExecuteReader();
                if (rd1.Read())
                {
                    rd1.Close();
                    SqlDataAdapter da = new SqlDataAdapter(cmd1);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    GridView2.DataSource = dt;
                    dt = dt.DefaultView.ToTable();
                    GridView2.DataBind();
                    con.Close();
                }
        }
        void LoadRecord()
        {
           
            SqlCommand cmd = new SqlCommand("select * from Booking  Where emailid='" + txtemailid.Text + "' ", con);
            SqlDataAdapter d = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
           
        }

        void LoadRecord1()
        {
            
            SqlCommand cmd1 = new SqlCommand("select * from Payment  Where emailid='" + txtemailid.Text + "' ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
           
        }
    }
  }

    

