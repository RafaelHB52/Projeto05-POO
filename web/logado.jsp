<%@page import="br.com.fatecpg.webquiz.Bd"%>
<%@page import="br.com.fatecpg.webquiz.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/cabecalho.jspf"%>
        <title>Web Quiz</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf"%>
        Seja bem-vindo <%= session.getAttribute("loginUsuario") %> :)
        <br/><a href="quiz.jsp">Quiz</a>
        
        <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>
