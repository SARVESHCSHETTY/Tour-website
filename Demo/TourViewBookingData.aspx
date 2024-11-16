<%@ Page Title="" Language="C#" MasterPageFile="~/TourAdminHome.Master" AutoEventWireup="true" CodeBehind="TourViewBookingData.aspx.cs" Inherits="Demo.TourViewBookingData" %>
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
                                    <asp:Image ID="image" class="rounded-circle" runat="server" ImageUrl="images/booked.jpg" Height="100" Width="100" BorderStyle="Solid" BorderColor="black" />
                                </center>                              

                             </div>
                         </div>
                         <div class="row">
                             <div class="col">
                                <center>
                                    <h3>View Booking  Deatils</h3>
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
                             <asp:GridView ID="GridView1" class="tabel table-striped table-bordered " runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource2" ForeColor="Black" Width="1250px" >
                                 <Columns>
                                     <asp:BoundField DataField="emailid" HeaderText="emailid" SortExpression="emailid" />
                                     <asp:BoundField DataField="place" HeaderText="place" SortExpression="place" />
                                     <asp:BoundField DataField="packageid" HeaderText="packageid" SortExpression="packageid" />
                                     <asp:BoundField DataField="perpersons" HeaderText="perpersons" SortExpression="perpersons" />
                                     <asp:BoundField DataField="stayamount" HeaderText="stayamount" SortExpression="stayamount" />
                                     <asp:BoundField DataField="foodamount" HeaderText="foodamount" SortExpression="foodamount" />
                                     <asp:BoundField DataField="noofdays" HeaderText="noofdays" SortExpression="noofdays" />
                                     <asp:BoundField DataField="noofnights" HeaderText="noofnights" SortExpression="noofnights" />
                                     <asp:BoundField DataField="vehicleamount" HeaderText="vehicleamount" SortExpression="vehicleamount" />
                                     <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                                     <asp:BoundField DataField="totalamount" HeaderText="totalamount" SortExpression="totalamount" />
                                     <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                                 </Columns>
                                 <FooterStyle BackColor="#CCCCCC" />
                                 <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                 <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                 <RowStyle BackColor="White" />
                                 <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                 <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                 <SortedAscendingHeaderStyle BackColor="#808080" />
                                 <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                 <SortedDescendingHeaderStyle BackColor="#383838" />
                             </asp:GridView>



                         
                             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:tourConnectionString %>" SelectCommand="SELECT * FROM [Booking]"></asp:SqlDataSource>



                         
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tourConnectionString %>" SelectCommand="SELECT * FROM [Booking]"></asp:SqlDataSource>
                             


                         
                                               
                         </div>
                     </div>
                </div>
            </div>
         </div>
    
</asp:Content>
