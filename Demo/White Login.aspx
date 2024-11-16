<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="White Login.aspx.cs" Inherits="Demo.White_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Logoin Page Design With Biometrics</title>
    <link href="WhiteLogin.css" rel="stylesheet" />
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="Login">      
            <center>
                <img width="150px" src="images/profile.jpg" />
             </center> 
         
            
        <div class="inputBox">
            <i class="fa fa-envelope"></i>
            <asp:TextBox ID="txtEmail" CssClass="txt1 txtstyle" runat="server" placeholder="Email-id"></asp:TextBox>
            </div>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter a Valid Email Adress" ValidationGroup="a" ControlToValidate="txtEmail" EnableClientScript="False" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            
         
        <div class="inputBox">
            <i class="fa-solid fa-lock"></i>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="txt2 txtstyle" placeholder="password" TextMode="Password"></asp:TextBox>           
        </div>
            
        <div class="inputBox" >
            <asp:Button ID="btn1" CssClass="btn1 btnstyle" runat="server" Text="Login" ValidationGroup="a" />
        </div>
         </br>
        <p class="link">Don't have an account?</p>
        <p class="link">
        <a href="Home.aspx">Sign up </a> </p>
         </div>
           
       
       
    </div>
         <asp:HyperLink ID="HyperLink1"  runat="server" NavigateUrl="~/AdminLogin.aspx" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Black">Back To Home</asp:HyperLink>
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
        
        <asp:HyperLink ID="HyperLink2"  runat="server" NavigateUrl="~/Dashbord.aspx" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Black">Forgot Password</asp:HyperLink>
        <br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="packageid" HeaderText="packageid" SortExpression="packageid" />
                <asp:BoundField DataField="place" HeaderText="place" SortExpression="place" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                <asp:BoundField DataField="perperson" HeaderText="perperson" SortExpression="perperson" />
                <asp:BoundField DataField="stayamount" HeaderText="stayamount" SortExpression="stayamount" />
                <asp:BoundField DataField="foodamount" HeaderText="foodamount" SortExpression="foodamount" />
                <asp:BoundField DataField="noofdays" HeaderText="noofdays" SortExpression="noofdays" />
                <asp:BoundField DataField="noofnights" HeaderText="noofnights" SortExpression="noofnights" />
                <asp:BoundField DataField="busamount" HeaderText="busamount" SortExpression="busamount" />
                <asp:BoundField DataField="caramount" HeaderText="caramount" SortExpression="caramount" />
                <asp:TemplateField HeaderText="image" SortExpression="image">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("image") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="78px" ImageUrl='<%# Eval("image") %>' Width="158px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tourConnectionString %>" SelectCommand="SELECT * FROM [Package]"></asp:SqlDataSource>
    </form>
</body>
</html>




    
