<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashbord.aspx.cs" Inherits="Demo.Dashbord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Side Menu Bar</title>
     <link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />">
    <link href="Dashbord.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav>
            <ul>
                <li>
                    <a href="#" class="logo">
                        <img  width="100px"src="images/profile.jpg" />
                        <span class="nav-item">Code Info</span>
                    </a>
                </li>
               <li><a href="#">
                    <i class="fas fa-map-marker"></i>
                    <span class="nav-item">Home</span>
                </a></li>
                <li><a href="#">
                    <i class="fas fa-user"></i>
                    <span class="nav-item">Profile</span>
                </a></li>
                <li><a href="#">
                    <i class="fas fa-wallet"></i>
                    <span class="nav-item">Wallet</span>
                </a></li>
                <li><a href="#">
                    <i class="fas fa-chart-bar"></i>
                    <span class="nav-item">Analytics</span>
                </a></li>
                <li><a href="#">
                    <i class="fas fa-tasks"></i>
                    <span class="nav-item">Tasks</span>
                </a></li>
                <li><a href="#">
                    <i class="fas fa-cog"></i>
                    <span class="nav-item">Settings</span>
                </a></li>
                <li><a href="#">
                    <i class="fas fa-question-circle"></i>
                    <span class="nav-item">Help</span>
                </a></li>
                <li><a href="#" class="logout">
                    <i class="fas fa-sign-out-alt"></i>
                    <span class="nav-item">Logout</span>
                </a></li>

                
            </ul>
        </nav>

        </div>
    </form>
</body>
</html>

