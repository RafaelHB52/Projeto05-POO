<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                        <center><label>Login:</label><br/>
                            <input type="text" name="username" class="form-control"><br/>
                        </center>
                        <button class="btn btn-outline-primary" type="submit" name="entrar">Entrar</button>
                    </div>
                </form>
            </div>
    
    <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>
