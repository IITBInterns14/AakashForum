
import beans.Information;
import java.io.*;
import java.util.ArrayList;

/**
 *
 * @author mohit
 */
public class AakashForumServer {

   static  String prof;
   static  String dept;
   static  String sub;
   static  String topic;
   static  ArrayList<String> user=new ArrayList<String>();
   static  ArrayList<String> doubt=new ArrayList<String>();
   static ArrayList<String> text=new ArrayList<String>();
   static String fileName="lec";
   static String path="c:\\Users\\mohit\\Desktop\\print41.txt";
   static String date;
  
   private static int sessionId=0;
   public AakashForumServer(String path,int fileNo)
   {
   this.path=path;
   fileName="lec"+fileNo;
  
   try {
             //    File file = new File("c:\\Users\\mohit\\Desktop\\print39.txt");
                   File file = new File(path);
                    
                    BufferedReader in = new BufferedReader(new FileReader(file));
                    String line;
                    int i=0;
                    while ((line = in.readLine()) != null) {
                       
                        
                        String[] lineArray = line.split(":");
                        
                        if(i>=6){
                        lineArray = line.split(":");
                        }
                        if (lineArray.length > 0) {
                            //ADD YOUR CODE HERE
                          
                            if(i==0)
                            prof=lineArray[1];
                            if(i==1)
                            dept=lineArray[1];
                            if(i==2)
                            sub=lineArray[1];
                            if(i==3)
                            topic=lineArray[1];
                            if(i==4)
                                date=lineArray[1];
                            if(i>=6)
                            {
                            user.add(lineArray[0]);
                            doubt.add(lineArray[1]);
                            text.add(lineArray[2]);
                            }
                                
                        
                        
                        
                        }

                        
                    i++;
                    }
                }
                
                catch (Exception e){
                    
                }
              
                prof = prof.replaceAll("\\s+$", "");
                prof = prof.replaceAll("^\\s+", "");
               
                dept = dept.replaceAll("\\s+$", "");
                dept = dept.replaceAll("^\\s+", "");
                sub = sub.replaceAll("\\s+$", "");
                sub = sub.replaceAll("^\\s+", "");
                topic = topic.replaceAll("\\s+$", "");
                topic = topic.replaceAll("^\\s+", "");
               
                path = path.replaceAll("\\s+$", "");
                path = path.replaceAll("^\\s+", "");
               
                
                
                Information a=new Information();
                a.Prof=prof;
                a.Dept=dept;
                a.Lec=topic;
                a.lecPath=fileName+".jsp";
                
                a.user=user;
                a.doubt=doubt;
                a.text=text;
                a.date=this.date;
               Information.insertDepartment(a);
               Information.insertLec(a);
               Information.insertTable(a);
               Information.insertQA(a);
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
    	try {
 
	    
            sessionId=Information.getSessionId();
            
            PrintWriter writer = new PrintWriter("C:\\Users\\Lavish\\Documents\\NetBeansProjects\\iClassForum\\web\\"+fileName+".jsp", "UTF-8");
         //   PrintWriter writer = new PrintWriter("C:\\Users\\Mohit\\Documents\\NetBeansProjects\\Aakash\\web\\lec4.jsp", "UTF-8");
            
                writer.println("<%@ page language=\"java\" contentType=\"text/html; charset=ISO-8859-1\"\n" +
"    pageEncoding=\"ISO-8859-1\"%>\n" +
"    <%@ page import=\"java.sql.*\" %>\n" +
"    <%@ page import=\"java.sql.Connection\" %>\n" +
"    \n" +
"<% Class.forName(\"com.mysql.jdbc.Driver\"); %>\n" +
"    \n" +
"    \n" +
"<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n" +
"<html>\n" +
"<head>\n" +
" <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n" +
"        <!-- Bootstrap css online -->\n" +
"     <script src=\"js/bootstrap.min.js\"></script> \n"+
"   <link rel=\"stylesheet\" href=\"http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css\">\n" +
"        <link  href=\"css/customcss.css\" rel=\"stylesheet\">\n" +
"        <script type=\"text/javascript\" src=\"js/jquery-1.10.2.min.js\"></script> \n" +
"\n" +
"<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\n" +
"<title>Analysis of Algorithms : D.B.Phatak</title>\n" +
"</head>\n" +
"<body>\n" +
"\n" +
"<!--Header-->\n" +
"\n" +
"  <%\n" +
"   \n" +
"  String name=(String)session.getAttribute(\"pass\");\n" +
"          %>\n" +
"    <div class=\"container\">\n" +
"             <br>\n" +
"            <!--HEADER -->\n" +
"            <div class=\"header\">\n" +
"                <a href=\"index.jsp\" style=\"color: #000;\"> <ul class=\"nav nav-pills pull-left\" >\n" +
"                    <li id=\"brand_icon\">       <img src=\"Images/mic_logo.png\" alt=\"\" width=\"80px\" height=\"80px\"/></li>\n" +
"                    <li id=\"brand_name\"> <p class=\"title\"><span style=\"font-size: 70px;\">|</span> iClass <strong>Forum</strong></p></li>\n" +
"\n" +
"                </ul></a>\n" +
"                <!--   <p class=\"title1\">iClass</p>&nbsp;&nbsp;<p class=\"title2\">Forum</p> \n" +
"                -->\n" +
"                <form action=\"Login\" method=\"post\">\n" +
"\n" +
"                    <ul class=\"nav nav-pills pull-right\" style=\"margin-top: 35px\">\n" +
"                        <li><a href=\"index.jsp\">Home</a></li>\n" +
"                        <li><a href=\"contactus.jsp\">Contact Us</a></li>\n" +
"\n" +
"                        <%if (name != null) {\n" +
"                            try {%>\n" +
"\n" +
"                        <li><a href=\"logout.jsp\">Logout</a></li>\n" +
"                        <li style=\"margin-top: 10px\">Welcome <%=name%></li>\n" +
"\n" +
"                        <%} catch (Exception e) {\n" +
"\n" +
"                                System.out.println(\"Problem :\" + e);\n" +
"\n" +
"                            }\n" +
"\n" +
"\n" +
"                        } else {\n" +
"                        %>\n" +
"\n" +
"                        <li><a href=\"signup.jsp\">Login</a></li>\n" +
"\n" +
"                        <%                        }%>\n" +
"\n" +
"                    </ul>\n" +
"                </form>\n" +
"\n" +
"\n" +
"            </div>\n" +
"\n" +
"\n" +
"\n" +
"            <br>\n" +
"         \n" +
"      \n" +
"\n" +
"        <!-- MODAL -->\n" +
"        <form action=\"\" name=\"batti\" method=\"post\">\n" +
"\n" +
"        <div class=\"modal fade\" id=\"myModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">\n" +
"          <div class=\"modal-dialog\">\n" +
"            <div class=\"modal-content\">\n" +
"              <div class=\"modal-header\">\n" +
"                <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\n" +
"                <h4 class=\"modal-title\" id=\"myModalLabel\">Answer here</h4>\n" +
"              </div>\n" +
"              <div class=\"modal-body\">\n" +
"                                <div class=\"input-group input-group-lg\">\n" +
"                                <span class=\"input-group-addon\">\n" +
"                                <span class=\"glyphicon glyphicon-pencil\"></span>\n" +
"                                </span>\n" +
"                                <textarea class=\"form-control\" id=\"currentans\" name=\"mainanswer\" rows=\"10\" style=\"resize: vertical;\">\n" +
"                                </textarea>\n" +
"                                </div>\n" +
"              </div>\n" +
"              <div class=\"modal-footer\">\n" +
"              <input type=\"text\" id=\"hidden\" name=\"maindata\" value=\"JAI HO\"/>\n" +
"                <button type=\"button\" class=\"btn btn-primary\" onClick=\"saveAns()\">Save Answer</button>\n" +
"              </div>\n" +
"            </div>\n" +
"          </div>\n" +
"        </div>\n" +
"\n" +
"\n" +
"\n" +
"    </form>\n" +
"    <!-- MODAL ENDS HERE -->\n" +
"\n" +
"<div class=\"page1\" >          \n" +
"                <center>\n" +
"\n" +
"                    <font face=\"myFontThin\" size=\"6\" class=\"title\">Department of  </font><font face=\"myFontThick\" size=\"8\"><b>"+dept+"</b></font>\n" +
"                <br>\n" +
"                   <font face=\"myFontThick\" size=\"5\">Prof. "+prof+"</font>\n" +
"                \n" +

"                <br> <br>  <font face=\"myFontThick\" size=\"6\"><b> "+topic+" </b></font>\n" +
                
"                </center>\n" +
				"<br><br><br>\n" +
"                        \n" +
"\n" +
"\n" +
"            <% \n" +
"            Connection connection = DriverManager.getConnection(\"jdbc:mysql://localhost/aakash\", \"root\", \"lavikothari\");\n" +
"            Statement statement = connection.createStatement();\n" +
"                   ResultSet resultset = statement.executeQuery(\"select * from qa"+sessionId+";\") ; \n" +
"\n" +
"                   int i=0,no,ct=0;\n" +
"                   String qid,bid,ansdivid,buttonid,delbuttonid,userid,answerid;\n" +
"\n" +
"                   while(resultset.next())\n" +
"                   {  	ct++;\n" +
"                           no=resultset.getInt(1);\n" +
"                           if(i<no)\n" +
"                                   {i=no;}\n" +
"                           qid=\"q\"+no;\n" +
"                           ansdivid=\"ans\"+no;\n" +
"                           bid=\"b\"+no;\n" +
"                           buttonid=\"button\"+no;\n" +
"                           delbuttonid=\"delbutton\"+no;\n" +
"                           userid=\"user\"+no;\n" +
"                           answerid=\"answer\"+no;\n" +
"\n" +
"           %>\n" +
"        <!--  <form action=\"\" method=\"get\" name=\"batti\" > -->\n" +
"	    \n" +
"	<div class=\"panel panel-default\">\n" +
"            <div class=\"panel-heading\">\n" +
"                <h3 class=\"panel-title\">\n" +
"                <div id=<%= userid %> style=\"font-style:bold ;font-size:15px; padding-left:0.5px ;text-shadow: 2px 2px 8px #6E6E6E\">\n" +
"	    	<%=resultset.getString(4) %>\n" +
"                </div>\n" +
"                </h3>\n" +
"            </div>\n" +
"            <div class=\"panel-body\">\n" +
"                <div id=<%=qid %> style=\"text-align:left ;font-size:20px;font-style:italic\">\n" +
"			<%=resultset.getString(2) %><br><br>\n" +
"		</div>\n" +
"	    	<div class=\"panel panel-default\" id=<%=ansdivid %> >\n" +
"  				<div class=\"panel-body\" >\n" +
"   			 		<p id=<%=answerid %>><%=resultset.getString(3)%></p>\n" +
" 		 		</div>\n" +
"		</div>\n" +
"		<div id=<%=bid %> >\n" +
"			 <% String condition=(String)session.getAttribute(\"pass\");\n" +
"                                String prof1=(String)session.getAttribute(\"Prof\");\n" +
"                                String prof2=(String)session.getAttribute(\"Prof2\");\n" +
"\n" +
"                               // out.println(\"Lec=\"+condition);\n" +
"\n" +
"                               // out.println(\"prof1=\"+prof1);\n" +
"                              // out.println(\"prof2=\"+prof2);\n" +
"                               // System.out.println(\"Lec=\"+condition);\n" +
"                                if(condition!=null && prof1.equals(prof2) )\n" +
"                                {\n" +
"                                %>       \n" +
"\n" +
"                                <input type=\"button\" class=\"btn btn-primary btn-sm\" style=\"float:right;display:inline\" value=\"Delete\" onClick=\"delQues(this.id)\" id=<%=delbuttonid %> />\n" +
"                                <input type=\"button\" class=\"btn btn-primary btn-sm\" style=\"float:left;display:inline\" data-toggle=\"modal\" value=\"Answer\" data-target=\"#myModal\" onClick=\"myfunc(this.id)\" id=<%=buttonid %> />\n" +
"                                <%  }\n" +
"                                %>\n" +
"         \n" +
"		</div>\n" +
"            </div>\n" +
"        </div>\n" +
"	\n" +
"	   \n" +
"		\n" +
"        <% } %>\n" +
"\n" +
"               <form action=\"\" name=\"delform\" method=\"post\" style=\"visibility:hidden\">\n" +
"\n" +
"               <input type=\"text\" id= \"delfieldid\" name=\"delfield\" value=\"Namastey\" />\n" +
"               <input type=\"text\" id= \"futureid\" name=\"futurefield\" value=\"London\" />\n" +
"               </form>\n" +
"\n" +
"\n" +
"        <span id =\"debug\" style=\"visibility:hidden\">Hello </span>\n" +
"\n" +
"    </div>\n" +
"</div>    \n" +
"	    \n" +
" \n" +
"</div>\n" +
" \n" +
" </div>\n" +
"        \n" +
" \n" +
" <script type=\"text/javascript\">\n" +
"	 count=<%=ct%>;\n" +
"	 debugging=document.getElementById(\"debug\");\n" +
"	 debugging.innerHTML=\"Count is\"+count;\n" +
"	 hid=document.getElementById(\"hidden\");\n" +
"	 hid.style.display='none';\n" +
"	 \n" +
"	 for (x=1;x<=count;x++)\n" +
"	 {	\n" +
"		 y=document.getElementById(\"answer\"+x);\n" +
"		 debug.innerHTML+=y.innerHTML;\n" +
"		 z=document.getElementById(\"button\"+x);\n" +
"		 if(y!=null && y.innerHTML==\"\")\n" +
"		 {\n" +
"		 document.getElementById(\"ans\"+x).style.display='none';\n" +
"		 }\n" +
"		 \n" +
"		 else\n" +
"			 {\n" +
"			 if(z!=null){\n" +
"			 z.value=\"Edit Answer\";\n" +
"			 }\n" +
"			 }\n" +
"	 }\n" +
"\n" +
"	 function myfunc(clicked_id){\n" +
"		 \n" +
"		 hid.value=clicked_id;\n" +
"		 quesid=clicked_id.replace(\"button\",\"q\");\n" +
"		 ansid=clicked_id.replace(\"button\",\"answer\");\n" +
"		 \n" +
"		 question=document.getElementById(quesid).innerHTML;\n" +
"		 answer=document.getElementById(ansid).innerHTML;\n" +
"		 \n" +
"		 answer.replace(\"  \",\"\");\n" +
"		 question.replace(\"  \",\"\");\n" +
"		 \n" +
"		 document.getElementById(\"myModalLabel\").innerHTML=question;\n" +
"		 document.getElementById(\"currentans\").value=answer;\n" +
"		 \n" +
"	 }\n" +
"	 \n" +
"	\n" +
"	 function saveAns()\n" +
"	 {\n" +
"		 document.batti.submit();\n" +
"		 \n" +
"		 <%\n" +
"		 String clid= request.getParameter(\"maindata\");\n" +
"		 if(clid!=null)\n" +
"		 {\n" +
"		 String tobeanswered =clid.replace(\"button\",\"\");\n" +
"		 System.out.println(tobeanswered);\n" +
"		 String answer= request.getParameter(\"mainanswer\");\n" +
"		 \n" +
"		 Statement stmt = connection.createStatement();\n" +
"			String query=\"update qa"+sessionId+" set ans ='\"+answer+\"' where id='\"+tobeanswered+\"';\";\n" +
"			\n" +
"		    stmt.executeUpdate(query) ;\n" +
"		    \n" +
"		 response.sendRedirect(\""+fileName+".jsp#user\"+tobeanswered);\n" +
"		 \n" +
"		 \n" +
"		 }\n" +
"		 %>\n" +
"	 }\n" +
"	 \n" +
"	 \n" +
"\n" +
"	 function delQues(clicked_id)\n" +
"	 {\n" +
"		 \n" +
"		 document.getElementById(\"delfieldid\").value=clicked_id;\n" +
"		 \n" +
"		 \n" +
"			 document.getElementById(\"futureid\").value=\"yesssssssss\";\n" +
"		  v=parseInt(clicked_id.replace(\"delbutton\",\"\"))+1;\n" +
"		 while(document.getElementById(\"user\"+v)==null && v<count)\n" +
"			 {\n" +
"			 v++;\n" +
"			 document.getElementById(\"futureid\").value=\"user\"+v;\n" +
"			 }\n" +
"		 if(clicked_id==\"delbutton\"+count)\n" +
"			 {\n" +
"			 v=parseInt(clicked_id.replace(\"delbutton\",\"\"))-1;\n" +
"			 }\n" +
"		document.getElementById(\"futureid\").value=\"user\"+v;\n" +
"			 \n" +
"		 document.delform.submit();\n" +
"		 \n" +
"		 <%\n" +
"		 \n" +
"		 String delid= request.getParameter(\"delfield\");\n" +
"		 if(delid!=null)\n" +
"		 {\n" +
"		 String tobedel =delid.replace(\"delbutton\",\"\");\n" +
"		 System.out.println(\"Deleting \"+tobedel);\n" +
"		 		 \n" +
"		 Statement stmt1 = connection.createStatement();\n" +
"			String query1=\"delete from qa"+sessionId+" where id='\"+tobedel+\"';\";\n" +
"			\n" +
"		    stmt1.executeUpdate(query1) ;\n" +
"		    String futid= request.getParameter(\"futurefield\");\n" +
"		 response.sendRedirect(\""+fileName+".jsp#\"+futid);\n" +
"		 \n" +
"		 \n" +
"		 }\n" +
"		 \n" +
"		 %>\n" +
"		 \n" +
"	 }\n" +
"	 \n" +
"	 \n" +
"	 </script>\n" +
"	\n" +
"\n" +
"</body>\n" +
"</html> ");
                 writer.close();
 
            } 
            catch (Exception e) {
	      e.printStackTrace();
            }
                
      
                
        }
}
