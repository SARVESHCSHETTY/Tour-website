<%@ Page Title="" Language="C#" MasterPageFile="~/UserHome.Master" AutoEventWireup="true" CodeBehind="TourFeedback.aspx.cs" Inherits="Demo.TourFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="feedback.css" rel="stylesheet" />
    <sction class="cover">
    
    <div class="form">
    <h2>FeedBack</h2>
    <asp:TextBox ID="txtname" label="Username"  CssClass="txt1 txtstyle" placeholder="Enter User Name" runat="server" ReadOnly="True"></asp:TextBox>
        <j class="far fa-user"></j> 
    <asp:TextBox ID="txtemailid" label="email"  CssClass="txt1 txtstyle" placeholder="Enter the Email hear" runat="server" ReadOnly="True"></asp:TextBox>
        <j class="far fa-envelope"></j>
    <asp:TextBox Id="txtmsg" label="feedback"  CssClass="txt2 txtstyle" cols="15" rows="5" placeholder="Enter your opinions here..." textmode="MultiLine" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmsg" ErrorMessage="Requierd"  Font-Bold="True" Font-Italic="True" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
        <asp:RadioButtonList ID="RadioButtonList1"   runat="server" ForeColor="#FF6600">
            <asp:ListItem>Super experience</asp:ListItem>
            <asp:ListItem>Good </asp:ListItem>
            <asp:ListItem>Should Be Better </asp:ListItem>
        </asp:RadioButtonList>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Requierd"  Font-Bold="True" Font-Italic="True" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
    <asp:Button ID="btn1"  CssClass="btn1 btnstyle" runat="server" Text="Submit" OnClick="btn1_Click"  ValidationGroup="a" />
    
    </div>
        </sction>
    
</asp:Content>
