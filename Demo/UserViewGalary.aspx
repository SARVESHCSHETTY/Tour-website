<%@ Page Title="" Language="C#" MasterPageFile="~/MainHeader.Master" AutoEventWireup="true" CodeBehind="UserViewGalary.aspx.cs" Inherits="Demo.UserViewGalary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="UserViewGalary.css" rel="stylesheet" />

    <body1>
    <div class="container">
        <div class="card">
                <asp:Image ID="Image1" src="images/hampi.jpg" runat="server"  Height="500px" Width="350px"/>
                
            <div class="intro">
                <h30>Hampi</h30>
                <p1>The <span1>Hampi</span1> is an ancient village in the south Indian state of Karnataka. It’s dotted with numerous ruined temple complexes from the Vijayanagara Empire. </p1>
            </div>
        </div>
        <div class="card">
            <asp:Image ID="Image2" src="images/dandeli2.jpg" runat="server" Height="500px" Width="350px" />
            <div class="intro">
                <h30>Dandeli</h30>
                <p1>The <span1>Dandeli</span1> The Dandeli Wildlife Sanctuary, with its trails and dense forests, is home to animals including  monkeys and elephants.West of the caves, Anshi National Park encompasses the Kali Tiger Reserve.</p1>
            </div>
        </div>
        <div class="card">
            <asp:Image ID="Image3" src="images/murdeshwara.jpg" runat="server" Height="500px" Width="350px" />
            <div class="intro">
                <h30>Murudeshwara</h30>
                <p1>The <span1>Murudeshwara</span1> is a town in Uttara Kannada district in the state of Karnataka, India, It is famous for the world's second tallest Shiva statue, the town lies on the coast of the Arabian Sea.
                </p1>
            </div>
        </div>

        
    </div>
         <div class="container">
        
              <div class="card">
            <asp:Image ID="Image5" src="images/mysore1.jpg" runat="server" Height="500px" Width="350px" />
            <div class="intro">
                <h30>Mysore</h30>
                <p1>The <span1>Mysore</span1> center is opulent Mysore Palace.Mysuru is famous in the world for its sandalwood and rosewood artifacts, stone sculptures, incense sticks, inlay work with ivory and its exquisite silk sarees.</p1>
            </div>
        </div>
              <div class="card">
            <asp:Image ID="Image4" src="images/Chikamagalore.jpg" runat="server" Height="500px" Width="350px" />
            <div class="intro">
                <h30>Chikmagalur</h30>
                <p1>The <span1>Chikmagalur</span1> Chikmagalur is a hill station in Karnataka It is home to elephants tigers and leopards.
                    Chikmagalur is one of the birthplaces of coffee in India and is famous for its Arabica and Robusta coffee beans.</p1>
            </div>
        </div>
              <div class="card">
            <asp:Image ID="Image6" src="images/UDUPI.png" runat="server" Height="500px" Width="350px" />
            <div class="intro">
                <h30>Udupi</h30>
                <p1>The <span1>Udupi</span1> is known for its Hindu temples,13th-century Sri Krishna Temple, which houses a statue of Lord Krishna and attracts many pilgrims. Nearby, the ancient Anantheshwara Temple is dedicated to the god Shiva.</p1>
            </div>
        </div>
             </div>

</body1>
</asp:Content>
