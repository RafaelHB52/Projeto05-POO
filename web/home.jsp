<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/cabecalho.jspf"%>
        <title>Planetary Quiz</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf"%>
        
        <br/>
        <p class="corpo" align="center">Para logar-se no sistema informe o seu login:</p>
        <form method="post" action="logar.jsp">
            <center class="corpo">
                Login:
                <table>
                    <tr>
                    <td><input type="text" name="username" id="username" class="form-control" required><br></td>
                    </tr>
                </table>
                <input type="submit" class="btn btn-dark" name="entrar" value="Entrar">
            </center>
        </form>
        <br/><hr/><br/>
        
        <p class="titulo" align="center">TABELAS</p>
        
    <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>
