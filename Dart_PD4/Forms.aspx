<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forms.aspx.cs" Inherits="Dart_PD4.Forms" %>

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
                <li class="nav-item forms">
                    <a href="Forms.aspx" class="nav-link">Forms</a>
                </li>
            </ul>
            <div>
                <asp:TextBox ID="tboxSearch" runat="server" class="form-control d-inline-block w-auto" placeholder="Search"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Text="Search" class="btn btn-dark btnalign" />
            </div>
        </nav>
        <div class="container-fluid">

            <div class="row" id="row15">
                <div class="col-sm-12 mx-auto my-auto d-block img-fluid" id="row16">

                    <div class="col-sm-12 mx-auto text-center" id="cardcolumn">

                        <div class="row mx-auto text-center">
                            <h2>Contacts</h2>
                        </div>
                        <%-- your name --%>
                        <div class="row">
                            <div class="col-sm-4 col-form-label text-right">
                                <label>Enter your First Name </label>
                            </div>
                            <div class="col-sm-5 ">
                                <asp:TextBox ID="tboxFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ErrorMessage="Enter your First Name, please" ControlToValidate="tboxFirstName" ForeColor="Red" CssClass="float-right"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <%-- your email --%>
                        <div class="row" id="row350">
                            <div class="col-sm-4 col-form-label text-right">
                                <label>Enter your Last Name </label>
                            </div>
                            <div class="col-sm-5 ">
                                <asp:TextBox ID="tboxLastName" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ErrorMessage="Enter your Last Name, please" ControlToValidate="tboxLastName" ForeColor="Red" CssClass="float-right"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <%-- your number --%>
                        <div class="row" id="row180">
                            <div class="col-sm-4 col-form-label text-right">
                                <label>Enter your Phone Number </label>
                            </div>
                            <div class="col-sm-5 ">
                                <asp:TextBox ID="tboxPhoneNumber" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="revPhone" runat="server" ErrorMessage="Please Enter a Valid Phone Number" ControlToValidate="tboxPhoneNumber" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ForeColor="Red"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <%-- primary email --%>
                        <div class="row" id="row190">
                            <div class="col-sm-4 col-form-label text-right">
                                <label>Enter your Email </label>
                            </div>
                            <div class="col-sm-5 ">
                                <asp:TextBox ID="tboxEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Please Enter a Valid Email" ControlToValidate="tboxEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Enter an Email, please" ControlToValidate="tboxEmail" ForeColor="Red" CssClass="float-right"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <%-- secondary email --%>
                        <div class="row" id="row200">
                            <div class="col-sm-4 col-form-label text-right">
                                <label>Enter your Secondary Email </label>
                            </div>
                            <div class="col-sm-5 ">
                                <asp:TextBox ID="tboxSecondary" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="revSecondary" runat="server" ErrorMessage="Please Enter a Valid Email" ControlToValidate="tboxSecondary" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <%-- address 1 --%>
                        <div class="row" id="row210">
                            <div class="col-sm-4 col-form-label text-right">
                                <label>Address </label>
                            </div>
                            <div class="col-sm-5 ">
                                <asp:TextBox ID="tboxAddress" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <%-- address 2 --%>
                        <div class="row" id="row220">
                            <div class="col-sm-4 col-form-label text-right">
                                <label>Address 2 </label>
                            </div>
                            <div class="col-sm-5 ">
                                <asp:TextBox ID="tboxAddress2" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <%-- city --%>
                        <div class="row" id="row230">
                            <div class="col-sm-4 col-form-label text-right">
                                <label>Enter Your City </label>
                            </div>
                            <div class="col-sm-5 ">
                                <asp:TextBox ID="tboxCity" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <%-- state --%>
                        <div class="row" id="row240">
                            <div class="col-sm-4 col-form-label text-right">
                                <label>Select your State </label>
                            </div>
                            <div class="col-sm-5">
                                <asp:DropDownList ID="ddlState" runat="server" DataSourceID="S21_kscdartConnectionString" DataTextField="StateAbbr" DataValueField="StateID" CssClass="form-check"></asp:DropDownList>
                                <asp:SqlDataSource ID="S21_kscdartConnectionString" runat="server" ConnectionString="<%$ ConnectionStrings:s21_kscdartConnectionStringState %>" SelectCommand="spGetStates" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                            </div>
                        </div>
                        <%-- zipcode --%>
                        <div class="row" id="row250">
                            <div class="col-sm-4 col-form-label text-right">
                                <label>Enter Your Zipcode </label>
                            </div>
                            <div class="col-sm-5 ">
                                <asp:TextBox ID="tboxZip" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="revZip" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="tboxZip" ForeColor="Red" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <%-- employee and student checkbox --%>
                        <div class="row" id="row260">
                            <div class="col-sm-4 col-form-label text-right">
                                <label>Student/Alumni Status:</label>
                            </div>
                            <div class="col-sm-5 ">
                                <div>
                                    <asp:CheckBox ID="cbStudent" runat="server" Text="Student" AutoPostBack="false" />
                                </div>
                                <div>
                                    <asp:CheckBox ID="cbAlumni" runat="server" Text="Alumni" AutoPostBack="false" />
                                </div>
                            </div>
                        </div>
                        <%-- text boxes --%>
                        <div class="row" id="row270">
                            <div class="row" id="row35">
                                <div class="col-sm-10 col-form-label mx-auto text-right">
                                    <label>Enter your Degree Type </label>
                                </div>
                                <div class="col-sm-2 ">
                                    <asp:TextBox ID="tboxStudentDegree" runat="server" placeholder="(under, masters, ph.d.)"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <%-- major --%>
                        <div class="row" id="row800">
                            <div class="row" id="row700">
                                <div class="col-sm-10 col-form-label mx-auto text-right">
                                    <label>Enter your Major </label>
                                </div>
                                <div class="col-sm-2 ">
                                    <asp:TextBox ID="tboxMajor" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <%-- minor --%>
                        <div class="row" id="row40">
                            <div class="row" id="row41">
                                <div class="col-sm-10 col-form-label mx-auto text-right">
                                    <label>Enter your Minor </label>
                                </div>
                                <div class="col-sm-2 ">
                                    <asp:TextBox ID="tboxMinor" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%-- cwid --%>
                    <div class="row" id="row36">
                        <div class="col-sm-4 col-form-label text-right">
                            <label>Please Enter Your CWID </label>
                        </div>
                        <div class="col-sm-5">
                            <asp:TextBox ID="tboxCWID" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <%-- Classification --%>
                    <div class="row" id="row50">
                        <div class="col-sm-4 col-form-label text-right">
                            <label>Please Enter Your Classification </label>
                        </div>
                        <div class="col-sm-5">
                            <asp:TextBox ID="tboxClassification" runat="server" placeholder="(fr, soph, etc.)"></asp:TextBox>
                        </div>
                    </div>
                    <%-- Grad Date --%>
                    <div class="row" id="row60">
                        <div class="col-sm-4 col-form-label text-right">
                            <label>Please Enter Your Graduation Date </label>
                        </div>
                        <div class="col-sm-5">
                            <asp:TextBox ID="tboxGraduation" runat="server" placeholder="(May 2021)"></asp:TextBox>
                        </div>
                    </div>
                    <%-- alumni --%>
                    <div class="row" id="row280">
                        <div class="col-sm-4 col-form-label text-right">
                            <label>If Alumni: Enter Your Degree</label>
                        </div>
                        <div class="col-sm-5">
                            <asp:TextBox ID="tboxDegree" runat="server" palceholder="(under, masters, ph.d.)"></asp:TextBox>
                        </div>
                    </div>
                    <%-- alum major --%>
                    <div class="row" id="row1000">
                        <div class="row" id="row4000">
                            <div class="col-sm-10 col-form-label mx-auto text-right">
                                <label>If alumni: Enter your Major </label>
                            </div>
                            <div class="col-sm-2 ">
                                <asp:TextBox ID="tboxAlumMajor" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>


                    <%-- minor --%>
                    <div class="row" id="row70">
                        <div class="col-sm-4 col-form-label text-right">
                            <label>If Alumni: Enter Your Minor </label>
                        </div>
                        <div class="col-sm-5">
                            <asp:TextBox ID="tboxAlumMinor" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <%-- Graduation Date --%>
                    <div class="row" id="row80">
                        <div class="col-sm-4 col-form-label text-right">
                            <label>If Alumni: Enter Graduation Date </label>
                        </div>
                        <div class="col-sm-5">
                            <asp:TextBox ID="tboxAlumGrad" runat="server" placeholder="(May 2021)"></asp:TextBox>
                        </div>
                    </div>
                    <%-- job title  --%>
                    <div class="row" id="row290">
                        <div class="col-sm-4 col-form-label text-right">
                            <label>Enter Job Title </label>
                        </div>
                        <div class="col-sm-5 ">
                            <asp:TextBox ID="tboxJobTitle" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <%-- employer name  --%>
                    <div class="row" id="row300">
                        <div class="col-sm-4 col-form-label text-right">
                            <label>Enter Name of Employer </label>
                        </div>
                        <div class="col-sm-5 ">
                            <asp:TextBox ID="tboxEmployerName" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <%-- military information --%>
                    <div class="row" id="row310">
                        <div class="col-sm-4 col-form-label text-right">
                            <label>Military Information: </label>
                        </div>
                        <div class="col-sm-5">
                            <asp:CheckBoxList ID="cbMilitary" runat="server" DataSourceID="cdartMilitary" DataTextField="BranchName" DataValueField="BranchID">
                                <asp:ListItem></asp:ListItem>
                            </asp:CheckBoxList>
                            <asp:SqlDataSource ID="cdartMilitary" runat="server" ConnectionString="<%$ ConnectionStrings:s21_kscdartConnectionStringMilitary %>" SelectCommand="spMilitaryCheck" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                        </div>
                    </div>
                    <%-- buttons --%>
                    <div class="row" id="row320">
                        <div class="col-sm-6 col-form-label ">
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="bg-danger float-right btn" CausesValidation="False" OnClick="btnCancel_Click" />
                        </div>
                        <div class="col-sm-6 col-form-label">
                            <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" CssClass="btn" />
                        </div>
                    </div>
                    <%-- label message --%>
                    <div class="row">
                        <div class="col-sm-12 float-middle">
                            <asp:Label ID="lblmessage" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>


                </div>
            </div>
        </div>
        </div>
        </div>

     



        
    </form>
</body>
</html>
