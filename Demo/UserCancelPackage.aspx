<%@ Page Title="" Language="C#" MasterPageFile="~/UserHome.Master" AutoEventWireup="true" CodeBehind="UserCancelPackage.aspx.cs" Inherits="Demo.UserCancelPackage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="hrfor12.css" rel="stylesheet" />
   
    <div class="container">
        <div class="row">
            <div class="col-md-12mx-auto">
                 <div class="card">
                     <div class="card-body">
                         <div class="row">
                             <div class="col">
                                <center style="height: 119px">
                                    <asp:Image ID="image" class="rounded-circle" runat="server" ImageUrl="images/cancel booking.jpg" Height="100" Width="100" BorderStyle="Solid" BorderColor="black" />
                                </center>                              

                             <div class="col">
                                <center>
                                    <h3> View Booking/Cancel Booking</h3>
                                </center>                                 
                             </div>

                             </div>
                         </div>
                         <div class="row">
                         </div>
                         <div class="row">
                             <div class="col">

                               <center>
                                    <div id="line"><hr /></div>
                                </center>                               
                             </div>
                         </div>
                         
                         <br />
           <div class="row">
                &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp; 
              <div class="col-3"> 
                      &nbsp; 
              <asp:Image ID="Image1" runat="server"  src="images/mail.jpg"  width="30" height="30" /> &nbsp;<label>Emailid-Id</label> 
               <div class="form-group"> 
               <asp:TextBox ID="txtemailid" class="form-control" runat="server" BorderColor="Black" ReadOnly="True"></asp:TextBox>
              
             </div>
         </div>    
                &nbsp;  &nbsp;  &nbsp;   &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  
              <div class="col-4">
              <label>Show</label> 
              <div class="form-group">
              <asp:Button ID="Button1" class="btn btn-outline-success col-3 btn-lg " BorderColor="Black" runat="server" Text="Show" OnClick="Button1_Click"  />


              </div>
              </div>
               </div>
<br />
                         
            <asp:Label ID="Label1" runat="server" Text="Booking Details" Font-Size="20" Font-Bold="True"></asp:Label>              
             <div class="row">
              <div class="col-12">
                  <center>
                      <asp:GridView ID="GridView1"  class="tabel table-striped table-bordered " BorderColor="Black" BorderStyle="Ridge" BorderWidth="5px" CellSpacing="3"  runat="server"></asp:GridView>
                      </center>


                  </div>
                 </div>
                         <br />
                         <br />


        <div class="row"> 
             &nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
       <div class="col-5"> 
        <asp:Button ID="btncancel" class="btn btn-outline-danger col-6 btn-lg" BorderColor="Black" runat="server" Text="Cancel" OnClick="btncancel_Click"  />
                                            
           </div> 
          

          </div>

                         <br />
                         <br />
<asp:Label ID="Label2" runat="server" Text="Pament Details" Font-Size="20" Font-Bold="True"></asp:Label> 
   <div class="row">
              <div class="col-12">
                  <center>
                      <asp:GridView ID="GridView2"  class="tabel table-striped table-bordered " BorderColor="Black" BorderStyle="Ridge" BorderWidth="5px" CellSpacing="3"  runat="server"></asp:GridView>
                      </center>


                  </div>
                 </div>





                         </div>
                     </div>
                </div>
            </div>
        </div>
</asp:Content>
