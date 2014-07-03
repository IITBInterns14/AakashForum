<%-- 
    Document   : contactus
    Created on : Jun 29, 2014, 11:57:08 PM
    Author     : Mohit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <head>
    <meta charset="utf-8">
  
    <title>Aakash Forum</title>
         <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Bootstrap css online -->
        <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
        <link  href="css/customcss.css" rel="stylesheet">
        <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script> 

        <script>


            $(window).scroll(function() {
                scroll(0, 0);
            });

        </script>
       
   
    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script> 
	<style type="text/css">
html, body {
  overflow: hidden;
}
</style>
   
    </head>
    <body>
        
            <%
   
    String name=(String)session.getAttribute("inserted");
    if(name!=null){
         session.setAttribute("pass",name);
    }
    // System.out.println("Name="+name);
    //  out.println("Name="+name);
  
    %>
    
    
     
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
                        <li><a href="index.jsp">Home</a></li>
                        <li class="active"><a href="contactus.jsp">Contact Us</a></li>

                        <%if (name != null) {
                            try {%>

                        <li><a href="logout.jsp">Logout</a></li>
                        <li>Welcome <%=name%></li>

                        <%} catch (Exception e) {

                                System.out.println("Problem :" + e);

                            }


                        } else {
                        %>

                        <li><a href="signup.jsp">Login</a></li>

                        <%                        }%>

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
                       
  <h2>Admin  Contact Details</h2>
  <p>2nd Floor,<br>
      Mr Ninaad,<br>
      Aakash Lab,<br>
      CSE Building,<br>
      IIT bombay.<br>
      Pin-400056<br>
      Mob-8888999922</p>
  <p><a class="btn btn-primary btn-lg" role="button">Send Request</a></p>

                    </div>
                        <!-- /container -->
                    </div>
                </center>
            </div>
        </div>


    </body>
</html>
