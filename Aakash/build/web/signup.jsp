<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" href="../../assets/ico/favicon.ico">
        <link  href="css/customcss.css" rel="stylesheet">


        <title>SignUp</title>

        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Bootstrap css online -->
        <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
        <link  href="css/customcss.css" rel="stylesheet">
        <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script> 

    </head>

    <body>
        <div class="container">
            <br>
            <!--HEADER -->
            <div class="header">
                <a href="index.jsp" style="color: #000;"><ul class="nav nav-pills pull-left" >
                        <li id="brand_icon">       <img src="Images/mic_logo.png" alt="" width="80px" height="80px"/></li>
                        <li id="brand_name"> <p class="title"><span style="font-size: 70px;">|</span> iClass <strong>Forum</strong></p></li>

                    </ul></a>
                <!--   <p class="title1">iClass</p>&nbsp;&nbsp;<p class="title2">Forum</p> 
                -->
                <form action="Login" method="post">

                    <ul class="nav nav-pills pull-right" style="margin-top: 35px">
                        <li ><a href="index.jsp">Home</a></li>
                        <li><a href="contactus.jsp">Contact Us</a></li>

                        <li class="active"><a href="signup.jsp">Login</a></li>

                    </ul>
                </form>


            </div>



            <br>
            <div style="text-align: center; position: relative; width: 100%;height: 100%;  margin-top: 150px;">
                <center>
                    <div class="page2"  style="width: 400px;    ">          



                        <br>
                        <br>


                        <div class="jumbotron">
                            <form class="form-signin" action="Login" method="post" role="form">
                                <h2 class="form-signin-heading">Login</h2>
                                <br>
                                <input type="email" name="email"class="form-control" placeholder="Email address" required autofocus>
                                <input type="password" name="Psword" class="form-control" placeholder="Password" required>
                                <br>
                                <button class="btn btn-lg btn-primary" type="submit">Login</button>
                            </form>
                        </div> 
                        <!-- /container -->
                    </div>
                </center>
            </div>
        </div>


        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
    </body>


</html>
