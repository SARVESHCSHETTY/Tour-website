<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashBord2.aspx.cs" Inherits="Demo.DashBord2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <link href="Dashbord2.css" rel="stylesheet" />
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    
    
</head>
<body>

    <form id="form1" runat="server">
        <input type="checkbox" id="check" />
        <label for="check">
            <i class="fas fa-bars" id="btn"></i>
            <i class="fas fa-times" id="cancel"></i>
        </label>
       <div class="sidebar">
           <header>My App</header>
           <ul>
               <li><a href="#"><i class="fas fa-qrcode"></i> Dash bord</a></li>
               <li><a href="#"><i class="fas fa-link"></i>shortcuts</a></li>
               <li><a href="#"><i class="fas fa-stream"></i>Overview</a></li>
               <li><a href="#"><i class="fas fa-calendar-week"></i>Events</a></li>
               <li><a href="#"><i class="fas fa-question-circle"></i>About</a></li>
               <li><a href="#"><i class="fas fa-sliders-h"></i>service</a></li>
               <li><a href="#"><i class="fas fa-envelope"></i>Contact</a></li>
           </ul>

       </div>
        <section>

        </section>
    </form>
</body>
</html>
