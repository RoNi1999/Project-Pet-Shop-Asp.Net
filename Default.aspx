<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Pet_Shoping.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pet-Shopping Website</title>
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
                            <<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                            class="icon-bar"></span><span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="Default.aspx"><span><img src="icons/psicon.png" alt="Pet-Shopping" height="30" /></span>Pet-Shopping</a>

                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active" ><a href="Default.aspx">Home</a></li>
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
                                <button id="btnCart" class="btn btn-primary navbar-btn " type="button">
                                Cart <span class="badge " id="pCount" runat="server"></span>
                            </button>


                            </li>
                            <li id="btnsingup" runat="server"><a href="signup.aspx">SignUp</a></li>
                             <li id="btnsingin" runat="server"><a href="singin.aspx">SingnIn</a> </li>
                            <li><asp:Button ID="btnlogout" CssClass="btn btn-default navbar-btn" runat="server" Text="Sign Out" OnClick="btnlogout_Click"  /></li>
                         </ul>
                       </div>
                </div>


            </div>
            
            <!---image slider---->
            <div class="container">
            <h2>Carousel Example</h2>  
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
            <div class="item active">
            <img src="img/dog.jpg" alt="Los Angeles" style="width:100%; height:251px;"/>
                 <div class="carousel-caption">
                 <h3>Dog</h3>
                 <p>15% off</p>
                 <p><a class="btn btn-lg btn-primary" href="#" role="button">Buy Now</a></p>
            </div>
            </div>

            <div class="item">
            <img src="img/cat.jpg" alt="Chicago" style="width:100%; height:250px;"/>
                 <div class="carousel-caption">
                 <h3>Cat</h3>
                 <p>15% off</p>
                 <p><a class="btn btn-lg btn-primary" href="#" role="button">Buy Now</a></p>
            </div>
            </div>
    
            <div class="item">
            <img src="img/both.jpg" alt="New york" style="width:100%; height:250px;"/>
                 <div class="carousel-caption">
                 <h3>Dog & Cat</h3>
                 <p>25% off</p>
                 <p><a class="btn btn-lg btn-primary" href="#" role="button">Buy Now</a></p>
           </div>
            </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
            </a>
            </div>
            </div>




            <!---image slider End---->






        </div>
         <!---Middle COntents start---->
        <hr />
            <div class="container center">
                <div class="row">
                    <div class="col-lg-4">
                        <img class="img-circle" src="Dog/dpup.jpg" alt="thumb" width="140" height="140" />
                        <h2>Dog</h2>
                        <p>Bhotiya...</p>
                        <p><a class="btn btn-default" href="#" role="button">View More &raquo;</a></p>

                    </div>

                    <div class="col-lg-4">
                        <img class="img-circle" src="Cat/cat2.jpg" alt="thumb" width="140" height="140" />
                        <h2>Cat</h2>
                        <p>Jungli Billi...</p>
                        <p><a class="btn btn-default" href="#" role="button">View More &raquo;</a></p>

                    </div>

                </div>

            </div>
        <div class="panel-body">
                <div class="row" style="padding-top: 50px">
                    <asp:Repeater ID="rptrProducts" runat="server">
                        <ItemTemplate>
                            <div class="col-sm-3 col-md-3">
                                <a href="PetView.aspx?PID=<%# Eval("PID") %>" style="text-decoration: none;">
                                    <div class="thumbnail">
                                        <img src="img/<%# Eval("PID") %>/<%# Eval("Name") %><%# Eval("Extention") %>"
                                            alt="<%# Eval("Name") %>" />
                                        <div class="caption">
                                            <div class="probrand">
                                                <%# Eval ("Name") %>
                                            </div>
                                            <div class="proName">
                                                <%# Eval ("PName") %>
                                            </div>
                                            <div class="proPrice">
                                                <span class="proOgPrice">
                                                    <%# Eval ("PPrice","{0:0,00}") %>
                                                </span>
                                                <%# Eval ("PSellPrice","{0:c}") %>
                                                <span class="proPriceDiscount">(<%# Eval("DiscAmount","{0:0,00}") %>
                                                    off) </span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>


         <!---Middle COntents End---->


        <!---Footer COntents Start here---->
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
