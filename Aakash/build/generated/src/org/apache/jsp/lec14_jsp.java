package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.Connection;

public final class lec14_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
 Class.forName("com.mysql.jdbc.Driver"); 
      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write(" <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <!-- Bootstrap css online -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css\">\n");
      out.write("        <link  href=\"css/customcss.css\" rel=\"stylesheet\">\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery-1.10.2.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\n");
      out.write("<title>Analysis of Algorithms : D.B.Phatak</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<!--Header-->\n");
      out.write("\n");
      out.write("  ");

   
  String name=(String)session.getAttribute("pass");
          
      out.write("\n");
      out.write("    <div class=\"container\">\n");
      out.write("             <br>\n");
      out.write("            <!--HEADER -->\n");
      out.write("            <div class=\"header\">\n");
      out.write("                <a href=\"index.jsp\" style=\"color: #000;\"> <ul class=\"nav nav-pills pull-left\" >\n");
      out.write("                    <li id=\"brand_icon\">       <img src=\"Images/mic_logo.png\" alt=\"\" width=\"80px\" height=\"80px\"/></li>\n");
      out.write("                    <li id=\"brand_name\"> <p class=\"title\"><span style=\"font-size: 70px;\">|</span> iClass <strong>Forum</strong></p></li>\n");
      out.write("\n");
      out.write("                </ul></a>\n");
      out.write("                <!--   <p class=\"title1\">iClass</p>&nbsp;&nbsp;<p class=\"title2\">Forum</p> \n");
      out.write("                -->\n");
      out.write("                <form action=\"Login\" method=\"post\">\n");
      out.write("\n");
      out.write("                    <ul class=\"nav nav-pills pull-right\" style=\"margin-top: 35px\">\n");
      out.write("                        <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                        <li><a href=\"contactus.jsp\">Contact Us</a></li>\n");
      out.write("\n");
      out.write("                        ");
