<%@ Page Title="" Language="C#" MasterPageFile="~/UserHome.Master" AutoEventWireup="true" CodeBehind="TourUserHomePage.aspx.cs" Inherits="Demo.TourUserHomePage"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   
   
    <div class="row">  
      
        
            &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
            <asp:Image  src="images/travel.jpg" ID="Image2" runat="server" Width="301px" Height="170px" />
            
        &nbsp;&nbsp &nbsp;&nbsp &nbsp;&nbsp
            <asp:Image ID="Image5" src="images/maravante.jpg"  runat="server" Height="171px" Width="301px" />
            
         &nbsp;&nbsp &nbsp;&nbsp &nbsp;&nbsp
            <asp:Image ID="Image1" src="images/nagarahole.jpg"  runat="server" Height="171px" Width="301px" />
           
            &nbsp &nbsp   &nbsp;&nbsp &nbsp;&nbsp
            <asp:Image  src="images/hebbe.jpg" ID="Image3" runat="server" Width="300px" Height="170px" />
              &nbsp &nbsp  &nbsp;&nbsp &nbsp;&nbsp
            <asp:Image  src="images/halebidu.jpg" ID="Image4" runat="server" Width="301px" Height="171px" />
        
        
    </div>
    <br />

    <div class="new" style="height: 552px" >
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            body{
                width:100%;
                height:100vh;
                display:grid;
                place-items:center;
            }
            .imgSlider{
                width:60%;
                height:550px;
                background-image:url('images/mysore.jpg');
                background-size:100% 100%;
                box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px, rgba(0, 0, 0, 0.3) 0px 30px 60px -30px, rgba(10, 37, 64, 0.35) 0px -2px 6px 0px inset;
                animation:changeImage 20s linear infinite;
            }
            @keyframes changeImage{
                0%{
                    background-image:url("images/mysore.jpg");
                }
                25%{
                    background-image:url("images/kudremukha.jpg");
                }
                50%{
                    background-image:url("images/bro.jpg");
                }
                75%{
                    background-image:url("images/contactus.jpg");
                }
                100%{
                    background-image:url("images/Homepage.jpg");
                }
                

            }
        </style>
      <center>
  <div  class="imgSlider"></div>
          </center>


    </div>
    <br />


     <div class="row">  
            &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
            <asp:Image  src="images/vijayavittala.jpg" ID="Image6" runat="server" Width="301px" Height="170px" />
            
        &nbsp;&nbsp &nbsp;&nbsp &nbsp;&nbsp
            <asp:Image ID="Image7" src="images/yana.jpg"  runat="server" Height="171px" Width="301px" />
            
         &nbsp;&nbsp &nbsp;&nbsp &nbsp;&nbsp
            <asp:Image ID="Image8" src="images/Udupi.jpg"  runat="server" Height="171px" Width="301px" />
           
            &nbsp &nbsp   &nbsp;&nbsp &nbsp;&nbsp
            <asp:Image  src="images/mirjanfort.jpg" ID="Image9" runat="server" Width="300px" Height="170px" />
              &nbsp &nbsp  &nbsp;&nbsp &nbsp;&nbsp
            <asp:Image  src="images/kudlu.jpg" ID="Image10" runat="server" Width="301px" Height="171px" />
        
        
    </div>


    
</asp:Content>
