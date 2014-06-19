<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="beans.Information"%>
<%@page import="java.util.ArrayList"%>
 <head>
 <link href="css/bootstrap.min.css" rel="stylesheet">
 </head>
 <body>
     
    <%
    String dept=request.getParameter("department");

    %>     
    <br>
        <font face="Bradley Hand ITC" size="6"><i class="text-muted">List of Prof. in Department </i> <b><%=dept%></b></font>
    <br>

     
     
    <div class="panel panel-primary">
        <div class="panel-body" id="scroll-able"  data-spy="scroll" data-target="#target_nav">
            <div class="table-responsive"  name="t10">  

                <table class="table"  id="target_nav">
                <tr><th>Courses</th><th>Faculty</th><th>Contents</th></tr>


                <%
                            try
                        {

                                         System.out.println("dept="+dept);
                        ArrayList<Information> addL=Information.getProf(dept);

                         Information a;           
                        for(int i=0;i<addL.size();i++)
                        {
                            a = addL.get(i);
                            %>		

                <tr><td id="<%=(i+1)%>"><%=dept%></td><td><%=a.Prof %></td><td><a onclick="jsfunction2('<%=a.Prof%>')"  href="javascript:void(0);">Available</a></td></tr>
                <%

                }
                }
                catch(Exception e)
                {
                System.out.println("Some prob inside get");
                }

                 %>		
                  </table> 

            </div>
        </div>
    </div>
</body>