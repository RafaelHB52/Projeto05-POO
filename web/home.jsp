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
            <figure id="container">
                <img src="imagem/stars.jpg"/>
                <figcaption class="titulo">Desafie-se neste quiz sobre as estrelas</figcaption>
            </figure>
        </center>
    
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
        
    <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>
