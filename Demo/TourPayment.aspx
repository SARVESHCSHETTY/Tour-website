<%@ Page Title="" Language="C#" MasterPageFile="~/UserHome.Master" AutoEventWireup="true" CodeBehind="TourPayment.aspx.cs" Inherits="Demo.TourPayment" %>
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
                <asp:Image ID="ProfilePicture" class="rounded-circle" runat="server" ImageUrl="images/payment1.jpg" Height="100" Width="100" BorderStyle="Solid" BorderColor="black" />
            </center>
                         <div class="row">
                             <div class="col">
                                <center>
                                    <h3>Payment</h3>
                                    
                                </center>                                 
                             </div>
                         </div>
        
             &nbsp;
               
              <div class="row"> 
                <div class="col"> 
                        <div id="line"><hr /></div>
                </div> 

              </div> 
                         <br />
         <div class="row">
         &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
        <div class="col-4"> 
              <asp:Image ID="Image1" runat="server"  src="images/mail.jpg"  width="30" height="30" />    &nbsp;<label>E-mail</label> 
               <div class="form-group"> 
               <asp:TextBox ID="txtemailid" class="form-control" runat="server" BorderColor="Black" ReadOnly="True"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="! Please Fill Out This Field" Display="Dynamic" ControlToValidate="txtemailid" Font-Size="Small" Font-Bold="True" ForeColor="Red" Font-Italic="True" ></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemailid" ErrorMessage="Enter Proper Email Address" Font-Size="Small" Font-Bold="True" ForeColor="Red"  Display="Dynamic"  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Italic="True"></asp:RegularExpressionValidator>

             </div>
         </div> 
             </div>

         <br />
     <div class="row"> 
         <div class="col-4"> 
             &nbsp; 
              <asp:Image ID="Image3" runat="server"  src="images/id2.jpg"  width="30" height="30" /> &nbsp;<label>User-Id</label> 
               <div class="form-group"> 
               <asp:TextBox ID="txtid" class="form-control" BorderColor="Black" runat="server" ReadOnly="True"></asp:TextBox>
               
                </div>  
         </div>

        <div class="col-4"> 
             &nbsp; 
          <asp:Image ID="Image2" runat="server"  src="images/name1.jpg"  width="30" height="30" /> &nbsp;<label>Name</label> 
           <div class="form-group"> 
             <asp:TextBox ID="txtusername" class="form-control" BorderColor="Black" runat="server"  ReadOnly="True"></asp:TextBox>
                
             </div>  
             </div>

        

        <div class="col-4"> 
                 &nbsp; 
       <asp:Image ID="Image4" runat="server" src="images/phone.jpg" width="30" height="30" /> &nbsp;<label>Mobile Number</label> 
            <div class="form-group"> 
                 <asp:TextBox ID="txtphone" class="form-control" runat="server" BorderColor="Black" ReadOnly="True"></asp:TextBox> 
              
      </div>  
      </div>
    </div>
                         <br />
              <div class="row">
                  <div class="col-md-8 mx-auto">
                 <div class="card" > 
                     <div class="card-body">
                         <asp:Label ID="Label1" runat="server" Text="Credit Card" Font-Size="30"></asp:Label>
                         <br />
                         <br />

                        <div class="row"> 
                       <div class="col-8"> 
                        &nbsp; 
                        <asp:Image ID="Image5" runat="server"  src="images/email%20icon.png"  width="20" height="20" /> &nbsp;<label>Enter Credit Card Number</label> 
                        <div class="form-group"> 
                        <asp:TextBox ID="txtcardnumber" BorderColor="Black" placeholder="xxxx xxxx xxxx xxxx" class="form-control" runat="server" MinLength="16" MaxLength="16" ></asp:TextBox>
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtcardnumber" ErrorMessage="Only Number" Font-Bold="True" Font-Italic="True" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="! Please Fill Out This Field" Display="Dynamic" ControlToValidate="txtcardnumber" Font-Size="Small" Font-Bold="True" ForeColor="Red" Font-Italic="True" ValidationGroup="a"></asp:RequiredFieldValidator>
        <br />
               
                         </div>  
                        </div>
                            </div>
                          
                       
                          <div class="row"> 
                       <div class="col-8"> 
                        &nbsp; 
                        <asp:Image ID="Image6" runat="server"  src="images/email%20icon.png"  width="20" height="20" /> &nbsp;<label>Enter Your Card Verification Value</label> 
                        <div class="form-group"> 
                        <asp:TextBox ID="txtcvv" placeholder="CVV" BorderColor="Black" class="form-control" runat="server" MinLength="3"  MaxLength="3" ></asp:TextBox>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtcvv" ErrorMessage="Only Number" Font-Bold="True" Font-Italic="True" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="! Please Fill Out This Field" Display="Dynamic" ControlToValidate="txtcvv" Font-Size="Small" Font-Bold="True" ForeColor="Red" Font-Italic="True" ValidationGroup="a"></asp:RequiredFieldValidator>
       
      
                         </div>  
                        </div>
                              <div class="col-3"> 
                             <asp:Image ID="Image9" runat="server"   src="images/creditcard1.jpg"  width="120" height="100" />
                                  </div>
                        </div>
                         


                         <div class="row"> 
                       <div class="col-8"> 
                        &nbsp; 
                        <asp:Image ID="Image7" runat="server"  src="images/date1.jpg"  width="30" height="30" /> &nbsp;<label>Enter Expiry Date</label> 
                        <div class="form-group"> 
                        <asp:TextBox ID="txtexp"  class="form-control" BorderColor="Black" runat="server" MaxLength="5"></asp:TextBox> <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="! Please Fill Out This Field" Display="Dynamic" ControlToValidate="txtexp" Font-Size="Small" Font-Bold="True" ForeColor="Red" Font-Italic="True" ValidationGroup="a"></asp:RequiredFieldValidator>
        <br />
               
                         </div>  
                        </div>
                        </div>
                         </div>
                     </div>
                      </div>
                 </div>

                <br />

                         <div class="row"> 
                             &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp&nbsp &nbsp &nbsp
                       <div class="col-3"> 
                        &nbsp; 
                            <asp:Image ID="Image8" runat="server" src="images/stayrupee.jpg" width="30" height="30" /> &nbsp;<label>Total Amount</label> 
                          <div class="form-group"> 
                          <asp:TextBox ID="txttotal" class="form-control" runat="server" BorderColor="Black" ReadOnly="True"></asp:TextBox> 
                         </div>
                           </div>
                             </div>
                         
                         <br />
                         <div class="row"> 
                             &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp&nbsp &nbsp &nbsp&nbsp &nbsp &nbsp&nbsp &nbsp &nbsp&nbsp &nbsp &nbsp&nbsp &nbsp 
                       <div class="col-10"> 
                        &nbsp; 
                            <asp:Button ID="btnpay" class="btn btn-outline-success col-9 btn-lg" BorderColor="Black" runat="server" Text="Pay" OnClick="btnpay_Click"  ValidationGroup="a" />
                           
                         </div>
                             </div>

           
                    </div>
                </div>
            </div>
             </div>
    </div>
    

</asp:Content>
