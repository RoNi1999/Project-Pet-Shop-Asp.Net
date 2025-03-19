<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Pet_Shoping.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <meta charset ="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="X-UA-Compatible" content="IE-chorme"/>
    <link href="css/Custome.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle Navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="Default.aspx"><span><img src="icons/psicon.png" alt="Pet-Shopping" height="30" /></span>Pet-Shopping</a>

                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="Default.aspx">Home</a></li>
                            <li ><a href="#">About</a></li>
                            <li ><a href="#">Contact</a></li>
                            <li ><a href="#">Blog</a></li>
                            <li class="dropdown"> 
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Pet<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                     <li class="dropdown-header">A Quality</li>

                                    <li role="separator" class="divider"></li>   
                                    
                                    <li class="dropdown-header">AA Quality</li>

                                    <li role="separator" class="divider"></li>

                                    <li class="dropdown-header">AAA Quality</li>

                                    <li role="separator" class="divider"></li>

                                    <li class="dropdown-header">Retire From Army</li>

                                    <li role="separator" class="divider"></li>

                                    <li class="dropdown-header">Adoptation</li>     

                                </ul>
                            </li>
                              <li class="active"><a href="signup.aspx">SignUp</a></li>
                              <li ><a href="singin.aspx">SignIn</a></li>
                        </ul>
                    </div>
                </div>


            </div>
        </div>

        <!---signup page--->
        <div class="center-page">
            <label class="col-xs-11">UserName:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtUname" runat="server" Class="form-control" placeholder="Enter Your UserName"></asp:TextBox>
            </div>

            <label class="col-xs-11">Password:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Class="form-control" placeholder="Enter Your Password"></asp:TextBox>
            </div>

            <label class="col-xs-11">Confirm Password:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtCPass" runat="server" TextMode="Password" Class="form-control" placeholder="Enter Your Confirm Password"></asp:TextBox>
            </div>

            <label class="col-xs-11">Your Full Name:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtName" runat="server" Class="form-control" placeholder="Enter Your Name"></asp:TextBox>
            </div>

            <label class="col-xs-11">Email:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtEmail" runat="server" Class="form-control" placeholder="Enter Your Email"></asp:TextBox>
            </div>
            <label class="col-xs-11"></label>
            <div class="col-xs-11">
                <asp:Button ID="txtsignup" Class="btn btn-success" runat="server" Text="SignUp" OnClick="txtsignup_Click" />
                <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
            </div>
       </div>
        <!---signup page end--->


        <!---Footer COntents Start here---->
        <hr />


        <footer class="footer-pos">
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy;2021 RoNi Singh &middot; <a href="Default.aspx">Home</a>&middot;<a href="#">About</a>&middot;<a href="#">Contact</a>&middot;<a href="#">About</a></p>
            </div>

        </footer>
        <!---Footer COntents End---->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </form>
</body>
</html>
