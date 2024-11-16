using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class TourReport : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-07AK9NSJ\SQLEXPRESS;Initial Catalog=tour;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            GridView1.Visible = false;
            Label1.Visible = false;
            GridView2.Visible = false;
            Label3.Visible = false;
            GridView3.Visible = false;
            Label4.Visible = false;
            GridView4.Visible = false;
            Label5.Visible = false;

            if (!IsPostBack)
            {

                con.Open();
                SqlCommand cmd1 = new SqlCommand("select distinct status from Booking", con);
                SqlDataReader rd3 = cmd1.ExecuteReader();
                while (rd3.Read())
                {
                    string value = rd3["status"].ToString();
                    string text = rd3["status"].ToString();
                    ListItem item = new ListItem(text, value);

                    DropDownList2.Items.Add(item);
                }
                rd3.Close();
                con.Close();
            
           


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
                SqlCommand cmd2 = new SqlCommand("select distinct status from Payment", con);
                SqlDataReader rd2 = cmd2.ExecuteReader();
                while (rd2.Read())
                {
                    string value = rd2["status"].ToString();
                    string text = rd2["status"].ToString();
                    ListItem item = new ListItem(text, value);

                    DropDownList3.Items.Add(item);
                }
                rd2.Close();
                con.Close();
            }
        

           }


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtfromdate.Text == "" || txttodate.Text == "")
        {
            Response.Write("<script> alert('Enter empty field');</script>");
        }
        else
        {
            DateTime fd = Convert.ToDateTime(txtfromdate.Text);
            DateTime td = Convert.ToDateTime(txttodate.Text);
            if (fd > td)
            {
                Response.Write("<script> alert('Enter Valid Date');</script>");
            }

            if (fd < td)
            {

                SqlCommand cmd = new SqlCommand("select * from Booking where date between '" + txtfromdate.Text + "'and'" + txttodate.Text + "'", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    GridView1.Visible = true;
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
                else
                {
                    Label1.Visible = true;
                    GridView1.Visible = false;
                }
                con.Close();
            }
        }
    
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM Booking where place ='" + DropDownList1.Text + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    GridView2.Visible = true;
                    GridView2.DataSource = dt;
                    GridView2.DataBind();
                }
                else
                {
                    Label3.Visible = true;
                    GridView2.Visible = false;
                }
                con.Close();
            }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd1 = new SqlCommand("SELECT * FROM Booking where status ='" + DropDownList2.Text + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd1);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            SqlDataReader sdr = cmd1.ExecuteReader();
            if (sdr.Read())
            {
                GridView3.Visible = true;
                GridView3.DataSource = dt;
                GridView3.DataBind();
            }
            else
            {
                Label4.Visible = true;
                GridView3.Visible = false;
            }
            con.Close();
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd2 = new SqlCommand("SELECT * FROM Payment where status ='" + DropDownList3.Text + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd2);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            SqlDataReader sdr = cmd2.ExecuteReader();
            if (sdr.Read())
            {
                GridView4.Visible = true;
                GridView4.DataSource = dt;
                GridView4.DataBind();
            }
            else
            {
                Label5.Visible = true;
                GridView4.Visible = false;
            }
            con.Close();
        }
    }
  }








