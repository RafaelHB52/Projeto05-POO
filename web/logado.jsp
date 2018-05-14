<%@page import="br.com.fatecpg.webquiz.Question"%>
<%@page import="br.com.fatecpg.webquiz.Quiz"%>
<%@page import="br.com.fatecpg.webquiz.Bd"%>
<%@page import="br.com.fatecpg.webquiz.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    boolean tested = false;
    double resultado = 0.0;

    if (request.getParameter("tested") != null) {
        tested = true;
        int contador = 0;

        for (int i = 0; i < Quiz.getTest().size(); i++) {
            Question q = Quiz.getTest().get(i);
            String usuarioAnswer = request.getParameter(q.getQuestion());

            if (q.getAnswer().equals(usuarioAnswer)) {
                contador++;
            }
        }
        resultado = 100.0 * ((double)(contador) / (double)(Quiz.getTest().size()));
    }
%>

<html>
    <head>
        <%@include file="WEB-INF/jspf/cabecalho.jspf"%>
        <title>Planetary Quiz</title>
    </head>
    <body>
        <nav class="navbar navbar-dark" style="background-color: #182D50">
            <h3 class="navbar-brand titulo">Planetary Quiz</h3>
            <a href="home.jsp"><button class="btn btn-outline-light my-2 my-sm-0" type="submit">Sair</button></a>
        </nav>
        
        <center>
            <figure id="container">
                <img src="imagem/estrela.jpg"/>
                <figcaption class="titulo">Desafie-se neste quiz sobre as estrelas</figcaption>
            </figure>
        </center>
    
        <div class="card" style="background-color: #182D50">
            <div class="card-body">
                <h5 class="card-title fonte" style="color: white">Bem-vindo <%= session.getAttribute("loginUsuario") %> :)</h5>
                <h5 class="card-title fonte" style="color: white">Clique no botão abaixo para encarar o desafio:</h5>
                <center><a href="quiz.jsp"><button class="btn btn-dark corpo" type="submit" name="quiz">Realizar o Quiz</button></a></center>                  
            </div>
        </div><hr/>
        
        <%if(tested){%>
            <h3 class="fonte">Sua pontuação no último teste foi de: <%= resultado %></h3>
            <hr/>
        <% } %>
    
        <p class="titulo" align="center">TABELAS</p>

        </center>
    
        <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>
