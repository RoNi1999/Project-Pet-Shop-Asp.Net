﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecoverPassword.aspx.cs" Inherits="Pet_Shoping.RecoverPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Password Recovery</title>
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
                            <li ><a href="Default.aspx">Home</a></li>
                            <li ><a href="#">About</a></li>
                            <li ><a href="#">Terms</a></li>
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
                            
                             <li ><a href="singin.aspx">SignIn</a></li>
                        </ul>
                    </div>
                </div>
              </div>

        </div>

            <div class="container">
                <div class="form-horizontal">
                    <br />
                    <br />
                    <br />

                    <h2>Reset Password</h2>
                    <hr />
                    <h3></h3>

                    <div class="form-group">
                        <asp:Label ID="lblmsg" CssClass="col-md-2 control-lable" runat="server" Visible="False" Font-Bold="True" Font-Size="X-Large"></asp:Label>

                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblNewPassword" CssClass="col-md-2 control-lable" runat="server" Text="Your New Password" Visible="False"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtNewPass" CssClass="form-control" TextMode="Password" runat="server" OnTextChanged="txtNewPass_TextChanged" Visible="False"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNewPass" CssClass="Text-danger" runat="server" ErrorMessage="Enter New Password" ControlToValidate="txtNewPass" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidatorPass" runat="server" ErrorMessage="Confirm Password Not Match" ControlToCompare="txtNewPass" ForeColor="Red" ControlToValidate="txtConfirmPass"></asp:CompareValidator>


                        </div>
                    </div>

                     <div class="form-group">
                        <asp:Label ID="lblConfirmPass" CssClass="col-md-2 control-lable" runat="server" Text="Confirm New Password" Visible="False"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtConfirmPass" CssClass="form-control" TextMode="Password" runat="server" OnTextChanged="txtConfirmPass_TextChanged" Visible="False"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPass" CssClass="Text-danger" runat="server" ErrorMessage="Confirm New Password" ControlToValidate="txtConfirmPass" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-2">  </div>

                        <div class="col-md-6">
                            <asp:Button ID="btnResetPass" CssClass="btn btn-default" runat="server" Text="Reset" Visible="False" OnClick="btnResetPass_Click"  />                      
                                   
                            </div>
                    </div>

                </div>
            </div>






    </form>

         <!---Footer COntents Start here---->
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy;2021 RoNi Singh &middot; <a href="Default.aspx">Home</a>&middot;<a href="#">About</a>&middot;<a href="#">Contact</a>&middot;<a href="#">About</a></p>
            </div>

        </footer>
        <!---Footer COntents End---->
</body>
</html>
