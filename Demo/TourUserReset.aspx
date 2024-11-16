<%@ Page Title="" Language="C#" MasterPageFile="~/MainHeader.Master" AutoEventWireup="true" CodeBehind="TourUserReset.aspx.cs" Inherits="Demo.TourUserReset" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="hrfor6.css" rel="stylesheet" />
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                 <div class="card">
                     <div class="card-body">
                         <div class="row">
                             <div class="col">
                                <center>
                                   <asp:Image ID="image" class="rounded-circle" runat="server" ImageUrl="images/reset.jpg" Height="100" Width="100" BorderStyle="Solid" BorderColor="black" />
                                </center>                              

                             </div>
                         </div>
                         <div class="row">
                             <div class="col">
                                <center>
                                    <h3>Reset Password</h3>
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
                         <div class="row">
                             <div class="col">
                                   &nbsp; 
                                 <asp:Image ID="Image3" runat="server"  src="images/newpassword.jpg"  width="30" height="30"  />&nbsp;<asp:Label ID="Label1" runat="server" Text="New Password" Font-Bold="True"></asp:Label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtnpass" runat="server" placeholder="New Password" MinLength="6" TextMode="Password" BorderColor="Black" Font-Bold="True"></asp:TextBox>
                                 </div>
                                 <br />
                                   &nbsp; 
                                 <asp:Image ID="Image1" runat="server"  src="images/confirmpassword.jpg"  width="30" height="30"  />&nbsp;<asp:Label ID="Label2" runat="server" Text="Confirm Password" Font-Bold="True"></asp:Label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtcpass" runat="server" placeholder=" Confirm Password" MinLength="6" TextMode="Password" Font-Bold="True" BorderColor="Black"></asp:TextBox>
                                 </div>
                                 <br />
                                 <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnpass" ErrorMessage="Check Password" Font-Bold="True" Font-Italic="True" ForeColor="Red" ControlToValidate="txtcpass"></asp:CompareValidator>

                                  <div class="form-group">
                                      &nbsp
                                       &nbsp
                                       &nbsp
                                       &nbsp
                                      &nbsp
                                       &nbsp
                                       &nbsp
                                       &nbsp
                                      &nbsp
                                                                           
                                      <asp:Button class="btn btn-outline-success col-9 btn-lg  " ID="Button1" runat="server" Text="Reset" OnClick="Button1_Click" />
                                 </div>                                                   
                                 <br />
                                                             
                             </div>
                             
                         </div>
                         

                     </div>
                </div>   
                <asp:HyperLink ID="HyperLink1"  runat="server" NavigateUrl="~/TourUserLogin.aspx" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Black">Back To Login</asp:HyperLink>
                       
                
               </div>
           
        </div>
        
    </div>
</asp:Content>
