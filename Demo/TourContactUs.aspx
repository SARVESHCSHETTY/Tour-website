<%@ Page Title="" Language="C#" MasterPageFile="~/MainHeader.Master" AutoEventWireup="true" CodeBehind="TourContactUs.aspx.cs" Inherits="Demo.TourContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="TourContactUs.css" rel="stylesheet" />
    
    <div class="cover">
     <div class="content">
                
                <h2>Contact Us</h2>
                <p>A Unique Karnataka Tour Operator. We Offer Creative Guided Tours & Virtual Experiences. We are available 24 Hours a day on the phone. We also reply promptly. You have a way you would love to creatively experience Karnataka. Let's build the journey!</p>
            </div>
            <div class="container">
                <div class="contactInfo">
                    <div class="box">
                        <div class="icon"><i class="fa fa-map-marker" aria-hidden="true"></i></div>
                        <div class="text">
                            <h3>Address</h3>
                            <p>Ajjarkad Road,<br>Bramhagiri,Udupi<br>576210</p>
                        </div>
                    </div>
                    <div class="box">
                        <div class="icon"><i class="fa fa-phone" aria-hidden="true"></i></div>
                        <div class="text">
                            <h3>Phone</h3>
                            <p>8951231410</p>
                        </div>
                    </div>
                    <div class="box">
                        <div class="icon"><i class="fa-regular fa-envelope" aria-hidden="true"></i></div>
                        <div class="text">
                            <h3>Email</h3>
                            <p>sarveshshettybkr@gmail.com</p>
                        </div>
                    </div>
                </div>
                
     <div class="form">
    <h2>Holiday</h2>
    <asp:TextBox ID="txtname" label="Nmae"  CssClass="txt1 txtstyle" placeholder="Enter Your  Name" runat="server" ></asp:TextBox>
        <j class="far fa-user"></j> 
    <asp:TextBox ID="txtemailid" label="email"  CssClass="txt1 txtstyle" placeholder="Enter the Email hear" runat="server" ></asp:TextBox>
        <j class="far fa-envelope"></j>
         <center>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1"   
                CssClass="rev revstyle" runat="server" 
                ErrorMessage="Enter Valid Email" ControlToValidate="txtemailid" Font-Bold="True" 
                Font-Italic="True" Font-Size="10pt" ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="a"></asp:RegularExpressionValidator>
             </center>
     <asp:TextBox ID="txtsub" label="Subject"  CssClass="txt1 txtstyle" placeholder="Enter the Subject hear" runat="server" ></asp:TextBox>

     <asp:TextBox ID="txtmobile" label="Mobile"  CssClass="txt1 txtstyle" placeholder="Enter the Mobile Number" MaxLength="10" runat="server" ></asp:TextBox>
    <asp:TextBox Id="txtmsg" label="feedback"  CssClass="txt2 txtstyle" cols="15" rows="5" placeholder="Type your message here..." textmode="MultiLine" runat="server"></asp:TextBox>
        
    <asp:Button ID="btn1"  CssClass="btn1 btnstyle" runat="server" Text="Submit" OnClick="btn1_Click"   />

         <asp:Label ID="Label1" runat="server" Text="" ForeColor="#CCFFFF" ></asp:Label>
    
    </div>
        
     </div>
       
    </div>
               
</asp:Content>
