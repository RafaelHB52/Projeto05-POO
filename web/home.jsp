<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <%@include file="WEB-INF/jspf/cabecalho.jspf"%>
        <title>Web Quiz</title>
    </head>
    <body>
    <%@include file="WEB-INF/jspf/navbar.jspf"%>
        <div class="card text-center">
            <div class="card-header">
              Para logar-se no sistema informe o seu login:
            </div>
            <div class="card-body">
                <form method="post" action="logar.jsp">
                    <div class="form-group">
                        <center><label>Login:</label>
                            <input type="text" name="username" id="username" class="form-control" required><br>
                        </center>
                        <input type="submit" class="btn btn-outline-primary" name="entrar" value="Entrar">
                    </div>
                </form>
            </div>
    
    <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>
