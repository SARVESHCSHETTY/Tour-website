<%@ Page Title="" Language="C#" MasterPageFile="~/TourAdminHome.Master" AutoEventWireup="true" CodeBehind="TourAdminAddPackage.aspx.cs" Inherits="Demo.TourAdminAddPackage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="hrfor8.css" rel="stylesheet" />
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                 <div class="card">
                     <div class="card-body">
                         <div class="row">
                             <div class="col">
                                <center>
                                   <asp:Image ID="image" class="rounded-circle" runat="server" ImageUrl="images/addpackahe.jpg" Height="100" Width="100" BorderStyle="Solid" BorderColor="black" />
                                </center>                              

                             </div>
                         </div>
                         <div class="row">
                             <div class="col">
                                <center>
                                    <h3> Add Package</h3>
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
                             <div class="col-md-6">                                                           
                                   &nbsp; 
                                 <asp:Image ID="Image3" runat="server"  src="images/id1.jpg"  width="30" height="30"  /> &nbsp;<label>Package-Id</label> 
                                 <div class="form-group">                           
                                   <asp:TextBox CssClass="form-control" ID="txtid" runat="server" placeholder="ID" BorderColor="Black" ReadOnly="True"></asp:TextBox>                                  
                                 </div>
                                 </div>                              
                           <div class="col-md-6">
                               &nbsp;
                                <asp:Image ID="Image1" runat="server"  src="images/location.jpg"  width="25" height="30"  /> &nbsp;<label>Place</label>                               
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtplace" runat="server" placeholder="Place" BorderColor="Black" ></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="! Please Fill Out This Field" Display="Dynamic" ControlToValidate="txtplace" Font-Size="Small" Font-Bold="True" ForeColor="Red"  Font-Italic="True"></asp:RequiredFieldValidator>
                                 </div>
                               </div>
                    

                   <div class="row">

                             <div class="col-md-6">
                                 <br />    
                                   &nbsp; 
                                 <asp:Image ID="Image4" runat="server"  src="images/description1.jpg"  width="30" height="30"  /> &nbsp;<label>Description</label> 
                                 <div class="form-group">                           
                                   <asp:TextBox CssClass="form-control" ID="txtdescription" runat="server" placeholder="Description" BorderColor="Black" TextMode="MultiLine"></asp:TextBox> 
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="! Please Fill Out This Field" Display="Dynamic" ControlToValidate="txtdescription" Font-Size="Small" Font-Bold="True" ForeColor="Red"  Font-Italic="True"></asp:RequiredFieldValidator>
                                 </div>
                                 </div>
                                 
                                 <div class="col-md-6">
                                     <br />    
                                  &nbsp; 
                                 <asp:Image ID="Image6" runat="server"  src="images/perperson2.jpg"  width="30" height="30"  /> &nbsp;<label>Perperson</label> 
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtperperson" runat="server" placeholder="Perperson" BorderColor="Black" ></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="! Please Fill Out This Field" Display="Dynamic" ControlToValidate="txtperperson" Font-Size="Small" Font-Bold="True" ForeColor="Red"  Font-Italic="True"></asp:RequiredFieldValidator>
                                 </div>
                                     </div>
                     </div>
                     

                      <div class="row">
                             <div class="col-md-6">
                                 <br />    
                                &nbsp; 
                                 <asp:Image ID="Image7" runat="server"  src="images/stayrupee1.jpg"  width="40" height="30"  /> &nbsp;<label>Stay amount</label> 
                                 <div class="form-group">                           
                                   <asp:TextBox CssClass="form-control" ID="txtstayamount" runat="server" placeholder="Stayamount" BorderColor="Black"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="! Please Fill Out This Field" Display="Dynamic" ControlToValidate="txtstayamount" Font-Size="Small" Font-Bold="True" ForeColor="Red"  Font-Italic="True"></asp:RequiredFieldValidator>
                                 </div>
                                 </div>
                               
                          <div class="col-md-6">
                              <br />    
                                 &nbsp; 
                                 <asp:Image ID="Image8" runat="server"  src="images/food.jpg"  width="30" height="30"  /> &nbsp;<label>Food amount</label> 
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtfoodamount" runat="server" placeholder="Foodamount"  BorderColor="Black"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="! Please Fill Out This Field" Display="Dynamic" ControlToValidate="txtfoodamount" Font-Size="Small" Font-Bold="True" ForeColor="Red"  Font-Italic="True"></asp:RequiredFieldValidator>
                                 </div>
                              </div>
                     </div>
               
                  <div class="row">
                             <div class="col-md-6">
                                 <br />    
                                 &nbsp; 
                                 <asp:Image ID="Image9" runat="server"  src="images/noofdays2.jpg"  width="40" height="30"  /> &nbsp;<label>No of days</label> 
                                 <div class="form-group">                           
                                   <asp:TextBox CssClass="form-control" ID="txtnoofdays" runat="server" placeholder="No Of Days" BorderColor="Black"></asp:TextBox>  
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="! Please Fill Out This Field" Display="Dynamic" ControlToValidate="txtnoofdays" Font-Size="Small" Font-Bold="True" ForeColor="Red"  Font-Italic="True"></asp:RequiredFieldValidator>
                                 </div>
                                 </div>
                                <div class="col-md-6">
                                    <br />    
                                  &nbsp; 
                                 <asp:Image ID="Image10" runat="server"  src="images/noofnights.jpg"  width="30" height="30"  /> &nbsp;<label>No of nights</label> 
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtnoofnights" runat="server" placeholder="No oF Nights" BorderColor="Black" ></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="! Please Fill Out This Field" Display="Dynamic" ControlToValidate="txtnoofnights" Font-Size="Small" Font-Bold="True" ForeColor="Red"  Font-Italic="True"></asp:RequiredFieldValidator>
                                 </div>
                                    </div>
               </div>
        
               <div class="row">
                             <div class="col-md-4">
                                 <br /> 
                                 &nbsp; 
                                 <asp:Image ID="Image5" runat="server"  src="images/new Bus.jpg"  width="30" height="30"  />  &nbsp;<label>Bus amount</label>                           
                                 <div class="form-group">                                                                                            
                                   <asp:TextBox CssClass="form-control" ID="txtbusamount" runat="server" placeholder="Busamount" BorderColor="Black"></asp:TextBox> 
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="! Please Fill Out This Field" Display="Dynamic" ControlToValidate="txtbusamount" Font-Size="Small" Font-Bold="True" ForeColor="Red"  Font-Italic="True"></asp:RequiredFieldValidator>
                                 </div>
                                 </div>
                                
                              <div class="col-md-4">
                                  <br />  
                                   &nbsp;
                                <asp:Image ID="Image2" runat="server"  src="images/car1.jpg"  width="40" height="30"  />&nbsp;<label>Car amount</label> 
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtcaramount" runat="server" placeholder="Caramount" BorderColor="Black" ></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="! Please Fill Out This Field" Display="Dynamic" ControlToValidate="txtcaramount" Font-Size="Small" Font-Bold="True" ForeColor="Red"  Font-Italic="True"></asp:RequiredFieldValidator>
                                 </div>
                                  </div>
                              <div class="col-md-4">
                                  <br />
                                    &nbsp; 
                                 <asp:Image ID="Image11" runat="server"  src="images/image1.jpg"  width="30" height="30"  /> &nbsp;<label>Image</label> 
                                 <div class="form-group">
                                
                                     <asp:FileUpload  CssClass="form-control"  BorderColor="Black"  ID="imageUpload" runat="server" />
                                     </div>
                                  </div>

                   </div>


                       <br />
                     <div class="row">
                     <div class="col-8 mx-auto">
                                  <br />
                                  <br />
                                <center>
                                  <div class="form-group">
                                      <asp:Button class="btn btn-outline-success  col-12 btn-lg" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"  BorderColor="Black" />
                                 </div>
                                 <br />
                                    </center>
                         </div>
                         </div>
                                     

                         </div>
                         </div>
                     </div>
                </div>
            </div>
        </div>
    
   

</asp:Content>
