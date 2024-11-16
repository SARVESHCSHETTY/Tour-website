<%@ Page Title="" Language="C#" MasterPageFile="~/MainHeader.Master" AutoEventWireup="true" CodeBehind="TourAdminLogin.aspx.cs" Inherits="Demo.TourAdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="TourAdminLogin.css" rel="stylesheet" />
      
<section class="cover">
   <div>
        <asp:Image ID="Image1"   src="images/Panel%20copy.png" runat="server"></asp:Image>
        <div class="elements">
        <div class="intro">
            <asp:Label ID="Label1"  runat="server" CssClass="lbl lblstyle" Text="Login"></asp:Label>            
            <asp:TextBox ID="txtemailid"  CssClass="txt1 txtstyle"  placeholder="Enter Email id" runat="server"></asp:TextBox>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1"   
                CssClass="rev revstyle" runat="server" 
                ErrorMessage="Enter Valid Email" ControlToValidate="txtemailid" Font-Bold="True" 
                Font-Italic="True" Font-Size="18pt" ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="a"></asp:RegularExpressionValidator>
            <asp:TextBox ID="txtpass" CssClass="txt2 txtstyle"  placeholder="Enter Password" TextMode="Password" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" CssClass="btn1 btnstyle" runat="server" Text="Login" ValidationGroup="a" OnClick="Button1_Click"></asp:Button>
            <br />
            <br />
             <asp:HyperLink ID="HyperLink1"  runat="server" NavigateUrl="~/Tour Home.aspx" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="White">Back To Home</asp:HyperLink>
       
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
       
        
        <asp:HyperLink ID="HyperLink2"  runat="server" NavigateUrl="~/TourAdminForgot.aspx" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="White">Forgot Password?</asp:HyperLink>
   
 
        </div>

        </div>

   </div>
   </section>
    
</asp:Content>
