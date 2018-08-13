<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 13/08/2018
  Time: 9:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<%
    Cookie[] listCookie = request.getCookies();
    String user = "";
    String pass = "";
    int count = 0;
    if (listCookie != null) {
        while (count < listCookie.length) {
            if (listCookie[count].getName().equals("user")) {
                user = listCookie[count].getValue();
            }
            if (listCookie[count].getName().equals("pass")) {
                pass = listCookie[count].getValue();
            }
            count++;
        }
    }
%>
${error}
<h1>Login Form</h1>
<form action="/login" method="post">
    <table>
        <tr>
            <td>Username</td>
            <td><input type="text" name="username" placeholder="Username....."></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type="password" name="password" placeholder="Password....."></td>
        </tr>
        <tr>
            <td><input type="checkbox" name="check" value="ON">Remember me</td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Login"></td>
        </tr>
    </table>
</form>

</body>
</html>
