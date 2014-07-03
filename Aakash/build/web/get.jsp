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
   
    <center>
<!-- <font face="Times New Roman" size="6">       <i class="text-muted">List of Prof. in Department </i><b></b></font> -->
<font face="myFontThin" size="6" class="title" style=" margin-top: 134px;">Choose your </font><font face="myFontThick" size="19"><b> professor</b></font>
   </center>
  

     
    <div class="panel panel-primary"  id="panel1"  data-spy="scroll" data-target="#target_nav" style="margin-top: 80px;">
     
         

            <!--  pANEL OF DEPARTMENTS -->
            <div class="panel-body"  id="scroll-able"  >

                <div class="row" id="target_nav">
 <!-- fIRST COLUMN-->   
             
       <%
                            try
                        {

                                         System.out.println("dept="+dept);
                        ArrayList<Information> addL=Information.getProf(dept);
          
                        
                         
                         int Total=addL.size();
                         int col1,col2,col3,modulo;
                         col1=col2=col3=Total/3;
                         modulo=Total%3;
                         if(modulo==2)
                         {col1+=1;
                         col2+=1;}
                         else if(modulo==1)
                          col1+=1;
        %>                 
                    <div class="col-md-4">
   <ul class="nav nav-pills nav-stacked" >
     <%
                        for(int i=0;i<col1;i++)
                     {  Information a=new Information();
                       a = addL.get(i);
                       int countLec=Information.getLecCount(a.Prof);
 %>                             
                            <li class="active">
                              <a  onclick="jsfunction2('<%=a.Prof%>')" href="#scroll_here">
                                <span class="badge pull-right"><%=countLec%></span>
                                <%=a.Prof%>
                              </a>
                            </li>
<%} %>
</ul>      
</div>
        
                        
                                      <div class="col-md-4">
   <ul class="nav nav-pills nav-stacked" >
     
      <%                  for(int i=col1;i<(col1+col2);i++)
                        {
                     Information a=new Information();
                       a = addL.get(i);
                       int countLec=Information.getLecCount(a.Prof);
 
         %>                   <li class="active">
                              <a  onclick="jsfunction2('<%=a.Prof%>')" href="#scroll_here">
                                <span class="badge pull-right"><%=countLec%></span>
                                <%=a.Prof%>
                              </a>
                            </li>
                         
        <%
                        }

%></ul>
</div>
                                                      
                                      <div class="col-md-4">
   <ul class="nav nav-pills nav-stacked" >
<%
                        for(int i=(col1+col2);i<(col1+col2+col3);i++)
                        {
                          Information a=new Information();
                       a = addL.get(i);
                       int countLec=Information.getLecCount(a.Prof);
 %>
                            <li class="active">
                              <a  onclick="jsfunction2('<%=a.Prof%>')" href="#scroll_here">
                                <span class="badge pull-right"><%=countLec%></span>
                                <%=a.Prof%>
                              </a>
                            </li>
<%
                        }
 %>                       
</ul>
                              </div>
                              
                           
                        
                    </div>
            <%
                }
               
                catch(Exception e)
                {
                System.out.println("Some prob inside get");
                }
    
   
                 %>	
              </div>                    
            </div>                
        </div>                
              
    
    
    
    
</body>