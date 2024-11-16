<%@ Page Title="" Language="C#" MasterPageFile="~/TourAdminHome.Master" AutoEventWireup="true" CodeBehind="TourReport.aspx.cs" Inherits="Demo.TourReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="hrfor11.css" rel="stylesheet" />
     <div class="container">
        <div class="row">
            <div class="col-md-11 mx-auto">
                 <div class="card">
                     <div class="card-body"> 
   
            <center> 
                <asp:Image ID="ProfilePicture" class="rounded-circle" runat="server" ImageUrl="images/Report.jpg" Height="100" Width="100" BorderStyle="Solid" BorderColor="black" />
            </center>
                         <div class="row">
                             <div class="col">
                                <center>
                                    <h3>Booking Report</h3>
                                    
                                </center>                                 
                             </div>
                         </div>
        
             &nbsp;

            <div class="row"> 
                <div class="col"> 
                    <center>
                        <div id="line"><hr /></div>
                        </center>
                </div> 

              </div> 
               
             &nbsp


     <div class="row">
         &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp;
        <div class="col-4"> 
                      &nbsp; 
              <asp:Image ID="Image1" runat="server"  src="images/date.jpg"  width="30" height="30" /> &nbsp;<label>From-Date</label> 
               <div class="form-group"> 
               <asp:TextBox ID="txtfromdate" class="form-control" runat="server" BorderColor="Black" TextMode="Date"></asp:TextBox>
               
             </div>
         </div>                                
            &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
        <div class="col-4">
           <asp:Image ID="Image11" runat="server"  src="images/date.jpg"  width="30" height="30" /> &nbsp; <label>To-Date</label> 
               <div class="form-group">
                   <asp:TextBox ID="txttodate" class="form-control" runat="server" BorderColor="Black" TextMode="Date"></asp:TextBox>
       

                   </div>
            </div>
        
          <div class="col-2">
              <label>Show</label> 
              <div class="form-group">
              <asp:Button ID="Button1" class="btn btn-outline-dark " BorderColor="Black" runat="server" Text="Search" OnClick="Button1_Click" />


              </div>
              </div>


         </div>
    <br />
         <div class="row">
         &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp;
        <div class="col-12">
            <center>
            <asp:Label ID="Label1" runat="server" Text="Booking Not Found" ForeColor="Red" Font-Size="25" Font-Bold="True" Font-Italic="True"></asp:Label>
            </center>
 </div>
             </div>

         <div class="row">
        <div class="col-12">
            <center>
                  <asp:GridView ID="GridView1" class="tabel table-striped table-bordered " BorderColor="Black" BorderStyle="Ridge" BorderWidth="5px" CellSpacing="3"  runat="server"></asp:GridView>
                </center>
            </div>
         </div>

     <div class="row">
        <div class="col-12">
            <center >
                <asp:Label ID="Label2" runat="server" font-size="25" Text="Search Perticular Place Of  Booking" Font-Bold="True"></asp:Label>
                </center>
            </div>
         </div>
                    
 <div class="row">
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="col-4"> 
                    <asp:Image ID="Image6" runat="server"  src="images/location.jpg"  width="30" height="30" />&nbsp;<label>Place</label>   
                    <div class="form-group">         
           <asp:DropDownList  class="form-control"  ID="DropDownList1" runat="server" BorderColor="Black" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                       <asp:ListItem>---Select---</asp:ListItem>
                   </asp:DropDownList>
             </div>  
                </div>
     <div class="col-2">
              <label>Search</label> 
              <div class="form-group">
              <asp:Button ID="Button2" class="btn btn-outline-dark " BorderColor="Black" runat="server" Text="Search" OnClick="Button2_Click" />


              </div>
              </div>

                    </div>

 <div class="row">
        <div class="col-12">
          <center>
                  <asp:GridView ID="GridView2" class="tabel table-striped table-bordered " BorderColor="Black" BorderStyle="Ridge" BorderWidth="5px" CellSpacing="3"  runat="server"></asp:GridView>
                </center>
            </div>
         </div>

        <div class="row">
         &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp;
        <div class="col-12">
            <center>
            <asp:Label ID="Label3" runat="server" Text="No Booikng/Canceration Exits" ForeColor="Red" Font-Size="25" Font-Bold="True" Font-Italic="True"></asp:Label>
            </center>
 </div>
             </div>


  <div class="row">
        <div class="col-12">
            <center >
                <asp:Label ID="Label6" runat="server" font-size="25" Text="Search Only Canceled/Booked Booking " Font-Bold="True"></asp:Label>
                </center>
            </div>
         </div>

    <div class="row">
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="col-4"> 
                    <asp:Image ID="Image2" runat="server"  src="images/cance.jpg"  width="30" height="30" />&nbsp;<label>Booked/Cancel</label>   
                    <div class="form-group">         
           <asp:DropDownList  class="form-control"  ID="DropDownList2" runat="server" BorderColor="Black" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                       <asp:ListItem>---Select---</asp:ListItem>
                   </asp:DropDownList>
             </div>  
                </div>
     <div class="col-2">
              <label>Search</label> 
              <div class="form-group">
              <asp:Button ID="Button3" class="btn btn-outline-dark " BorderColor="Black" runat="server" Text="Search" />


              </div>
              </div>

                    </div>

 <div class="row">
        <div class="col-12">
          <center>
                  <asp:GridView ID="GridView3" class="tabel table-striped table-bordered " BorderColor="Black" BorderStyle="Ridge" BorderWidth="5px" CellSpacing="3"  runat="server" ></asp:GridView>
                </center>
            </div>
         </div>

        <div class="row">
         &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp;
        <div class="col-12">
            <center>
            <asp:Label ID="Label4" runat="server" Text="No Booking/Cancelation  Exits" ForeColor="Red" Font-Size="25" Font-Bold="True" Font-Italic="True"></asp:Label>
            </center>
 </div>
             </div>

  <div class="row">
        <div class="col-12">
            <center >
                <asp:Label ID="Label7" runat="server" font-size="25" Text="Search Only Paid/Refunded Amount" Font-Bold="True"></asp:Label>
                </center>
            </div>
         </div>

     <div class="row">
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="col-4"> 
                    <asp:Image ID="Image3" runat="server"  src="images/refund.jpg"  width="30" height="30" />&nbsp;<label>Paid/Refund</label>   
                    <div class="form-group">         
           <asp:DropDownList  class="form-control"  ID="DropDownList3" runat="server" BorderColor="Black" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" >
                       <asp:ListItem>---Select---</asp:ListItem>
                   </asp:DropDownList>
             </div>  
                </div>
     <div class="col-2">
              <label>Search</label> 
              <div class="form-group">
              <asp:Button ID="Button4" class="btn btn-outline-dark " BorderColor="Black" runat="server" Text="Search" />


              </div>
              </div>

                    </div>

 <div class="row">
        <div class="col-12">
          <center>
                  <asp:GridView ID="GridView4" class="tabel table-striped table-bordered " BorderColor="Black" BorderStyle="Ridge" BorderWidth="5px" CellSpacing="3"  runat="server"  ></asp:GridView>
                </center>
            </div>
         </div>

        <div class="row">
         &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp;
        <div class="col-12">
            <center>
            <asp:Label ID="Label5" runat="server" Text="No Payment Exits" ForeColor="Red" Font-Size="25" Font-Bold="True" Font-Italic="True"></asp:Label>
            </center>
 </div>
             </div>






     

</div>
                         </div>
                </div>
            </div>
         </div>
    

</asp:Content>
