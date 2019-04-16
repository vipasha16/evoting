<%--
  Created by IntelliJ IDEA.
  User: shubham
  Date: 4/5/2019
  Time: 12:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%

    String name=request.getParameter("uname");
    String upassword=request.getParameter("password");
    out.print("Welcome "+name);

%>
</body>
</html>
