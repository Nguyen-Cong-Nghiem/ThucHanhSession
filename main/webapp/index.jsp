<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 13/08/2018
  Time: 9:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Home</title>
  </head>
  <body>
  <h1>Homepage</h1>
  <%
  String username=(String) session.getAttribute("username");
    if (username != null) {%>
  Welcome:<%=username%>
  <a href="/logout?islogout=ok">logout</a>
  <%}%>
  </body>
</html>
