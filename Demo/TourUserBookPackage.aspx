<%@ Page Title="" Language="C#" MasterPageFile="~/UserHome.Master" AutoEventWireup="true" CodeBehind="TourUserBookPackage.aspx.cs" Inherits="Demo.TourUserBookPackage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="hrfor10.css" rel="stylesheet" />
     <div class="container">
        <div class="row">
            <div class="col-md-10 mx-auto">
                 <div class="card">
                     <iv class="card-body"> 
   
            <center> 
                <asp:Image ID="ProfilePicture" class="rounded-circle" runat="server" ImageUrl="images/booking1.jpg" Height="100" Width="100" BorderStyle="Solid" BorderColor="black" />
            </center>
                         <div class="row">
                             <div class="col">
                                <center>
                                    <h3>Book Package</h3>
                                    
                                </center>                                 
                             </div>
                         </div>
        
             &nbsp;

            <div class="row"> 
                <div class="col"> 
                        <div id="line"><hr /></div>
                </div> 

              </div> 
               
             &nbsp
                         &nbsp;


     <div class="row">
        <div class="col-4"> 
                      &nbsp; 
              <asp:Image ID="Image1" runat="server"  src="images/mail.jpg"  width="30" height="30" /> &nbsp;<label>E-mail</label> 
               <div class="form-group"> 
               <asp:TextBox ID="txtemailid" class="form-control" runat="server" BorderColor="Black" ReadOnly="True"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="! Please Fill Out This Field" Display="Dynamic" ControlToValidate="txtemailid" Font-Size="Small" Font-Bold="True" ForeColor="Red" Font-Italic="True" ></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemailid" ErrorMessage="Enter Proper Email Address" Font-Size="Small" Font-Bold="True" ForeColor="Red"  Display="Dynamic"  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Italic="True"></asp:RegularExpressionValidator>

             </div>
         </div>                                
            &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  
        <div class="col-3">
           <asp:Image ID="Image11" runat="server"  src="images/location.jpg"  width="30" height="30" /> &nbsp; <label>Place</label> 
               <div class="form-group">
                   <asp:DropDownList  class="form-control"  ID="DropDownList1" runat="server" BorderColor="Black" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                       <asp:ListItem>---Select---</asp:ListItem>
                   </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="DropDownList1" ErrorMessage="Requierd" 
            InitialValue="---Select---" Font-Bold="True" Font-Italic="True" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>

                   </div>
            </div>

          <div class="col-1">
              <label>Show</label> 
              <div class="form-group">
              <asp:Button ID="Button1" class="btn btn-outline-success " BorderColor="Black" runat="server" Text="Show" />


              </div>
              </div>


         </div>
    <br />

          <div class="row">
                <div class="col-4"> 
               <div class="form-group">         
                     <asp:Image ID="Image6" runat="server"  src="images/id1.jpg"  width="30" height="30" />&nbsp;<label>Package Id</label>  
           <div class="form-group"> 
             <asp:TextBox ID="txtid" class="form-control" runat="server" BorderColor="Black" ReadOnly="True" required ></asp:TextBox>
                <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="! Please Fill Out This Field" Display="Dynamic" ControlToValidate="txtid" Font-Size="Small" Font-Bold="True" ForeColor="Red"  Font-Italic="True"></asp:RequiredFieldValidator>
                                    --%>
             </div>  
                </div>  
        </div>
                       

        <div class="col-4"> 
                 &nbsp; 
       <asp:Image ID="Image7" runat="server" src="images/noofdays2.jpg" width="30" height="30" /> &nbsp;<label>No Of Days</label> 
            <div class="form-group"> 
                 <asp:TextBox ID="txtnoofdays" class="form-control" runat="server" BorderColor="Black"  ReadOnly="True" required ></asp:TextBox> 
