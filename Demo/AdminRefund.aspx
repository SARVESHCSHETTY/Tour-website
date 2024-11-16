<%@ Page Title="" Language="C#" MasterPageFile="~/TourAdminHome.Master" AutoEventWireup="true" CodeBehind="AdminRefund.aspx.cs" Inherits="Demo.AdminRefund" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="hrfor10.css" rel="stylesheet" />
     <div class="container">
        <div class="row">
            <div class="col-md-10 mx-auto">
                 <div class="card">
                     <div class="card-body"> 
   
            <center> 
                <asp:Image ID="ProfilePicture" class="rounded-circle" runat="server" ImageUrl="images/Refund.jpg" Height="100" Width="100" BorderStyle="Solid" BorderColor="black" />
            </center>
                         <div class="row">
                             <div class="col">
                                <center>
                                    <h3>Refund Amount</h3>
                                    
                                </center>                                 
                             </div>
                         </div>
        
             &nbsp;

              <div class="row"> 
                <div class="col"> 
                        <div id="line"><hr /></div>
                </div> 

              </div> 
              
        <div class="row">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="col-4"> 
               <div class="form-group">         
                     <asp:Image ID="Image6" runat="server"  src="images/id2.jpg"  width="30" height="30" />&nbsp;<label>User-Id</label>  
           <div class="form-group"> 
             <asp:TextBox ID="txtid" class="form-control" runat="server" BorderColor="Black" ></asp:TextBox>
                <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="! Please Fill Out This Field" Display="Dynamic" ControlToValidate="txtid" Font-Size="Small" Font-Bold="True" ForeColor="Red"  Font-Italic="True"></asp:RequiredFieldValidator>
                                    --%>
             </div>  
                </div>  
        </div>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <div class="col-4">
              <label>Show</label> 
              <div class="form-group">
              <asp:Button ID="btnshow" class="btn btn-outline-success col-8 btn-lg " runat="server" Text="Show"   BorderColor="Black" OnClick="btnshow_Click"/>
              </div>
              </div>
       </div>

          <div class="row">
        <div class="col-4"> 
                      &nbsp; 
              <asp:Image ID="Image1" runat="server"  src="images/mail.jpg"  width="30" height="30" /> &nbsp;<label>E-mail</label> 
               <div class="form-group"> 
               <asp:TextBox ID="txtemailid" class="form-control" runat="server" BorderColor="Black" ReadOnly="True"></asp:TextBox>
               <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="! Please Fill Out This Field" Display="Dynamic" ControlToValidate="txtemailid" Font-Size="Small" Font-Bold="True" ForeColor="Red" Font-Italic="True" ></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemailid" ErrorMessage="Enter Proper Email Address" Font-Size="Small" Font-Bold="True" ForeColor="Red"  Display="Dynamic"  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Italic="True"></asp:RegularExpressionValidator>--%>

             </div>
         </div> 
               <div class="col-4"> 
                        &nbsp; 
                        <asp:Image ID="Image5" runat="server"  src="images/email%20icon.png"  width="20" height="20" /> &nbsp;<label> Credit Card Number</label> 
                        <div class="form-group"> 
                        <asp:TextBox ID="txtcardnumber"  class="form-control" runat="server" BorderColor="Black" ReadOnly="True" MaxLength="16"></asp:TextBox>
                            <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                              ControlToValidate="txtcardnumber" ErrorMessage="It Must Conatin 16 Digit" 
                                                 ValidationExpression="^{16}$"></asp:RegularExpressionValidator>--%>
        <br />       
                         </div>  
                        </div>

               <div class="col-4"> 
                        &nbsp; 
                        <asp:Image ID="Image2" runat="server"  src="images/email%20icon.png" BorderColor="Black"  width="20" height="20" /> &nbsp;<label>CVV</label> 
                        <div class="form-group"> 
                        <asp:TextBox ID="txtcvv"  class="form-control" BorderColor="Black"  runat="server" ReadOnly="True" MaxLength="3" ></asp:TextBox>
                           <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                              ControlToValidate="txtcvv" ErrorMessage="It Must Conatin 4 Digit" 
                                                 ValidationExpression="^{4}$"></asp:RegularExpressionValidator>--%>     
               
                         </div>  
                        </div>     

              </div>
                       <div class="row"> 
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <div class="col-4"> 
                        &nbsp; 
                        <asp:Image ID="Image7" runat="server"  src="images/date1.jpg"  width="30" height="30" /> &nbsp;<label> Expiry Date</label> 
                        <div class="form-group"> 
                        <asp:TextBox ID="txtexp"  class="form-control" runat="server"  ReadOnly="True" BorderColor="Black" ></asp:TextBox>                       
               
                         </div> 
                        </div>

                         </div>

                         
                         <div class="row"> 
                             &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp&nbsp &nbsp &nbsp&nbsp &nbsp &nbsp&nbsp &nbsp &nbsp&nbsp &nbsp &nbsp&nbsp &nbsp 
                       <div class="col-10"> 
                        &nbsp; 
                            <asp:Button ID="btnpay" class="btn btn-outline-success col-9 btn-lg" BorderColor="green" runat="server" Text="Pay" OnClick="btnpay_Click"   />
                           
                         </div>
                        </div>



                </div>
            </div>
         </div>
            </div>
         </div>
    
    

</asp:Content>
