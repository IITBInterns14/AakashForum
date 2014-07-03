<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.sql.Connection" %>
    
<% Class.forName("com.mysql.jdbc.Driver"); %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Analysis of Algorithms : D.B.Phatak</title>
</head>
<body>

<!--Header-->

  <%
   
  String name=(String)session.getAttribute("pass");
  session.setAttribute("DATE","Sunday 29/6/2014");
          %>
    <div class="container">
          <br>
        <div class="header">
            <div class="nav nav-pills pull-left" >
                    <img src="Images/mic_logo.png" alt="" width="80px" height="80px"/>
            </div>
              
            <form action="Login" method="post">
                 <ul class="nav nav-pills pull-right">
                    <li ><a href="index.jsp">Home</a></li>
                   <!-- <li class="active"><a href="#">Forum</a></li>-->

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
                    <li><a href="signup.jsp">Login</a></li>
                    <%
                    } %>

                  </ul>
            </form>
            <font face="Bradley Hand ITC" size="9"><b class="text-muted">iClass</b></font><font face="TimesNewRoman" size="9"><b>Forum</b></font>
        </div>
      

        <!-- MODAL -->
        <form action="" name="batti" method="post">

        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Answer here</h4>
              </div>
              <div class="modal-body">
                                <div class="input-group input-group-lg">
                                <span class="input-group-addon">
                                <span class="glyphicon glyphicon-pencil"></span>
                                </span>
                                <textarea class="form-control" id="currentans" name="mainanswer" rows="10" style="resize: vertical;">
                                </textarea>
                                </div>
              </div>
              <div class="modal-footer">
              <input type="text" id="hidden" name="maindata" value="JAI HO"/>
                <button type="button" class="btn btn-primary" onClick="saveAns()">Save Answer</button>
              </div>
            </div>
          </div>
        </div>



    </form>
    <!-- MODAL ENDS HERE -->


<div class="row">
    <div class="col-md-8 col-md-offset-2">
  <div>
                      <center>
                    <font face="Times New Roman" size="6"><b class="text-muted">Department of  </b><b>Computer Science</b></font>
                    <br>
        
                    <font face="Times New Roman" size="4">Prof.Kalidas	</font>
                    <br>

                            </center>   	
                       <br>
                       <br>
                           <font face="Bradley Hand ITC" size="6"><b> Bhoot </b></font>

                        <br>
                        <br>
</div>

            <% 
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/aakash", "root", "");
            Statement statement = connection.createStatement();
                   ResultSet resultset = statement.executeQuery("select * from qa24"); 

                   int i=0,no,ct=0;
                   String qid,bid,ansdivid,buttonid,delbuttonid,userid,answerid;

                   while(resultset.next())
                   {  	ct++;
                           no=resultset.getInt(1);
                           if(i<no)
                                   {i=no;}
                           qid="q"+no;
                           ansdivid="ans"+no;
                           bid="b"+no;
                           buttonid="button"+no;
                           delbuttonid="delbutton"+no;
                           userid="user"+no;
                           answerid="answer"+no;

           %>
        <!--  <form action="" method="get" name="batti" > -->
	    
	<div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">
                <div id=<%= userid %> style="font-style:bold ;font-size:15px; padding-left:25px ;text-shadow: 2px 2px 8px #6E6E6E">
	    	<%=resultset.getString(4) %>
                </div>
                </h3>
            </div>
            <div class="panel-body">
                <div id=<%=qid %> style="text-align:center ;padding-bottom:15px;font-size:20px;font-style:italic">
			<%=resultset.getString(2) %><br>
		</div>
	    	<div class="panel panel-default" id=<%=ansdivid %> >
  				<div class="panel-body" >
   			 		<p id=<%=answerid %>><%=resultset.getString(3)%></p>
 		 		</div>
		</div>
		<div id=<%=bid %>  style="padding-top:15px">
			 <% String condition=(String)session.getAttribute("pass");
                                String prof1=(String)session.getAttribute("Prof");
                                String prof2=(String)session.getAttribute("Prof2");

                               // out.println("Lec="+condition);

                               // out.println("prof1="+prof1);
                              // out.println("prof2="+prof2);
                               // System.out.println("Lec="+condition);
                                if(condition!=null && prof1.equals(prof2) )
                                {
                                %>       

                                <input type="button" class="btn btn-primary btn-sm" style="float:right;display:inline" value="Delete" onClick="delQues(this.id)" id=<%=delbuttonid %> "/>
                                <input type="button" class="btn btn-primary btn-sm" style="float:left;display:inline" data-toggle="modal" value="Answer" data-target="#myModal" onClick="myfunc(this.id)" id=<%=buttonid %> "/>
                                <%  }
                                %>
         
		</div>
            </div>
        </div>
	
	   
		
        <% } %>

               <form action="" name="delform" method="post" style="visibility:hidden">

               <input type="text" id= "delfieldid" name="delfield" value="Namastey" />
               <input type="text" id= "futureid" name="futurefield" value="London" />
               </form>


        <span id ="debug" style="visibility:hidden">Hello </span>

    </div>
