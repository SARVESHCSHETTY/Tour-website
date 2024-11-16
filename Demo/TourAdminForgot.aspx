<%@ Page Title="" Language="C#" MasterPageFile="~/MainHeader.Master" AutoEventWireup="true" CodeBehind="TourAdminForgot.aspx.cs" Inherits="Demo.TourAdminForgot" %>
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
                                    <asp:Image ID="image" class="rounded-circle" runat="server" ImageUrl="images/forgotpass1.jpg" Height="100" Width="100" BorderStyle="Solid" BorderColor="black" />
                                </center>                              

                             </div>
                         </div>
                         <div class="row">
                             <div class="col">
                                <center>
                                    <h3>Forgot Password</h3>
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
                             <div class="col-md-9">

                                 &nbsp; 
                                 <asp:Image ID="Image3" runat="server"  src="images/mail.jpg"  width="30" height="30"  />&nbsp;<asp:Label ID="Label3" runat="server" Text="Admin Email-id" Font-Bold="True"></asp:Label>
                                 <div class="form-group">
                                     <%--<i class="fa fa-envelope"></i>--%>
                                     <asp:TextBox CssClass="form-control" ID="txtemailid" runat="server" placeholder="Email-id " BorderColor="Black" Font-Bold="True"></asp:TextBox>
                                 </div>
                              </div>                                                       
               
                             <div class="col-md-3">
                                 <br />
                                 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                 <asp:Button ID="btnotp" CssClass="btn btn-outline-info" runat="server" Text="Send OTP" OnClick="btnotp_Click"  />                              
                         </div>
                             </div>
                          <div class="row">
                             <div class="col-md-9">
                                  &nbsp; 
                                 <asp:Image ID="Image1" runat="server"  src="images/otp.jpg"  width="30" height="30"  />&nbsp<asp:Label ID="Label2" runat="server" Text="Enter OTP" Font-Bold="True"></asp:Label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtotp" runat="server" placeholder="otp" BorderColor="Black" Font-Bold="True"></asp:TextBox>
                                 </div>
                                 <br />
                                 
                                  <div class="form-group">
                                       &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                      
                                      <asp:Button  class="btn btn-outline-success col-9 btn-lg" ID="btnverify" runat="server" Text="Verify" OnClick="btnverify_Click"/>
                                      <asp:Label ID="Label4" runat="server"></asp:Label>
                                          
                                 </div>
                        
                                
                                 
                                                             
                             </div>
                              </div>
                         <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
                             
                         
                         

                     </div>
                </div>       
                
         <asp:HyperLink ID="HyperLink1"  runat="server" NavigateUrl="~/TourAdminLogin.aspx" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Black">Back To Login</asp:HyperLink>
       <%-- &nbsp
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
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        &nbsp
        
        <asp:HyperLink ID="HyperLink2"  runat="server" NavigateUrl="TourUserReset.aspx" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Black">Reset Password</asp:HyperLink>
            --%>
   </div>   
             
               
           
           </div>
        </div>
</asp:Content>
