<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="Dart_PD4.FAQ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.6.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/PrototypeCSS.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-sm justify-content-between mx-auto">
            <a href="HomePage.aspx" class="navbar-brand">
                <img src="images/riata%20logo%20new.png " alt="Riata Center Logo" class="logo" />
            </a>
            <ul class="navbar-nav">
                <li class="nav-item home">
                    <a href="HomePage.aspx" class="nav-link">Home</a>
                </li>
                <li class="nav-item aboutus">
                    <a href="AboutUs.aspx" class="nav-link">About Us</a>
                </li>
                <li class="nav-item faq">
                    <a href="FAQ.aspx" class="nav-link">FAQ</a>
                </li>
               
            </ul>
            <div>
                <asp:TextBox ID="tboxSearch" runat="server" class="form-control d-inline-block w-auto" placeholder="Search"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Text="Search" class="btn btn-dark btnalign" />
            </div>
        </nav>
        <div class="container-fluid">

            <div class="row" id="row12">
                <div class="col-sm-12 my-auto text-center">
                    <h2>FAQ</h2>
                    <h3>Can't find what you're looking for? Here are some answers to the most frequently asked questions to help you out!</h3>
                </div>
            </div>
            <%-- questions and answers  --%>
            <div class="row mx-auto text-center" id="row14">
                <div class="col-sm-12 mx-auto">
                    <h4>Q: Where is the Riata Center Located? hello</h4>
                    <h4>A: The Riata Center is Located on the First Floor of the Spears Business Building</h4>
                    <h4>Q: How Can I Contact? </h4>
                    <h4>A:  You can email: Riata@okstate.edu or call or 405-744-7552</h4>
                 
                </div>

            </div>

        </div>
    </form>
</body>
</html>
