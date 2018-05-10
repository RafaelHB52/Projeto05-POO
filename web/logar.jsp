<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String login = request.getParameter("username");
    session.setAttribute("loginUsuario", login);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <script>document.location.href='logado.jsp';</script>
    </body>
</html>