<%--               <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="! Please Fill Out This Field" Display="Dynamic" ControlToValidate="txtnoofdays" Font-Size="Small" Font-Bold="True" ForeColor="Red" Font-Italic="True"></asp:RequiredFieldValidator>
                 --%>
                </div>  
      </div>

        <div class="col-4"> 
                 &nbsp; 
       <asp:Image ID="Image8" runat="server" src="images/noofnights.jpg" width="30" height="30" /> &nbsp;<label>No Of Nights</label> 
            <div class="form-group"> 
                 <asp:TextBox ID="txtnoofnights" class="form-control" runat="server" BorderColor="Black"  ReadOnly="True" required ></asp:TextBox> 
               <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="! Please Fill Out This Field" Display="Dynamic" ControlToValidate="txtnoofnights" Font-Size="Small" Font-Bold="True" ForeColor="Red" Font-Italic="True"></asp:RequiredFieldValidator>
                 --%>
                </div>  
      </div>

               
      </div>

 <br />

         <div class="row">
             <div class="col-3">
            <asp:Image ID="Image9" runat="server"  src="images/perperson2.jpg"  width="30" height="30" /> &nbsp;<label>No Of Persons</label> 
           <div class="form-group"> 
               <asp:DropDownList  class="form-control" ID="dperson" runat="server" BorderColor="Black" OnSelectedIndexChanged="dperson_SelectedIndexChanged" >
                   <asp:ListItem>---Select---</asp:ListItem>
                   <asp:ListItem>1</asp:ListItem>
                   <asp:ListItem>2</asp:ListItem>
                   <asp:ListItem>3</asp:ListItem>
                   <asp:ListItem>4</asp:ListItem>
                   <asp:ListItem>5</asp:ListItem>
                   <asp:ListItem>6</asp:ListItem>
                   <asp:ListItem>7</asp:ListItem>
                   <asp:ListItem>8</asp:ListItem>
                   <asp:ListItem>9</asp:ListItem>
                   <asp:ListItem>10</asp:ListItem>
                   <asp:ListItem>11</asp:ListItem>
                   <asp:ListItem>12</asp:ListItem>
                   <asp:ListItem>13</asp:ListItem>
                   <asp:ListItem>14</asp:ListItem>
                   <asp:ListItem>15</asp:ListItem>
                   <asp:ListItem>16</asp:ListItem>
                   <asp:ListItem>17</asp:ListItem>
                   <asp:ListItem>18</asp:ListItem>
                   <asp:ListItem>19</asp:ListItem>
                   <asp:ListItem>20</asp:ListItem>
               </asp:DropDownList> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="dperson" ErrorMessage="Requierd" InitialValue="---Select---" Font-Bold="True" Font-Italic="True" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
             </div>  
                </div> 

              <div class="col-1">
              <label>Show</label> 
              <div class="form-group">
              <asp:Button ID="Button2" class="btn btn-outline-success " runat="server" Text="Show"  BorderColor="Black"/>
              </div>
              </div>


        <div class="col-4">
            <asp:Image ID="Image2" runat="server"  src="images/stayrupee1.jpg"  width="30" height="30" /> &nbsp;<label>Stay Amount</label> 
           <div class="form-group"> 
             <asp:TextBox ID="txtstayamount" class="form-control" runat="server" BorderColor="Black" ReadOnly="True" required ></asp:TextBox>
                 <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="! Please Fill Out This Field" Display="Dynamic" ControlToValidate="txtstayamount" Font-Size="Small" Font-Bold="True" ForeColor="Red"  Font-Italic="True"></asp:RequiredFieldValidator>--%>                               
             </div>  
                </div>
             
                           
        <div class="col-4"> 
       <asp:Image ID="Image3" runat="server" src="images/food.jpg" width="30" height="30" /> &nbsp;<label>Food Amount</label> 
            <div class="form-group">  
                 <asp:TextBox ID="txtfoodamount" class="form-control" runat="server" BorderColor="Black"  ReadOnly="True" required ></asp:TextBox> 
              <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="! Please Fill Out This Field" Display="Dynamic" ControlToValidate="txtfoodamount" Font-Size="Small" Font-Bold="True" ForeColor="Red" Font-Italic="True"></asp:RequiredFieldValidator>--%>
                 
                                  
                </div>  
      </div>
            </div>
           <br />
                         

    &nbsp;
     <div class="row"> 
        <div class="col-3"> 
         <asp:Image ID="Image12" runat="server" src="images/new bus.jpg" width="30" height="30" /><b style="font-size: large">[20]</b> <asp:Image ID="Image14" runat="server" src="images/line.jpg" width="15" height="30" /> <asp:Image ID="Image13" runat="server" src="images/car1.jpg" width="30" height="30" /><b style="font-size: large">[6]</b> &nbsp;  <label>Vehical</label> 
                 &nbsp; 
           <asp:RadioButtonList ID="RadioButtonList1" class="form-control" runat="server" BorderColor="Black" RepeatDirection="Horizontal">
               <asp:ListItem>Bus</asp:ListItem>
               <asp:ListItem>Car</asp:ListItem>
                 </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="RadioButtonList1" ErrorMessage="Requierd" 
             Font-Bold="True" Font-Italic="True" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            
               </div>  
            <div class="col-1">
              <label>Show</label> 
              <div class="form-group">
              <asp:Button ID="Button3" class="btn btn-outline-success " runat="server" BorderColor="Black" Text="Show" OnClick="Button3_Click" />
              </div>
              </div>
        

        <div class="col-4"> 
             &nbsp; 
          <asp:Image ID="Image5" runat="server"  src="images/vehicalamount.jpg"  width="40" height="30" /> &nbsp;<label>Vehical Amount</label> 
           <div class="form-group"> 
              <asp:TextBox ID="txtvehicalamount" class="form-control" runat="server" BorderColor="Black"  CausesValidation="True" ReadOnly="True" required ></asp:TextBox>                                  
              </div>  
        </div>

 <div class="col-4"> 
             &nbsp; 
          <asp:Image ID="Image4" runat="server"  src="images/date1.jpg"  width="30" height="30" /> &nbsp;<label>Date</label> 
           <div class="form-group"> 
              <asp:TextBox ID="txtdate" class="form-control" runat="server" TextMode="Date" BorderColor="Black"   ></asp:TextBox> 
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="! Please Fill Out This Field" Display="Dynamic" ControlToValidate="txtdate" Font-Size="Small" Font-Bold="True" ForeColor="Red" Font-Italic="True" ValidationGroup="a"></asp:RequiredFieldValidator>
                 
                 
              </div>  
        </div>
        


         
    </div> 
<br />
       <div class="row"> 
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
       <div class="col-4"> 
          <asp:Image ID="Image10" runat="server"  src="images/stayrupee.jpg"  width="30" height="30" /> <label>Total Amount</label> 
           <div class="form-group"> 
              <asp:TextBox ID="txttotalamount"  class="form-control" runat="server" BorderColor="Black" ReadOnly="True" ></asp:TextBox>   
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="! Please Fill Out This Field" Display="Dynamic" ControlToValidate="txttotalamount" Font-Size="Small" Font-Bold="True" ForeColor="Red" Font-Italic="True" ValidationGroup="a"></asp:RequiredFieldValidator>                         
           </div> 

          </div>
     </div>
                   
     <br />

    
    <div class="row"> 

       <div class="col"> 
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

        <asp:Button ID="btnBook" class="btn btn-outline-success col-6 btn-lg" BorderColor="Black" runat="server" Text="Book" OnClick="btnBook_Click"  ValidationGroup="a" />
                                            
           </div> 

          </div>
     </div> 
     </div> 
    </div>
  </div>
 
         
    
</asp:Content>
