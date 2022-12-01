<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Dart_PD4.AboutUs" %>

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
            <%-- mission statement --%>
            <div class="row" id="row1">
                <div class="col-sm-12">
                    <h2 class="text-center">Riata Center Mission Statement  </h2>
                    <h3 class="text-center">The Riata Center for Entrepreneurship is a state-of-the-art entrepreneurship
                    center and the catalyst for entrepreneurial education, support, and outreach for OSU students,
                    faculty, staff, alumni, and the state of Oklahoma. The center delivers high-quality experiential 
                    learning activities in and out of the classroom in collaboration with the School of Entrepreneurship and a community of on-and off-campus partners.</h3>


                </div>
            </div>
            <div class="row" id="row2">
                <div class="col-sm-12  mx-auto my-auto d-block img-fluid">
                </div>
            </div>
            <%-- information --%>
            <div class="row" id="row3">
                <div class="col-sm-12 text-center mx-auto my-auto d-block img-fluid">
                    <h3>The Riata Center offers plenty of services for students: </h3>
                    <h3>Startup support </h3>
                    <h3>Competitions (scholarships for winners) </h3>
                    <h3>Educational Workshops & Speaking Engagements</h3>
                    <h3>Academic Support</h3>
                    <h3>Entrepreneurship Clubs </h3>
                </div>
            </div>
            <div class="row" id="row4">
                <div class="col-sm-12 text-center mx-auto my-auto d-block img-fluid">
                </div>

            </div>
            <%-- video --%>
            <div class="row" id="row5">
                <div class="col-sm-5 text-center mx-auto my-auto d-block img-fluid">
                    <div class="embed-responsive embed-responsive-21by9">
                        <iframe src="images/BusPlan-Event%20Promo-FINAL.mp4" frameborder="0" allow="accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture; fullscreen" ></iframe>
                    </div>
                </div>
                <div class="col-sm-7 text-center mx-auto my-auto d-block img-fluid">
                    <h3>We offer over $42,000 worth of scholarships via our competitions each year. Competitions such as this one entail creating a business plan and presenting it in front of judges. </h3>
                </div>
            </div>
            <div class="row" id="row6">
                <div class="col-sm-12  text-center mx-auto my-auto d-block img-fluid">
                </div>
            </div>
            <div class="row" id="row7">
                <div class="col-sm-6 text-center mx-auto my-auto d-block img-fluid">
                    <h2>Come join us!</h2>
                    <h3> We offer plenty of experiential learning opportnunites  </h3>
                    <h3>such as rock climbing and Student Coaching.</h3>
                   
                </div>
                <%-- carousel --%>
                <div class="col-sm-6 text-center my-auto">
                    <div id="RiataCarousel" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#RiataCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#RiataCarousel" data-slide-to="1"></li>
                            <li data-target="#RiataCarousel" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">

                            <div class="carousel-item active">
                                <img src="images/rock%20climbing.jpg" alt="Group of people rock climbing" class="img-fluid d-block mx-auto my-auto carouselimages" />
                            </div>
                            <div class="carousel-item">
                                <img src="images/better%20group%20hotel.jpg" alt="Group picture in a hotel" class="img-fluid d-block mx-auto my-auto carouselimages" />
                            </div>
                            <div class="carousel-item">
                                <img src="images/people%20in%20bus.jpg" alt="Group pictured in a bus" class="img-fluid d-block mx-auto my-auto carouselimages" />
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#RiataCarousel" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#RiataCarousel" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>

                </div>
            </div>
        </div>
    </form>
</body>
</html>
