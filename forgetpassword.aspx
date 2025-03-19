<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgetpassword.aspx.cs" Inherits="Pet_Shoping.forgetpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forget Password</title>
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
                    <h2>Recover Password</h2>
                    <hr />
                    <h3>Please Enter Your Email Address, We Will Send You The Recovery Link For Your Password!</h3>

                    <div class="form-group">
                        <asp:Label ID="lblEmail" CssClass="col-md-2 control-lable" runat="server" Text="Your Enter Address"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtemailid" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatoremail" CssClass="Text-danger" runat="server" ErrorMessage="Enter your Email" ControlToValidate="txtemailid" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-2">  </div>

                        <div class="col-md-6">
                            <asp:Button ID="btnResetPass" CssClass="btn btn-default" runat="server" Text="Send" OnClick="btnResetPass_Click" />
                            <asp:Label ID="lblResetPassMsg" CssClass="text-sucess" runat="server" ></asp:Label>                       
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
