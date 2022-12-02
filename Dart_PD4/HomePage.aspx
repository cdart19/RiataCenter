<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Dart_PD4.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <script type="text/javascript">
  !function(a,b,c,d,e,f,g,h){a.RaygunObject=e,a[e]=a[e]||function(){
  (a[e].o=a[e].o||[]).push(arguments)},f=b.createElement(c),g=b.getElementsByTagName(c)[0],
  f.async=1,f.src=d,g.parentNode.insertBefore(f,g),h=a.onerror,a.onerror=function(b,c,d,f,g){
  h&&h(b,c,d,f,g),g||(g=new Error(b)),a[e].q=a[e].q||[],a[e].q.push({
  e:g})}}(window,document,"script","//cdn.raygun.io/raygun4js/raygun.min.js","rg4js");
    </script>
    <script type="text/javascript">
        rg4js('apiKey', '4aGGVY1y5w7Z3MmLYV1WLQ');
        rg4js('enablePulse', true);
    </script>
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
            
            <div class="row   ">
                <div class="col-sm-4 ">
                    <%-- cards --%>

                    <div class="card d-block mx-auto ">
                        <img class="card-img-top" src="images/threepeople.png" alt="Three People Pictured Together" />
                        <div class="card-body">
                            <h5 class="card-title">About Us</h5>
                            <p class="card-text"></p>
                            <asp:Button ID="btnAboutUs" runat="server" Text="Go to About Us" Class="btn " OnClick="btnAboutUs_Click"  />
                        </div>
                    </div>

                </div>
                <div class="col-sm-4">
                     <div class="card d-block mx-auto">
                        <img class="card-img-top"  <img src="images/peoplewithcomputers.jpg"  alt="Group of people on their computers" />
                        <div class="card-body">
                            <h5 class="card-title">FAQ</h5>
                            <p class="card-text"> </p>
                            <asp:Button ID="btnFAQ" runat="server" Text="Go to FAQ" Class="btn " OnClick="btnFAQ_Click"  />
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                     <div class="card d-block mx-auto ">
                        <img class="card-img-top" <img src="images/peopleposingtogether.jpg"  alt="Group of people posing for a photo" />
                        <div class="card-body">
                            <h5 class="card-title">Forms</h5>
                            <p class="card-text"> </p>
                             <asp:Button ID="btnForms" runat="server" Text="Go to Forms" Class="btn " OnClick="btnForms_Click"  />
                        </div>
                    </div>
                </div>

            </div>
            <hr  style="border-top:dotted" /> 
            <div class="row mx-auto text-center ">
                <%-- people and their contact information --%>
               
                <div class="col-sm-12">
                    <img src="images/paula.jpg" class="staff d-block mx-auto" />
                    <p class="paula">Paula McCullough | Contact: paula.mccullough@okstate.edu | 405-744-4665</p>
                </div>
            </div>
            <div class="row ">
                <div class="col-sm-4">
                    <img src="images/chad.jpg" class="staffs d-block mx-auto" />
                    <p class="chad d-block text-center">Chad Mills | Contact: chadhm@okstate.edu | 405-744-4350</p>
                </div>
                 <div class="col-sm-4">
                     <img src="images/marc.jpg" class="staffs d-block mx-auto" />
                     <p class="chad d-block text-center">Marc Tower | Contact: marc.tower@okstate.edu | 405-744-7307 </p>
                </div>
                 <div class="col-sm-4">
                     <img src="images/sarah.jpg" class="staffs d-block mx-auto"/>
                     <p class="chad d-block text-center">Sarah Teague | Contact: sarah.teague@okstate.edu | 405-229-6643</p>
                </div>
            </div>
            <%-- email prompt --%>
            <div class="row" id="prompt">
                <div class="col-sm-4 offset-sm4 mt-0-5 pb-4  mt-10 shadow-lg mx-auto ">
                    <h1 class="text-center">Email Form </h1>
                    <label>Email</label>
                    <asp:TextBox ID="tboxEmail" runat="server" CssClass="form-control"></asp:TextBox>
                    <label>Subject</label>
                    <asp:TextBox ID="tboxSubject" runat="server" CssClass="form-control"></asp:TextBox>
                    <label>Message</label>
                    <asp:TextBox ID="tboxMessage" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                    <asp:Button ID="btnSend" runat="server" CssClass="btn" Text="Send" OnClick="btnSend_Click" />
                    <asp:Label ID="lblMessage" runat="server" Text="error" ForeColor="Red" Visible="False"></asp:Label>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
