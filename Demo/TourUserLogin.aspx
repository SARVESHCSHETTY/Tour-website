<%@ Page Title="" Language="C#" MasterPageFile="~/MainHeader.Master" AutoEventWireup="true" CodeBehind="TourUserLogin.aspx.cs" Inherits="Demo.TourUserLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="TourUserLogin.css" rel="stylesheet" />
   <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">

             <div class="Login">      
            <center>
                <asp:Image ID="image" class="rounded-circle" runat="server" ImageUrl="images/profile.jpg" Height="100" Width="100" BorderStyle="Solid" BorderColor="black" />
             </center>        
        <div class="inputBox">
            <i class="fa fa-envelope"></i>
            <asp:TextBox ID="txtemailid" CssClass="txt1 txtstyle" runat="server" placeholder="Email-id"></asp:TextBox>
            </div>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter a Valid Email Adress" ValidationGroup="a" ControlToValidate="txtemailid" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            
         
        <div class="inputBox">
            <i class="fa-solid fa-lock"></i>
            <asp:TextBox ID="txtpass" runat="server" CssClass="txt2 txtstyle" placeholder="password" TextMode="Password" MinLength="6"></asp:TextBox>           
        </div>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Correct Password" Font-Bold="True" Font-Italic="True" Font-Size="15" ControlToValidate="txtpass" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            
        <div class="inputBox" >
            <asp:Button ID="btn1" CssClass="btn1 btnstyle" runat="server" Text="Login" ValidationGroup="a" OnClick="btn1_Click" />
        </div>
         </br>
        <p class="link">Don't have an account?</p>
        <p class="link">
        <a href="TourSignUp.aspx">Sign up </a> </p>
         </div>
           
       
       
   
         <asp:HyperLink ID="HyperLink1"  runat="server" NavigateUrl="~/Tour Home.aspx" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Black">Back To Home</asp:HyperLink>
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        
        <asp:HyperLink ID="HyperLink2"  runat="server" NavigateUrl="~/TourUserForgot.aspx" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Black">Forgot Password?</asp:HyperLink>
   </div>
            </div>
    </div>


</asp:Content>
