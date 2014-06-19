<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
     <link href="css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
  
  <% session.setAttribute("inserted","null");
  
  session.removeAttribute("inserted");
  session.removeAttribute("pass");
  
  session.invalidate();
  
  String redirectURL = "index.jsp";
    response.sendRedirect(redirectURL);
  
  %>
</body>