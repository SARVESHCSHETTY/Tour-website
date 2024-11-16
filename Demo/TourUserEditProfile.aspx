<%@ Page Title="" Language="C#" MasterPageFile="~/UserHome.Master" AutoEventWireup="true" CodeBehind="TourUserEditProfile.aspx.cs" Inherits="Demo.TourUserEditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="hrfor8.css" rel="stylesheet" />
     <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                 <div class="card">
                     <div class="card-body"> 
   
            <center> 
                <asp:Image ID="ProfilePicture" class="rounded-circle" runat="server" ImageUrl="images/user1.jpg" Height="100" Width="100" BorderStyle="Solid" BorderColor="black" />
            </center>
                         <div class="row">
                             <div class="col">
                                <center>
                                    <h3>User Profile</h3>
                                    <span>Account Status - </span>
                                    <asp:Label  class="badge text-bg-success" ID="Label3" runat="server" Text="Active"></asp:Label>
                                </center>                                 
                             </div>
                         </div>
        
             &nbsp;
               
              <div class="row"> 
                <div class="col"> 
                         <div id="line"><hr /></div>
                </div> 

              </div> 
                         &nbsp;


     <div class="row"> 
        <div class="col-4"> 
             &nbsp; 
          <asp:Image ID="Image2" runat="server"  src="images/name.jpg"  width="30" height="30" /> &nbsp;<label>Name</label> 
           <div class="form-group"> 
             <asp:TextBox ID="txtname" class="form-control" runat="server" BorderColor="Black" placeholder="Enter your Name" ></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="! Please Fill Out This Field" Display="Dynamic" ControlToValidate="txtname" Font-Size="Small" Font-Bold="True" ForeColor="Red"  Font-Italic="True"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtname" ErrorMessage="Only Alphabets " Font-Bold="True" Font-Italic="True" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[a-zA-Z ]*$" ValidationGroup="a"></asp:RegularExpressionValidator> 
             </div>  
             </div>

        <div class="col-4"> 
             &nbsp; 
              <asp:Image ID="Image1" runat="server"  src="images/mail.jpg"  width="30" height="30" /> &nbsp;<label>E-mail</label> 
               <div class="form-group"> 
               <asp:TextBox ID="txtemailid" class="form-control" runat="server" BorderColor="Black" placeholder="Enter your emailid"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="! Please Fill Out This Field" Display="Dynamic" ControlToValidate="txtemailid" Font-Size="Small" Font-Bold="True" ForeColor="Red" Font-Italic="True" ></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemailid" ErrorMessage="Enter Proper Email Address" Font-Size="Small" Font-Bold="True" ForeColor="Red"  Display="Dynamic"  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Italic="True"></asp:RegularExpressionValidator>

                </div>  
         </div>

        <div class="col-4"> 
                 &nbsp; 
       <asp:Image ID="Image3" runat="server" src="images/phone.jpg" width="30" height="30" /> &nbsp;<label>Mobile Number</label> 
            <div class="form-group"> 
                 <asp:TextBox ID="txtcontact" class="form-control" runat="server" BorderColor="Black" placeholder="Enter Your Mobile Number" MaxLength="10"></asp:TextBox> 
               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="! Please Fill Out This Field" Display="Dynamic" ControlToValidate="txtcontact" Font-Size="Small" Font-Bold="True" ForeColor="Red" Font-Italic="True"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtcontact" ErrorMessage="Enter Corect Digit Of size 10" Font-Size="Small" Font-Bold="True" ForeColor="Red" ValidationExpression="^[0-9]{10}$" Display="Dynamic" Font-Italic="True"></asp:RegularExpressionValidator>
                                  
                </div>  
      </div>
    </div>
    &nbsp;
     <div class="row"> 
       
  
        <div class="col-4"> 
                 &nbsp; 
           <asp:Image ID="Image4" runat="server"  src="images/newpassword.jpg"  width="30" height="30" /> &nbsp;<label>New Password</label> 
             <div class="form-group"> 
             <asp:TextBox ID="txtnpass" class="form-control" runat="server" BorderColor="Black" placeholder="New Password" MinLength="6" TextMode="Password"></asp:TextBox>                                 
               </div>  
           </div>
         &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

        <div class="col-4"> 
             &nbsp; 
          <asp:Image ID="Image5" runat="server"  src="images/confirmpassword.jpg"  width="30" height="30" /> &nbsp;<label>Confirm Password</label> 
           <div class="form-group"> 
              <asp:TextBox ID="txtcpass" class="form-control" runat="server" BorderColor="Black" placeholder="Confirm  Password" MinLength="6" TextMode="Password"></asp:TextBox> 
                  <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Wrong Password" Font-Bold="True" Font-Size="Small" ControlToCompare="txtnpass" ControlToValidate="txtcpass" ForeColor="Red" Display="Dynamic" Font-Italic="True"></asp:CompareValidator>                                   
              </div>  
        </div> 
    </div> 
<br />
 <br />

    
    <div class="row"> 

       <div class="col"> 
           &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

        <asp:Button ID="btnupdate" class="btn btn-outline-warning col-6 btn-lg" BorderColor="Black" runat="server" Text="Update" OnClick="btnupdate_Click"  />
                                            
           </div> 

          </div>
     </div> 
     </div> 
    </div>
  </div>
 </div>
    


</asp:Content>
