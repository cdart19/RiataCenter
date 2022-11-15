<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Dart_PD4.LoginPage" %>

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

        <div class="container-fluid">

            <div class="row" id="row9">
                <div class="col-sm-12 mx-auto my-auto d-block img-fluid">
                </div>

            </div>
          <%--  <div class="row" id="row11">
                <div class="col-sm-12 text-center">
                    <h3 class="credentials">Please Enter Your Credentials </h3>
                </div>

            </div>--%>


            <%-- Row 8 - Username --%>
            <div class="row mx-auto my-auto" id="row8">
                <div class="col-sm-12" id="loginrow">

                    <div class="col-sm-12 mx-auto text-center" id="cardcolumn">
                        <div class="card d-block mx-auto  my-auto" id="logincard">
                            <div class="card-body">
                                <div class="col-sm-5 col-form-label mx-auto">

                                    <label>Username</label>
                                </div>
                                <div class="col-sm-7 mx-auto">
                                    <asp:TextBox ID="tboxUserName" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <%-- Row 9 - Password --%>
                            <div class="col-sm-5 col-form-label mx-auto">

                                <label>Password</label>
                            </div>
                            <div class="col-sm-7 mx-auto">
                                <asp:TextBox ID="tboxPassword" runat="server" TextMode="Password"></asp:TextBox>
                            </div>
                            <%-- row 10 - button --%>
                            <div class="row mx-auto text-center" id="row10">
                                <div class="col-sm-12">
                                    <asp:Button ID="btnLogin" runat="server" Text="Login" class="btn " OnClick="btnLogin_Click" />
                                </div>
                            </div>

                            <div class="row mx-auto text-center" id="row80">
                                <div class="col-sm-12">
                                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
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