</div>    
	    
 
</div>
 
 </div>
 </div>
 </div>
 <script type="text/javascript">
	 count=<%=ct%>;
	 debugging=document.getElementById("debug");
	 debugging.innerHTML="Count is"+count;
	 hid=document.getElementById("hidden");
	 hid.style.display='none';
	 
	 for (x=1;x<=count;x++)
	 {	
		 y=document.getElementById("answer"+x);
		 debug.innerHTML+=y.innerHTML;
		 z=document.getElementById("button"+x);
		 if(y!=null && y.innerHTML=="")
		 {
		 document.getElementById("ans"+x).style.display='none';
		 }
		 
		 else
			 {
			 if(z!=null){
			 z.value="Edit Answer";
			 }
			 }
	 }

	 function myfunc(clicked_id){
		 
		 hid.value=clicked_id;
		 quesid=clicked_id.replace("button","q");
		 ansid=clicked_id.replace("button","answer");
		 
		 question=document.getElementById(quesid).innerHTML;
		 answer=document.getElementById(ansid).innerHTML;
		 
		 answer.replace("  ","");
		 question.replace("  ","");
		 
		 document.getElementById("myModalLabel").innerHTML=question;
		 document.getElementById("currentans").value=answer;
		 
	 }
	 
	
	 function saveAns()
	 {
		 document.batti.submit();
		 
		 <%
		 String clid= request.getParameter("maindata");
		 if(clid!=null)
		 {
		 String tobeanswered =clid.replace("button","");
		 System.out.println(tobeanswered);
		 String answer= request.getParameter("mainanswer");
		 
		 Statement stmt = connection.createStatement();
			String query="update qa24 set ans ='"+answer+"' where id='"+tobeanswered+"'";
			
		    stmt.executeUpdate(query) ;
		    
		 response.sendRedirect("lec15.jsp#user"+tobeanswered);
		 
		 
		 }
		 %>
	 }
	 
	 

	 function delQues(clicked_id)
	 {
		 
		 document.getElementById("delfieldid").value=clicked_id;
		 
		 
			 document.getElementById("futureid").value="yesssssssss";
		  v=parseInt(clicked_id.replace("delbutton",""))+1;
		 while(document.getElementById("user"+v)==null && v<count)
			 {
			 v++;
			 document.getElementById("futureid").value="user"+v;
			 }
		 if(clicked_id=="delbutton"+count)
			 {
			 v=parseInt(clicked_id.replace("delbutton",""))-1;
			 }
		document.getElementById("futureid").value="user"+v;
			 
		 document.delform.submit();
		 
		 <%
		 
		 String delid= request.getParameter("delfield");
		 if(delid!=null)
		 {
		 String tobedel =delid.replace("delbutton","");
		 System.out.println("Deleting "+tobedel);
		 		 
		 Statement stmt1 = connection.createStatement();
			String query1="delete from qa24 where id='"+tobedel+"'";
			
		    stmt1.executeUpdate(query1) ;
		    String futid= request.getParameter("futurefield");
		 response.sendRedirect("lec15.jsp#"+futid);
		 
		 
		 }
		 
		 %>
		 
	 }
	 
	 
	 </script>
	

</body>
</html> 
