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
        <title>Web Quiz</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf"%>
        <center>
            <h1>Seja bem-vindo <%= session.getAttribute("loginUsuario") %> :) </h1><br>
            <h2>Para iniciar o nosso teste, click abaixo:</h2><br>
            <h5><a href="quiz.jsp"><button class="btn btn-outline-primary" type="submit" name="entrar">QUIZ</button></a></h5>
            
            <br>
        
        <%if (tested) { %>
            <hr>
            <h3>Sua porcentagem de acerto foi de: <%= grade %> %</h3>
            <hr>
        <% } %>
        
            <br>
            <h5><a href="home.jsp"><button class="btn btn-outline-primary" type="submit" name="entrar">SAIR</button></a></h5>
        </center>
        <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>
