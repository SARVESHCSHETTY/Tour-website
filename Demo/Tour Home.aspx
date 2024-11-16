<%@ Page Title="" Language="C#" MasterPageFile="~/MainHeader.Master" AutoEventWireup="true" CodeBehind="Tour Home.aspx.cs" Inherits="Demo.Tour_Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="TourHome.css" rel="stylesheet" />
   
    <section class="home">   
     
        <video class="video-slide active" src="images/new2.mp4" autoplay muted loop> </video>
       <%-- <video class="video-slide" src="images/new.mp4" autoplay muted loop> </video>--%>
        <%--<video class="video-slide" src="images/pexels-pressmaster-3191709-3840x2160-25fps.mp4" autoplay muted loop> </video>
        <video class="video-slide" src="images/sea.mp4" autoplay muted loop> </video>
        <video class="video-slide" src="images/video.mp4" autoplay muted loop> </video>--%>
       
      

        <div class="content">
                    <h1>Wonderfull<br><span>Tour &  </span> <br>Travel</h1>
                    <p class="par">Tourism is the activity of traveling to different places for leisure, recreation, or cultural exploration. It involves visiting various destinations, experiencing different cultures, enjoying natural attractions, and engaging in activities specific to the location.</p>

                    <asp:button  ID="btn1"  CssClass="btn1 btnstyle" runat="server" Text="✈️ Get Ready "/>
                   </div> 

        <%-- <div class="content">
                    <h1>Camping<br><span>Tour &  </span> <br>Travel</h1>
                    <p class="par">Tourism is the activity of traveling to different places for leisure, recreation, or cultural exploration. It involves visiting various destinations, experiencing different cultures, enjoying natural attractions, and engaging in activities specific to the location.</p>

                    <asp:button  ID="Button1"  CssClass="btn1 btnstyle" runat="server" Text="Read More"/>
                   </div> 

         <div class="content">
                    <h1>Adventure<br><span>Tour &  </span> <br>Travel</h1>
                    <p class="par">Tourism is the activity of traveling to different places for leisure, recreation, or cultural exploration. It involves visiting various destinations, experiencing different cultures, enjoying natural attractions, and engaging in activities specific to the location.</p>

                    <asp:button  ID="Button2"  CssClass="btn1 btnstyle" runat="server" Text="Read More"/>
                   </div> 

         <div class="content">
                    <h1>Road trip<br><span>Tour &  </span> <br>Travel</h1>
                    <p class="par">Tourism is the activity of traveling to different places for leisure, recreation, or cultural exploration. It involves visiting various destinations, experiencing different cultures, enjoying natural attractions, and engaging in activities specific to the location.</p>

                    <asp:button  ID="Button3"  CssClass="btn1 btnstyle" runat="server" Text="Read More"/>
                   </div> 

         <div class="content">
                    <h1>Feel Nature<br><span>Tour &  </span> <br>Travel</h1>
                    <p class="par">Tourism is the activity of traveling to different places for leisure, recreation, or cultural exploration. It involves visiting various destinations, experiencing different cultures, enjoying natural attractions, and engaging in activities specific to the location.</p>--%>

                   <%-- <asp:button  ID="Button4"  CssClass="btn1 btnstyle" runat="server" Text="Read More"/>
                   </div> --%>
        <div class="slider-navigation">
           <%-- <div class="nav-btn active"></div>--%>
           <%-- <div class="nav-btn "></div>--%>
            <%--<div class="nav-btn"></div>
            <div class="nav-btn"></div>
            <div class="nav-btn"></div>--%>
        </div>
   
        </section>
        
    <script>
        const btns = document.querySelectorAll(".nav-btn");
        const slides = document.querySelectorAll(".video-slide");
        /*const contents = document.querySelectorAll(".content");*/

        var sliderNav = function (manual) {
            btns.forEach((btn) => {
                btn.classList.remove("active");

            });

            slides.forEach((slide) => {
                slide.classList.remove("active");

            });

            //contents.forEach((content) => {
            //    content.classList.remove("active");

            //});


            btns[manual].classList.add("active");
            slides[manual].classList.add("active");
           /* contents[manual].classList.add("active");*/

        }
        btns.forEach((btn, i) => {
            btn.addEventListener("click", () => {
                sliderNav(i);
            });
        });

    </script>
   
  


</asp:Content>

