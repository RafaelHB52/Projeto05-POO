<%@page import="br.com.fatecpg.webquiz.Quiz"%>
<%@page import="br.com.fatecpg.webquiz.Question"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/cabecalho.jspf"%>
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf"%>
        <h2>QUIZ</h2>
        <form action="logado.jsp">
           <%for(int i = 0; i < Quiz.getTest().size(); i++){%>
           <% Question q = Quiz.getTest().get(i);%>
           <h3><%= q.getQuestion() %></h3>
                <%for(int i2 = 0; i2 < q.getAlternatives().length; i2++){%>
                     <input type="radio" name="<%= q.getQuestion() %>"
                            value="<%= q.getAlternatives()[i2] %>" />
                     <%= q.getAlternatives()[i2] %>
                <%}%>
           <%}%>
           <hr/>
           <input type="submit" name="tested" value="Enviar" />
        </form>
        <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>
