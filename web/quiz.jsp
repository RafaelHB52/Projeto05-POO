<%@page import="java.util.ArrayList"%>
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
        <nav class="navbar navbar-dark" style="background-color: #182D50">
            <h3 class="navbar-brand titulo">Planetary Quiz</h3>
        </nav>  
        
        <div class="form-quiz">
            <form method="post" action="logado.jsp"> 
                <h2 class="titulo">Quiz</h2><br><br>
                    <%
                    ArrayList<Integer> random = new ArrayList<>();
                    int contador = 0;
                    while(contador < 10){
                        int aleatorio = (int)(Math.random() * Quiz.getTest().size());
                        if(!random.contains(aleatorio)){
                            random.add(aleatorio);
                            ++contador;
                        }
                    }
                    %>
            
                    <% for(int i = 0; i < 10; i++){%>
                    <% Question q = Quiz.getTest().get(random.get(i));%>
                    <h3 class="fonte"><%= (i+1) + ". " + q.getQuestion() %></h3>
                        <h3 class="fonte"><%for(int j = 0; j < q.getAlternatives().length; j++){%>
                             <input type="radio" name="<%= q.getQuestion() %>"
                                    value="<%= q.getAlternatives()[j] %>" />
                             <%= q.getAlternatives()[j] %>  
                        <%}%>
                        
                    </h3>
                    <hr/>
                    <%}%>
                <center><input class="btn btn-dark" type="submit" name="tested" value="Enviar" /></center><hr/>
            </form>
        </div>
                
        <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>
