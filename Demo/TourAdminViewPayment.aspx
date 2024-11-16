<%@ Page Title="" Language="C#" MasterPageFile="~/TourAdminHome.Master" AutoEventWireup="true" CodeBehind="TourAdminViewPayment.aspx.cs" Inherits="Demo.TourAdminViewPayment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="hrfor12.css" rel="stylesheet" />
         <div class="container">
        <div class="row">
            <div class="col-md-12 mx-auto">
                
                 <div class="card">
                     <div class="card-body">
                         <div class="row">
                             <div class="col">
                                <center>
                                     <asp:Image ID="image" class="rounded-circle" runat="server" ImageUrl="images/payment1.jpg" Height="100" Width="100" BorderStyle="Solid" BorderColor="black" />
                                </center>                              

                             </div>
                         </div>
                         <div class="row">
                             <div class="col">
                                <center>
                                    <h3>View Payment  Deatils</h3>
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
                         
                         <asp:GridView ID="GridView1" class="tabel table-striped table-bordered " runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1200px">
                             <AlternatingRowStyle BackColor="White" />
                             <Columns>
                                 <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                                 <asp:BoundField DataField="userid" HeaderText="userid" SortExpression="userid" />
                                 <asp:BoundField DataField="emailid" HeaderText="emailid" SortExpression="emailid" />
                                 <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
                                 <asp:BoundField DataField="cardnumber" HeaderText="cardnumber" SortExpression="cardnumber" />
                                 <asp:BoundField DataField="cvv" HeaderText="cvv" SortExpression="cvv" />
                                 <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                                 <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                                 <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                             </Columns>
                             <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                             <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                             <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                             <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                             <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                             <SortedAscendingCellStyle BackColor="#FDF5AC" />
                             <SortedAscendingHeaderStyle BackColor="#4D0000" />
                             <SortedDescendingCellStyle BackColor="#FCF6C0" />
                             <SortedDescendingHeaderStyle BackColor="#820000" />
                         </asp:GridView>





                        
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tourConnectionString %>" SelectCommand="SELECT * FROM [Payment]"></asp:SqlDataSource>





                        
                         </div>
                     </div>
                </div>
            </div>
             </div>
   
</asp:Content>
