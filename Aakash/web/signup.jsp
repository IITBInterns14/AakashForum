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


    <title>SignUp</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/jumbotron-narrow.css" rel="stylesheet">

   </head>

   <body>
   <%
            String msg = null;
            String flag = (String)request.getAttribute("inserted");
            System.out.println(flag);
            if(flag!=null)
            {
                if(flag.equalsIgnoreCase("inserted"))
                    msg = "New Customer added Successfully";
                else if(flag.equalsIgnoreCase("problem"))
                    msg = "New Customer could not be added. Please try again later";
                    else if(flag.equalsIgnoreCase("emailUsed"))
                    	msg="Email Already exists";
                    else if(flag.equalsIgnoreCase("Please signup"))
                    	msg="Please signup";
                    else if(flag.equalsIgnoreCase("Password error"))
                    	msg="Wrong password";
                    		
                    	
        %>
        <script type="text/javascript">
            alert("<%= msg %>");
        </script>   
        <%
            }
        %>
	
    <div class="container" type="fluid">
	<div class="header">
	
	
        
        <ul class="nav nav-pills pull-right">
          <li ><a href="index.jsp">Home</a></li>
          <li class="active"><a href="signup.">Sign in</a></li>
          
            <li><a href="InsertReview.jsp">Review</a></li>
        </ul>
	
        <h3 class="text-muted">Aakash Forum</h3>
      </div>
    <br>
    <br>
    <div class="jumbotron">
      <form class="form-signin" action="Login" method="post" role="form">
        <h2 class="form-signin-heading">Sign in</h2>
        <input type="email" name="email"class="form-control" placeholder="Email address" required autofocus>
        <input type="password" name="Psword" class="form-control" placeholder="Password" required>
        <br>
        <button class="btn btn-lg btn-primary" type="submit">Sign in</button>
       </form>
    </div>
</div> <!-- /container -->



    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>


</html>
