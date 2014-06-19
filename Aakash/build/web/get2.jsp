<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@page import="beans.Information"%>
<%@page import="java.util.ArrayList"%>
<head>
 <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <%String prof=request.getParameter("Prof");
    %>    
    
    <br>
    <font face="Bradley Hand ITC" size="6"><i class="text-muted">List of Lectures by </i> Prof.  <b><%=prof%></b></font>
    <br>
    <div class="list-group" id="t_list">


        <%
                    try
                {

        // System.out.println("dept prof="+prof);
         ArrayList<Information> addL=Information.getLec(prof);
        session.setAttribute("Prof2",prof);        
                 Information a;           
                for(int i=0;i<addL.size();i++)
                {
                    a = addL.get(i);
        if(i%2==0){           

        %>		

          <a href="<%=a.lecPath %>" class="list-group-item list-group-item-danger"><%=a.Lec %></a>

          <%
        }
        else{
            %>
          <a href="<%=a.lecPath %>" class="list-group-item list-group-item-success"><%=a.Lec %></a>


            <%

        }
        }
        }
        catch(Exception e)
        {
        System.out.println("Some prob inside get2");
        }
         %>	
    </div>
</body>