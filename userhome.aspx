<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userhome.aspx.cs" Inherits="Pet_Shoping.userhome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Home Page</title>
    <script
  src="https://code.jquery.com/jquery-3.6.0.js"
  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous"></script>
   

     <meta charset ="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="X-UA-Compatible" content="IE-chorme"/>
    <link href="css/Custome.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script type="text/javascript">

        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "Cart.aspx";
            });
        });

    </script>
    

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
                            <li ><a href="#">Contact</a></li>
                            <li ><a href="#">Blog</a></li>
                            <li class="dropdown"> 
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Pet<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                     <li><a href="Pet.aspx">All Pets</a></li>

                                    <li role="separator" class="divider"></li> 

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
                            <li>
                                


                            </li>
                             <li >
                                                                
                                 <asp:Button ID="btnlogin" CssClass="btn btn-default navbar-btn" runat="server" Text="SignIn" OnClick="btnlogin_Click"  />
                                 <asp:Button ID="btnlogout" CssClass="btn btn-default navbar-btn" runat="server" Text="Sign Out" OnClick="btnlogout_Click"  />
                                 

                             </li>
                            
                        </ul>
                    </div>
                </div>
              </div>
        </div>
        <hr />
        <hr />
        
        <asp:Label ID="lblsucess"  runat="server" CssClass="text-success"></asp:Label>

        <h2>Welcome User...</h2>


        <!---Footer COntents Start here---->
        <hr />
        <hr />
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy;2021 RoNi Singh &middot; <a href="Default.aspx">Home</a>&middot;<a href="#">About</a>&middot;<a href="#">Contact</a>&middot;<a href="#">About</a></p>
            </div>

        </footer>
        <!---Footer COntents End---->
    </form>
</body>
</html>
