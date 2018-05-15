<%@page import="br.com.fatecpg.webquiz.Bd"%>
<%@page import="br.com.fatecpg.webquiz.Usuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <%-- <%
        Double resultado = 0.0;
        
        Usuarios newPonto = new Usuarios();
        newPonto.setPonto(resultado);
        Bd.getPonto().add(newPonto);
        
    %> --%>

<html>
    <head>
        <%@include file="WEB-INF/jspf/cabecalho.jspf"%>
        
        <title>Planetary Quiz</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf"%>
    
        <div class="card" style="background-color: #182D50">
            <div class="card-body">
                <h5 class="card-title fonte" style="color: white">Entre na sua conta ou cadastre-se abaixo:</h5>

                <form id="form1" method="post" action="logar.jsp">
                    <center>
                    <table>
                        <tr>
                        <td><input type="text" name="login" id="login" class="form-control fonte" placeholder="Insira seu login"/><br></td>
                        </tr>
                    </table>
                    <input type="submit" class="btn btn-dark fonte" name="entrar" value="Entrar">
                    </center>
                </form>                    
            </div>
        </div><hr/>
        <p class="titulo" align="center">TABELAS</p>
        <hr>
        
        <%-- <% for (int i = 0; i < Bd.getUsuarios().size(); i++){ %>
        <tr>
            <td><%= Bd.getUsuarios().get(i).getNome() %></td>
            <td><%= Bd.getPonto().get(i).getPonto() %></td>
        </tr>
        <%}%> --%>
        <center>
        <div><button style="background-color: #182D50" class="btn btn-primary btn-lg btn-block bttbody" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">Mostrar Ranking Top10</button></div>
        <div class="collapse" id="collapseExample">
            <div class="card-body btn-dark">
                <table border="2">            
                    <tr>
                        <td><h3>Posição: </h3></td>
                        <td><h3>Nome: </h3></td>
                        <td><h3>Pontuação: </h3></td>
                    </tr>

                    <% for (int i = 0; i < 10; i ++) { %>

                        <% if (i < 5) { %>
                        <tr>
                            <td><h<%=(i+1)%>> <%= (i+1) %>°</h<%=(i+1)%>></td>
                            <td><h<%=(i+1)%>> NOME </h<%=(i+1)%>>
                            <td><h<%=(i+1)%>> Pontuação </h<%=(i+1)%>>                        

                        <% } else { %>

                            <td><h6> <%= (i+1) %>° </h6>
                            <td><h6> NOME </h6>
                            <td><h6> Pontuação </h6>

                        <% } %>
                        </tr>
                    <% } %>
                
                </table>
            </div>
        </div>        
        <hr>
        <div><button style="background-color: #182D50" class="btn btn-primary btn-lg btn-block bttbody" type="button" data-toggle="collapse" data-target="#collapseExample2" aria-expanded="false" aria-controls="collapseExample2">Mostrar os Últimos 10 Testes Realizados</button></div>
        <div class="collapse" id="collapseExample2">
            <div class="card-body btn-dark">
                <table border="2">            
                    <tr>
                        <td><h3>Nome: </h3></td>
                        <td><h3>Pontuação: </h3></td>
                    </tr>

                    <% for (int i = 0; i < 10; i ++) { %>                       
                        <tr>
                            <td><h5>NOME</h5></td>
                            <td><h5>Pontuação</h5></td>
                        </tr>
                    <% } %>
                
                </table>
            </div>
        </div>
        <hr>
                        
    <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>
