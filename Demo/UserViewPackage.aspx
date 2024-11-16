<%@ Page Title="" Language="C#" MasterPageFile="~/UserHome.Master" AutoEventWireup="true" CodeBehind="UserViewPackage.aspx.cs" Inherits="Demo.UserViewPackage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="hrfor10.css" rel="stylesheet" />
    <div class="container-fluid">
        <div class="row">
           
          &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp  &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp  &nbsp&nbsp
           
            <div class="col-md-10">
                <div class="card">
                     <div class="card-body">
                         <div class="col-md-12">
                 <div class="card">
                     <div class="card-body">
                         <div class="row">
                             <div class="col">
                                <center>
                                    <asp:Image ID="image" class="rounded-circle" runat="server" ImageUrl="images/view package.jpg" Height="100" Width="100" BorderStyle="Solid" BorderColor="black" />
                                </center>                              

                             </div>
                         </div>
                <br />
                         <div class="row">
                             <div class="col">
                                <center>
                                    <h3>View Package </h3>
                                </center>                                 
                             </div>
                         </div>
                         <br />
                         <div class="row">
                             <div class="col">
                                <center>
                                    <hr />
                                </center>                                
                             </div>
                         </div>
                         <br />
                         <center>
                         <asp:GridView ID="GridView1" class="tabel table-striped table-bordered "   runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1300px"  HeaderStyle-HorizontalAlign="Center" > 
                             <AlternatingRowStyle BackColor="White" />
                             <Columns>
                                 <asp:BoundField DataField="packageid" HeaderText="packageid" SortExpression="packageid" />
                                 <asp:BoundField DataField="place" HeaderText="place" SortExpression="place" />
                                 <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                                 <asp:BoundField DataField="perperson" HeaderText="perperson" SortExpression="perperson" />
                                 <asp:BoundField DataField="stayamount" HeaderText="stayamount" SortExpression="stayamount" />
                                 <asp:BoundField DataField="foodamount" HeaderText="foodamount" SortExpression="foodamount" />
                                 <asp:BoundField DataField="noofdays" HeaderText="noofdays" SortExpression="noofdays" />
                                 <asp:BoundField DataField="noofnights" HeaderText="noofnights" SortExpression="noofnights" />
                                 <asp:BoundField DataField="busamount" HeaderText="busamount[Fixed]" SortExpression="busamount" />
                                 <asp:BoundField DataField="caramount" HeaderText="caramount[Fixed]" SortExpression="caramount" />
                                 <asp:TemplateField HeaderText="image" SortExpression="image">
                                     <EditItemTemplate>
                                         <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("image") %>'></asp:TextBox>
                                     </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("image") %>' Width="288px" />
                                     </ItemTemplate>
                                 </asp:TemplateField>
                             </Columns>
                             <EditRowStyle BackColor="#2461BF" />
                             <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                             <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                             <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                             <RowStyle BackColor="#EFF3FB" />
                             <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                             <SortedAscendingCellStyle BackColor="#F5F7FB" />
                             <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                             <SortedDescendingCellStyle BackColor="#E9EBEF" />
                             <SortedDescendingHeaderStyle BackColor="#4870BE" />
                         </asp:GridView>

                             </center>

                                                             
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tourConnectionString %>" SelectCommand="SELECT * FROM [Package]"></asp:SqlDataSource>



                                                             
                             </div>
                             
                         </div>
                         

                     </div>
                </div>                
                       
               
                         
                    </div>
                </div>
            </div>
     </div>


</asp:Content>