if (name != null) {
                            try {
      out.write("\n");
      out.write("\n");
      out.write("                        <li><a href=\"logout.jsp\">Logout</a></li>\n");
      out.write("                        <li style=\"margin-top: 10px\">Welcome ");
      out.print(name);
      out.write("</li>\n");
      out.write("\n");
      out.write("                        ");
} catch (Exception e) {

                                System.out.println("Problem :" + e);

                            }


                        } else {
                        
      out.write("\n");
      out.write("\n");
      out.write("                        <li><a href=\"signup.jsp\">Login</a></li>\n");
      out.write("\n");
      out.write("                        ");
                        }
      out.write("\n");
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                </form>\n");
      out.write("\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <br>\n");
      out.write("         \n");
      out.write("      \n");
      out.write("\n");
      out.write("        <!-- MODAL -->\n");
      out.write("        <form action=\"\" name=\"batti\" method=\"post\">\n");
      out.write("\n");
      out.write("        <div class=\"modal fade\" id=\"myModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">\n");
      out.write("          <div class=\"modal-dialog\">\n");
      out.write("            <div class=\"modal-content\">\n");
      out.write("              <div class=\"modal-header\">\n");
      out.write("                <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\n");
      out.write("                <h4 class=\"modal-title\" id=\"myModalLabel\">Answer here</h4>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"modal-body\">\n");
      out.write("                                <div class=\"input-group input-group-lg\">\n");
      out.write("                                <span class=\"input-group-addon\">\n");
      out.write("                                <span class=\"glyphicon glyphicon-pencil\"></span>\n");
      out.write("                                </span>\n");
      out.write("                                <textarea class=\"form-control\" id=\"currentans\" name=\"mainanswer\" rows=\"10\" style=\"resize: vertical;\">\n");
      out.write("                                </textarea>\n");
      out.write("                                </div>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"modal-footer\">\n");
      out.write("              <input type=\"text\" id=\"hidden\" name=\"maindata\" value=\"JAI HO\"/>\n");
      out.write("                <button type=\"button\" class=\"btn btn-primary\" onClick=\"saveAns()\">Save Answer</button>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </form>\n");
      out.write("    <!-- MODAL ENDS HERE -->\n");
      out.write("\n");
      out.write("<div class=\"page1\" >          \n");
      out.write("                <center>\n");
      out.write("\n");
      out.write("                    <font face=\"myFontThin\" size=\"6\" class=\"title\">Department of  </font><font face=\"myFontThick\" size=\"8\"><b>Computer Science</b></font>\n");
      out.write("                <br>\n");
      out.write("                   <font face=\"myFontThick\" size=\"5\">Prof. sunil</font>\n");
      out.write("                \n");
      out.write("                </center>\n");
      out.write("                <br> <br>  <font face=\"myFontThick\" size=\"6\"><b> bbbbbb </b></font>\n");
      out.write("<br><br><br>\n");
      out.write("                        \n");
      out.write("\n");
      out.write("\n");
      out.write("            ");
 
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/aakash", "root", "lavikothari");
            Statement statement = connection.createStatement();
                   ResultSet resultset = statement.executeQuery("select * from qa27;") ; 

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

           
      out.write("\n");
      out.write("        <!--  <form action=\"\" method=\"get\" name=\"batti\" > -->\n");
      out.write("\t    \n");
      out.write("\t<div class=\"panel panel-default\">\n");
      out.write("            <div class=\"panel-heading\">\n");
      out.write("                <h3 class=\"panel-title\">\n");
      out.write("                <div id=");
      out.print( userid );
      out.write(" style=\"font-style:bold ;font-size:15px; padding-left:0.5px ;text-shadow: 2px 2px 8px #6E6E6E\">\n");
      out.write("\t    \t");
      out.print(resultset.getString(4) );
      out.write("\n");
      out.write("                </div>\n");
      out.write("                </h3>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"panel-body\">\n");
      out.write("                <div id=");
      out.print(qid );
      out.write(" style=\"text-align:left ;font-size:20px;font-style:italic\">\n");
      out.write("\t\t\t");
      out.print(resultset.getString(2) );
      out.write("<br><br>\n");
      out.write("\t\t</div>\n");
      out.write("\t    \t<div class=\"panel panel-default\" id=");
      out.print(ansdivid );
      out.write(" >\n");
      out.write("  \t\t\t\t<div class=\"panel-body\" >\n");
      out.write("   \t\t\t \t\t<p id=");
      out.print(answerid );
      out.write('>');
      out.print(resultset.getString(3));
      out.write("</p>\n");
      out.write(" \t\t \t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div id=");
      out.print(bid );
      out.write(" >\n");
      out.write("\t\t\t ");
 String condition=(String)session.getAttribute("pass");
                                String prof1=(String)session.getAttribute("Prof");
                                String prof2=(String)session.getAttribute("Prof2");

                               // out.println("Lec="+condition);

                               // out.println("prof1="+prof1);
                              // out.println("prof2="+prof2);
                               // System.out.println("Lec="+condition);
                                if(condition!=null && prof1.equals(prof2) )
                                {
                                
      out.write("       \n");
      out.write("\n");
      out.write("                                <input type=\"button\" class=\"btn btn-primary btn-sm\" style=\"float:right;display:inline\" value=\"Delete\" onClick=\"delQues(this.id)\" id=");
      out.print(delbuttonid );
      out.write(" />\n");
      out.write("                                <input type=\"button\" class=\"btn btn-primary btn-sm\" style=\"float:left;display:inline\" data-toggle=\"modal\" value=\"Answer\" data-target=\"#myModal\" onClick=\"myfunc(this.id)\" id=");
      out.print(buttonid );
      out.write(" />\n");
      out.write("                                ");
  }
                                
      out.write("\n");
      out.write("         \n");
      out.write("\t\t</div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\t\n");
      out.write("\t   \n");
      out.write("\t\t\n");
      out.write("        ");
 } 
      out.write("\n");
      out.write("\n");
      out.write("               <form action=\"\" name=\"delform\" method=\"post\" style=\"visibility:hidden\">\n");
      out.write("\n");
      out.write("               <input type=\"text\" id= \"delfieldid\" name=\"delfield\" value=\"Namastey\" />\n");
      out.write("               <input type=\"text\" id= \"futureid\" name=\"futurefield\" value=\"London\" />\n");
      out.write("               </form>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <span id =\"debug\" style=\"visibility:hidden\">Hello </span>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("</div>    \n");
      out.write("\t    \n");
      out.write(" \n");
      out.write("</div>\n");
      out.write(" \n");
      out.write(" </div>\n");
      out.write("        \n");
      out.write(" \n");
      out.write(" <script type=\"text/javascript\">\n");
      out.write("\t count=");
      out.print(ct);
      out.write(";\n");
      out.write("\t debugging=document.getElementById(\"debug\");\n");
      out.write("\t debugging.innerHTML=\"Count is\"+count;\n");
      out.write("\t hid=document.getElementById(\"hidden\");\n");
      out.write("\t hid.style.display='none';\n");
      out.write("\t \n");
      out.write("\t for (x=1;x<=count;x++)\n");
      out.write("\t {\t\n");
      out.write("\t\t y=document.getElementById(\"answer\"+x);\n");
      out.write("\t\t debug.innerHTML+=y.innerHTML;\n");
      out.write("\t\t z=document.getElementById(\"button\"+x);\n");
      out.write("\t\t if(y!=null && y.innerHTML==\"\")\n");
      out.write("\t\t {\n");
      out.write("\t\t document.getElementById(\"ans\"+x).style.display='none';\n");
      out.write("\t\t }\n");
      out.write("\t\t \n");
      out.write("\t\t else\n");
      out.write("\t\t\t {\n");
      out.write("\t\t\t if(z!=null){\n");
      out.write("\t\t\t z.value=\"Edit Answer\";\n");
      out.write("\t\t\t }\n");
      out.write("\t\t\t }\n");
      out.write("\t }\n");
      out.write("\n");
      out.write("\t function myfunc(clicked_id){\n");
      out.write("\t\t \n");
      out.write("\t\t hid.value=clicked_id;\n");
      out.write("\t\t quesid=clicked_id.replace(\"button\",\"q\");\n");
      out.write("\t\t ansid=clicked_id.replace(\"button\",\"answer\");\n");
      out.write("\t\t \n");
      out.write("\t\t question=document.getElementById(quesid).innerHTML;\n");
      out.write("\t\t answer=document.getElementById(ansid).innerHTML;\n");
      out.write("\t\t \n");
      out.write("\t\t answer.replace(\"  \",\"\");\n");
      out.write("\t\t question.replace(\"  \",\"\");\n");
      out.write("\t\t \n");
      out.write("\t\t document.getElementById(\"myModalLabel\").innerHTML=question;\n");
      out.write("\t\t document.getElementById(\"currentans\").value=answer;\n");
      out.write("\t\t \n");
      out.write("\t }\n");
      out.write("\t \n");
      out.write("\t\n");
      out.write("\t function saveAns()\n");
      out.write("\t {\n");
      out.write("\t\t document.batti.submit();\n");
      out.write("\t\t \n");
      out.write("\t\t ");

		 String clid= request.getParameter("maindata");
		 if(clid!=null)
		 {
		 String tobeanswered =clid.replace("button","");
		 System.out.println(tobeanswered);
		 String answer= request.getParameter("mainanswer");
		 
		 Statement stmt = connection.createStatement();
			String query="update qa27 set ans ='"+answer+"' where id='"+tobeanswered+"';";
			
		    stmt.executeUpdate(query) ;
		    
		 response.sendRedirect("lec.jsp#user"+tobeanswered);
		 
		 
		 }
		 
      out.write("\n");
      out.write("\t }\n");
      out.write("\t \n");
      out.write("\t \n");
      out.write("\n");
      out.write("\t function delQues(clicked_id)\n");
      out.write("\t {\n");
      out.write("\t\t \n");
      out.write("\t\t document.getElementById(\"delfieldid\").value=clicked_id;\n");
      out.write("\t\t \n");
      out.write("\t\t \n");
      out.write("\t\t\t document.getElementById(\"futureid\").value=\"yesssssssss\";\n");
      out.write("\t\t  v=parseInt(clicked_id.replace(\"delbutton\",\"\"))+1;\n");
      out.write("\t\t while(document.getElementById(\"user\"+v)==null && v<count)\n");
      out.write("\t\t\t {\n");
      out.write("\t\t\t v++;\n");
      out.write("\t\t\t document.getElementById(\"futureid\").value=\"user\"+v;\n");
      out.write("\t\t\t }\n");
      out.write("\t\t if(clicked_id==\"delbutton\"+count)\n");
      out.write("\t\t\t {\n");
      out.write("\t\t\t v=parseInt(clicked_id.replace(\"delbutton\",\"\"))-1;\n");
      out.write("\t\t\t }\n");
      out.write("\t\tdocument.getElementById(\"futureid\").value=\"user\"+v;\n");
      out.write("\t\t\t \n");
      out.write("\t\t document.delform.submit();\n");
      out.write("\t\t \n");
      out.write("\t\t ");

		 
		 String delid= request.getParameter("delfield");
		 if(delid!=null)
		 {
		 String tobedel =delid.replace("delbutton","");
		 System.out.println("Deleting "+tobedel);
		 		 
		 Statement stmt1 = connection.createStatement();
			String query1="delete from qa27 where id='"+tobedel+"';";
			
		    stmt1.executeUpdate(query1) ;
		    String futid= request.getParameter("futurefield");
		 response.sendRedirect("lec.jsp#"+futid);
		 
		 
		 }
		 
		 
      out.write("\n");
      out.write("\t\t \n");
      out.write("\t }\n");
      out.write("\t \n");
      out.write("\t \n");
      out.write("\t </script>\n");
      out.write("\t\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html> \n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
