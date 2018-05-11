<%@page import="br.com.fatecpg.webquiz.Question"%>
<%@page import="br.com.fatecpg.webquiz.Quiz"%>
<%@page import="br.com.fatecpg.webquiz.Bd"%>
<%@page import="br.com.fatecpg.webquiz.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    boolean tested = false;
    double grade = 0.0;

    if (request.getParameter("tested") != null) {
        tested = true;
        int count = 0;

        for (int i = 0; i < Quiz.getTest().size(); i++) {
            Question q = Quiz.getTest().get(i);
            String userAnswer = request.getParameter(q.getQuestion());

            if (q.getAnswer().equals(userAnswer)) {
                count++;
            }
        }
        grade = 100.0 * ((double) (count) / (double) (Quiz.getTest().size()));
    }
%>

<html>
    <head>
        <%@include file="WEB-INF/jspf/cabecalho.jspf"%>
        <title>Planetary Quiz</title>
    </head>
    <body>
        <nav class="navbar navbar-dark bg-dark">
            <h3 class="navbar-brand titulo">Planetary Quiz</h3>
            <a href="home.jsp"><button class="btn btn-outline-light my-2 my-sm-0" type="submit">Sair</button></a>
        </nav>
        <br/>
        <center>
            <p class="titulo">Seja bem-vindo <%= session.getAttribute("loginUsuario") %> :) </p><br>
            <p class="titulo">Para iniciar o nosso teste, clique abaixo:</p><br>
            <h5><a href="quiz.jsp"><button class="btn btn-outline-light" type="submit" name="entrar">Realizar o Quiz</button></a></h5>
            
            <br>
        
        <%if (tested) { %>
            <hr>
            <h3 class="corpo">Sua porcentagem de acerto foi de: <%= grade %> %</h3>
            <hr>
        <% } %>
        </center>
    
        <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>
