<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@page import="beans.Information"%>
<%@page import="java.util.ArrayList"%>
<head>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link  href="css/customcss.css" rel="stylesheet">
</head>
<body>


    <%String prof = request.getParameter("Prof");
    %>    

<center>
    <!-- <font face="Times New Roman" size="6"><i class="text-muted">List of Lectures by </i> Prof.  <b></b></font> -->
    <font face="myFontThin" size="6" class="title" style=" margin-top: 134px;">Lectures by </font><font face="myFontThick" size="19"><b> Prof. <%=prof%></b></font>
</center>






      <br>
            <div style="text-align: center; position: relative; width: 100%;height: auto; ">
                <center>
                    <div class="page2"  style="width: 700px;    ">          
                                 
<div class="list-group" id="panel2" style="margin-top: 80px;">


    <%
        try {

            // System.out.println("dept prof="+prof);
            ArrayList<Information> addL = Information.getLec(prof);
            session.setAttribute("Prof2", prof);
            Information a;
            for (int i = 0; i < addL.size(); i++) {
                a = addL.get(i);
            %>

            <a href="<%=a.lecPath%>" class="list-group-item list-lec" ><div align="left" style="position: relative;vertical-align: central;margin-top: 30px; float:left;display:inline-block;"><b><%=a.Lec%></b></div><div align="right" style="float:right;display:inline-block;position: relative;vertical-align: central; margin-top: 30px;"><%=a.date%></div></a>



    <%

                

            }

        } catch (Exception e) {
            System.out.println("Some prob inside get2");
        }
    %>	
</div>


                        <!-- /container -->
                    </div>
                </center>
            </div>
      
      
 </body>