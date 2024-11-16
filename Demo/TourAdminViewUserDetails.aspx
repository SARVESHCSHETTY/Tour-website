<%@ Page Title="" Language="C#" MasterPageFile="~/TourAdminHome.Master" AutoEventWireup="true" CodeBehind="TourAdminViewUserDetails.aspx.cs" Inherits="Demo.TourAdminViewUserDetails" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="hrfor10.css" rel="stylesheet" />
            <div class="container">
        <div class="row">
            <div class="col-md-10 mx-auto">
                
                 <div class="card">
                     <div class="card-body">
                         <div class="row">
                             <div class="col">
                                <center>
                                     <asp:Image ID="image" class="rounded-circle" runat="server" ImageUrl="images/user.jpg" Height="100" Width="100" BorderStyle="Solid" BorderColor="black" />
                                </center>                              

                             </div>
                         </div>
                         <div class="row">
                             <div class="col">
                                <center>
                                    <h3>View User Deatils</h3>
                                </center>                                 
                             </div>
                         </div>
                         <div class="row">
                             <div class="col">
                                <center>
                                     <div id="line"><hr /></div>
                                </center>                                
                             </div>
                         </div>
                         <br />

                         <center>
                         <asp:ListView ID="ListView1"  runat="server" DataKeyNames="userid" DataSourceID="SqlDataSource1">
                             <AlternatingItemTemplate>
                                 <li style="background-color: #FFFFFF;color: #284775;">userid:
                                     <asp:Label ID="useridLabel" runat="server" Text='<%# Eval("userid") %>' />
                                     <br />
                                     contact:
                                     <asp:Label ID="contactLabel" runat="server" Text='<%# Eval("contact") %>' />
                                     <br />
                                     username:
                                     <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                                     <br />
                                     emailid:
                                     <asp:Label ID="emailidLabel" runat="server" Text='<%# Eval("emailid") %>' />
                                     <br />
                                 </li>
                             </AlternatingItemTemplate>
                             <EditItemTemplate>
                                 <li style="background-color: #999999;">userid:
                                     <asp:Label ID="useridLabel1" runat="server" Text='<%# Eval("userid") %>' />
                                     <br />
                                     contact:
                                     <asp:TextBox ID="contactTextBox" runat="server" Text='<%# Bind("contact") %>' />
                                     <br />
                                     username:
                                     <asp:TextBox ID="usernameTextBox" runat="server" Text='<%# Bind("username") %>' />
                                     <br />
                                     emailid:
                                     <asp:TextBox ID="emailidTextBox" runat="server" Text='<%# Bind("emailid") %>' />
                                     <br />
                                     <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                     <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                 </li>
                             </EditItemTemplate>
                             <EmptyDataTemplate>
                                 No data was returned.
                             </EmptyDataTemplate>
                             <InsertItemTemplate>
                                 <li style="">userid:
                                     <asp:TextBox ID="useridTextBox" runat="server" Text='<%# Bind("userid") %>' />
                                     <br />
                                     contact:
                                     <asp:TextBox ID="contactTextBox" runat="server" Text='<%# Bind("contact") %>' />
                                     <br />
                                     username:
                                     <asp:TextBox ID="usernameTextBox" runat="server" Text='<%# Bind("username") %>' />
                                     <br />
                                     emailid:
                                     <asp:TextBox ID="emailidTextBox" runat="server" Text='<%# Bind("emailid") %>' />
                                     <br />
                                     <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                     <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                 </li>
                             </InsertItemTemplate>
                             <ItemSeparatorTemplate>
                                 <br />
                             </ItemSeparatorTemplate>
                             <ItemTemplate>
                                 <li style="background-color: #E0FFFF;color: #333333;">userid:
                                     <asp:Label ID="useridLabel" runat="server" Text='<%# Eval("userid") %>' />
                                     <br />
                                     contact:
                                     <asp:Label ID="contactLabel" runat="server" Text='<%# Eval("contact") %>' />
                                     <br />
                                     username:
                                     <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                                     <br />
                                     emailid:
                                     <asp:Label ID="emailidLabel" runat="server" Text='<%# Eval("emailid") %>' />
                                     <br />
                                 </li>
                             </ItemTemplate>
                             <LayoutTemplate>
                                 <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                                     <li runat="server" id="itemPlaceholder" />
                                 </ul>
                                 <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                                 </div>
                             </LayoutTemplate>
                             <SelectedItemTemplate>
                                 <li style="background-color: #E2DED6;font-weight: bold;color: #333333;">userid:
                                     <asp:Label ID="useridLabel" runat="server" Text='<%# Eval("userid") %>' />
                                     <br />
                                     contact:
                                     <asp:Label ID="contactLabel" runat="server" Text='<%# Eval("contact") %>' />
                                     <br />
                                     username:
                                     <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                                     <br />
                                     emailid:
                                     <asp:Label ID="emailidLabel" runat="server" Text='<%# Eval("emailid") %>' />
                                     <br />
                                 </li>
                             </SelectedItemTemplate>
                         </asp:ListView>


                             </center>
                         



                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tourConnectionString %>" SelectCommand="SELECT [userid], [contact], [username], [emailid] FROM [Registration]"></asp:SqlDataSource>



                         



                         </div>
                     </div>
                </div>

            </div>
                </div>
    
    </asp:Content>
