<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="beans.Information"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
  
    <title>Aakash Forum</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap css online -->
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
    <style>
        //Prof List area    	
        div#scroll-able {
        height:200px;
        overflow-y: scroll;
        overflow-x: hidden;
        }
      //Lec List Area
        div#t_list {
        height:200px;
        overflow-y: scroll;
        overflow-x: hidden;
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
            <form action="Login" method="post">
                <ul class="nav nav-pills pull-right">
                    <li class="active"><a href="#">Home</a></li>
          
                    <%if(name!=null) {
                    try{%>

                    <li><a href="logout.jsp">Logout</a></li>
                    <li><a href="#">Welcome <%=name %></a></li>

                    <%}
                    catch(Exception e)
                    {

                    System.out.println("Problem :"+e);
          
                    }
          
          
                    } 
                    else{
                    %>
          
                    <li><a href="signup.jsp">Signin</a></li>
          
                    <%
                    } %>

                </ul>
            </form>
            <!--  <h3 class="text-muted">Aakash Forum</h3> -->
            <font face="Bradley Hand ITC" size="9"><b class="text-muted">Aakash Forum</b></font>
        </div>
        <br>
        <font face="Bradley Hand ITC" size="6"><i class="text-muted"><b>Departments</b></i></font>
        <br>
        <div class="panel panel-primary">
     
         

            <!--  pANEL OF DEPARTMENTS -->
            <div class="panel-body">

                <div class="row">

                    <!-- fIRST COLUMN-->   
                    <div class="col-md-4">
                        <ul class="nav nav-pills nav-stacked" >

                                    <%
                                try
                        {

                            ArrayList<Information> addL=Information.getProf("Aerospace Engineering");

                                %>

                            <li class="active">
                              <a href="#" id="sub">
                                <span class="badge pull-right"><%=addL.size()%></span>
                                Aerospace Engineering
                              </a>
                            </li>

                            <%}
                            catch(Exception e)
                            {
                            System.out.println("Some problem in count");
                            }
                             %>

                                    <%
                                        try
                                {

                                    ArrayList<Information> addL=Information.getProf("Computer Science");

                                        %>
                            <li class="active">
                                <a  onclick="jsfunction('Computer Science')" href="javascript:void(0);">
                                <span class="badge pull-right"><%=addL.size()%></span>
                                Computer Science
                                </a>
                            </li>
                            <%}
                            catch(Exception e)
                            {
                            System.out.println("Some problem in count");
                            }
                            %>

                            <%
                            try
                            {
                            ArrayList<Information> addL=Information.getProf("Mechanical");
                            %>




                            <li class="active">
                             <a href="#">
                               <span class="badge pull-right"><%=addL.size()%></span>
                               Mechanical
                             </a>
                            </li class="active">
                            <%}
                            catch(Exception e)
                            {
                            System.out.println("Some problem in count");
                            }
                             %>  

                              <%
                                        try
                               {
                              ArrayList<Information> addL=Information.getProf("Extc");

                            %>


                            <li class="active">
                                <a href="#"><span class="badge pull-right"><%=addL.size()%></span>Extc
                                </a>
                            </li>  <%}
                            catch(Exception e)
                            {
                            System.out.println("Some problem in count");
                            }
                             %>
                        </ul>
                    </div>


                    <!--sECOND COLUMN -->
                    <div class="col-md-4">
                        <ul class="nav nav-pills nav-stacked" >

                                    <%
                                try
                            {

                                ArrayList<Information> addL=Information.getProf("Aerospace Engineering");

                                %>
                            <li class="active">
                            <a href="#" id="sub"><span class="badge pull-right"><%=addL.size()%></span>  Aerospace Engineering
                            </a>
                            </li>

                                <%}
                                catch(Exception e)
                                {
                                System.out.println("Some problem in count");
                                }
                                 %>

                                <%
                                    try
                            {

                                ArrayList<Information> addL=Information.getProf("Computer Science");

                                    %>
                            <li class="active">
                            <a  onclick="jsfunction()" href="javascript:void(0);">
                              <span class="badge pull-right"><%=addL.size()%></span>
                              Computer Science
                            </a>
                            </li>

                            <%}
                            catch(Exception e)
                            {
                            System.out.println("Some problem in count");
                            }
                            %>

                            <%
                                        try
                                {

                                    ArrayList<Information> addL=Information.getProf("Mechanical");

                                        %>
                            <li class="active">
                              <a href="#">
                                <span class="badge pull-right"><%=addL.size()%></span>
                                Mechanical
                              </a>
                            </li class="active">
                            <%}
                            catch(Exception e)
                            {
                            System.out.println("Some problem in count");
                            }
                             %>  
  
                            <%
                                      try
                              {

                                  ArrayList<Information> addL=Information.getProf("Extc");

                            %>
  
  
                            <li class="active">
                              <a href="#">
                                <span class="badge pull-right"><%=addL.size()%></span>
                                Extc
                              </a>
                            </li>
                            <%}
                            catch(Exception e)
                            {
                            System.out.println("Some problem in count");
                            }
                             %>
                        </ul>
                    </div>


                    <!---tHIRD COLUMN--->
                        <div class="col-md-4">
                        <ul class="nav nav-pills nav-stacked" >

                                    <%
                                try
                        {

                            ArrayList<Information> addL=Information.getProf("Aerospace Engineering");

                                %>

                            <li class="active">
                              <a href="#" id="sub">
                                <span class="badge pull-right"><%=addL.size()%></span>
                                Aerospace Engineering
                              </a>
                            </li>

                            <%}
                            catch(Exception e)
                            {
                            System.out.println("Some problem in count");
                            }
                             %>

                                    <%
                                        try
                                {

                                    ArrayList<Information> addL=Information.getProf("Computer Science");

                                        %>
                            <li class="active">
                                <a  onclick="jsfunction('Computer Science')" href="javascript:void(0);">
                                <span class="badge pull-right"><%=addL.size()%></span>
                                Computer Science
                                </a>
                            </li>
                            <%}
                            catch(Exception e)
                            {
                            System.out.println("Some problem in count");
                            }
                            %>

                            <%
                            try
                            {
                            ArrayList<Information> addL=Information.getProf("Mechanical");
                            %>




                            <li class="active">
                             <a href="#">
                               <span class="badge pull-right"><%=addL.size()%></span>
                               Mechanical
                             </a>
                            </li class="active">
                            <%}
                            catch(Exception e)
                            {
                            System.out.println("Some problem in count");
                            }
                             %>  

                              <%
                                        try
                               {
                              ArrayList<Information> addL=Information.getProf("Extc");

                            %>


                            <li class="active">
                                <a href="#"><span class="badge pull-right"><%=addL.size()%></span>Extc
                                </a>
                            </li>  <%}
                            catch(Exception e)
                            {
                            System.out.println("Some problem in count");
                            }
                             %>
                        </ul>
                    </div>
                </div>

            </div>
        </div>


        <!--  dIVISION WHERE LIST OF PROF will be displayed :t10  -->
        <div id="t10">
        </div>

        <!--  dIVISION WHERE LIST OF LEC will be displayed :t20  -->
        <div id="t20" data-target="#t_list">
        </div>

    </div>
     
<!-- For scroll bar -->    
<script>
    $('div#scroll-able').scrollspy({ target: '#target_nav' });

    $('div#t_list').scrollspy();
</script> 
    
    

<!-- Ajax : To Load List of Prof in a particular Department  :  get.jsp contains that list-->
<script>
 
 function jsfunction(dept){
var xmlhttp;



if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("t10").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","get.jsp?department="+dept,true);
xmlhttp.send();


}
 </script>



<!-- Ajax : To Load List of Lectures by a Particular Prof :  get2.jsp contains that list -->

 <script>
 function jsfunction2(prof){
var xmlhttp;

if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("t20").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","get2.jsp?Prof="+prof,true);
xmlhttp.send();
}

 </script>
 
 
 
 
 
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
 
     


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
   
   
    <script src="js/jquery-1.10.2.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
 </body>

</html>