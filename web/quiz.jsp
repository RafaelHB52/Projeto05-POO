<%@page import="br.com.fatecpg.webquiz.Quiz"%>
<%@page import="br.com.fatecpg.webquiz.Question"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/cabecalho.jspf"%>
        <title>Planetary Quiz</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf"%>
    <center>
        <h2 class="titulo">QUIZ</h2>
        <form action="logado.jsp">
                        
            <% for(int i = 0; i < Quiz.getTest().size(); i++){%>
            <% Question q = Quiz.getTest().get(i);%>
            <h3 class="corpo"><%= (i+1) + ") " + q.getQuestion() %></h3>
                <h3 class="corpo"><%for(int i2 = 0; i2 < q.getAlternatives().length; i2++){%>
                     <input type="radio" name="<%= q.getQuestion() %>"
                            value="<%= q.getAlternatives()[i2] %>" />
                     <%= q.getAlternatives()[i2] %>
                <%}%>
                </h3>
                <hr>
            <%}%>
            <input class="btn btn-dark" type="submit" name="tested" value="Enviar" /><hr>
            
        </form>
    </center>
        <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>
