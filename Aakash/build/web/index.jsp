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
        <link  href="css/customcss.css" rel="stylesheet">
        <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script> 

        <script>


            $(window).scroll(function() {
                scroll(0, 0);
            });

        </script>
        <!-- Ajax : To Load List of Prof in a particular Department  :  get.jsp contains that list-->
        <script>
            document.getElementById("button1").style.visibility = "hidden";

            document.getElementById("button2").style.visibility = "hidden";

            function jsfunction(dept) {
                var xmlhttp;


                document.getElementById("button1").style.visibility = "visible";


                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp = new XMLHttpRequest();
                }
                else
                {// code for IE6, IE5
                    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange = function()
                {
                    if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                    {
                        document.getElementById("profList").innerHTML = xmlhttp.responseText;
                    }
                }
                xmlhttp.open("GET", "get.jsp?department=" + dept, true);
                xmlhttp.send();
                $('.page1').animate({left: '-120%'}, 1000);
                $('div#profList').animate({left: '10%'}, 1000);



            }

            function back1() {

                document.getElementById("button1").style.visibility = "hidden";


                $('div#profList').animate({left: '120%'}, 1000);
                $('.page1').animate({left: '10%'}, 1000);



            }
            function back2() {


                document.getElementById("button2").style.visibility = "hidden";

                $('div#lecList').animate({left: '120%'}, 1000);
                document.getElementById("button1").style.visibility = "visible";

                $('div#profList').animate({left: '10%'}, 1000);

            }
        </script>



        <!-- Ajax : To Load List of Lectures by a Particular Prof :  get2.jsp contains that list -->

        <script>
            function jsfunction2(prof) {
                var xmlhttp;

                document.getElementById("button1").style.visibility = "hidden";

                document.getElementById("button2").style.visibility = "visible";

                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp = new XMLHttpRequest();
                }
                else
                {// code for IE6, IE5
                    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange = function()
                {
                    if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                    {
                        document.getElementById("lecList").innerHTML = xmlhttp.responseText;
                    }
                }
                xmlhttp.open("GET", "get2.jsp?Prof=" + prof, true);
                xmlhttp.send();

                $('div#profList').animate({left: '-120%'}, 1000);
                $('div#lecList').animate({left: '10%'}, 1000);

            }

        </script>





       <!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script> -->



        <!-- For scroll bar -->    
        <script>
             $('div#panel1').scrollspy({target: '#target_nav'});

             $('div#panel2').scrollspy();
        </script> 



    </head>

    <body>

        <%

            String name = (String) session.getAttribute("inserted");
            if (name != null) {
                session.setAttribute("pass", name);
            }
            // System.out.println("Name="+name);
            //  out.println("Name="+name);

        %>

        <div class="container">
            <br>
            <!--HEADER -->
            <div class="header">
                <a href="index.jsp" style="color: #000;"> <ul class="nav nav-pills pull-left" >
                    <li id="brand_icon">       <img src="Images/mic_logo.png" alt="" width="80px" height="80px"/></li>
                    <li id="brand_name"> <p class="title"><span style="font-size: 70px;">|</span> iClass <strong>Forum</strong></p></li>

                </ul></a>
                <!--   <p class="title1">iClass</p>&nbsp;&nbsp;<p class="title2">Forum</p> 
                -->
                <form action="Login" method="post">

                    <ul class="nav nav-pills pull-right" style="margin-top: 35px">
                        <li class="active"><a href="index.jsp">Home</a></li>
                        <li><a href="contactus.jsp">Contact Us</a></li>

                        <%if (name != null) {
                            try {%>

                        <li><a href="logout.jsp">Logout</a></li>
                        <li style="margin-top: 10px;color: dodgerblue">Welcome <%=name%></li>

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
            <div class="page1" >          
                <center>

                    <font face="myFontThin" size="6" class="title">Choose your </font><font face="myFontThick" size="19"><b> department</b></font>
                </center>
                <br>
                <div class="panel panel-primary" style="margin-top: 50px">



                    <!--  pANEL OF DEPARTMENTS -->
                    <div class="panel-body">

                        <div class="row">
                            <%
                                try {
                                    ArrayList<Information> addL = Information.getDeptList();



                                    int Total = addL.size();
                                    int col1, col2, col3, modulo;
                                    col1 = col2 = col3 = Total / 3;
                                    modulo = Total % 3;
                                    if (modulo == 2) {
                                        col1 += 1;
                                        col2 += 1;
                                    } else if (modulo == 1) {
                                        col1 += 1;
                                    }
                            %> 
                            <!-- fIRST COLUMN-->   
                            <div class="col-md-4">
                                <ul class="nav nav-pills nav-stacked" >

                                    <%
                                        for (int i = 0; i < col1; i++) {
                                            Information a = new Information();
                                            a = addL.get(i);
                                            ArrayList<Information> addP = Information.getProf(a.dept);
                                    %>        


                                    <li class="active">
                                        <a onclick="jsfunction('<%=a.dept%>')" href="javascript:void();">
                                            <span class="badge pull-right"><%=addP.size()%></span>
                                            <%=a.dept%>
                                        </a>
                                    </li>

                                    <%}
                                    %>

                                </ul>
                            </div>
                            <!--sECOND COLUMN -->
                            <div class="col-md-4">
                                <ul class="nav nav-pills nav-stacked" >

                                    <%
                                        for (int i = col1; i < (col1 + col2); i++) {
                                            Information a = new Information();
                                            a = addL.get(i);
                                            ArrayList<Information> addP = Information.getProf(a.dept);


                                    %>        


                                    <li class="active">
                                        <a onclick="jsfunction('<%=a.dept%>')" href="javascript:void();">
                                            <span class="badge pull-right"><%=addP.size()%></span>
                                            <%=a.dept%>
                                        </a>
                                    </li>

                                    <%
                                        }
                                    %>

                                </ul>
                            </div>
                            <!---tHIRD COLUMN--->
                            <div class="col-md-4">
                                <ul class="nav nav-pills nav-stacked" >

                                    <%


                                        for (int i = (col1 + col2); i < (col1 + col2 + col3); i++) {
                                            Information a = new Information();
                                            a = addL.get(i);
                                            ArrayList<Information> addP = Information.getProf(a.dept);


                                    %>        


                                    <li class="active">
                                        <a onclick="jsfunction('<%=a.dept%>')" href="javascript:void();">
                                            <span class="badge pull-right"><%=addP.size()%></span>
                                            <%=a.dept%>
                                        </a>
                                    </li>

                                    <%
                                        }
                                    %>

                                </ul>
                            </div>
                            <%
                                } catch (Exception e) {
                                    System.out.println("SOme problem in deptlist");
                                }

                            %>
                        </div>

                    </div>
                </div>

            </div>
            <br>


            <!--  dIVISION WHERE LIST OF PROF will be displayed :t10  -->

            <div id="profList" style=" margin-top: 134px;">
            </div>

            <a href="#" onclick="back1();" id="button1" style="visibility:hidden">
                <img src="Images/back.png" align="left" height="50px" width="50px" >
            </a>

            <div id="scroll_here2"> </div>
            <a href="#" onclick="back2();" id="button2" style="visibility:hidden">
                <img src="Images/back.png" align="left" height="50px" width="50px" >
            </a>

            <!--  dIVISION WHERE LIST OF LEC will be displayed :lecList -->
            <div id="lecList"  style=" margin-top: 134px;">
            </div>
            <div id="scroll_here"> </div>


        </div>


        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->


        <script src="js/jquery-1.10.2.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
    </body>

</html>