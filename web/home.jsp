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
    
    <center>Para logar-se no sistema informe o seu login:</center><br/>
    <form method="post" action="logar.jsp">
        <table width="180" border="0" align="center" cellpadding="0" cellspacing="1">
            <tr>
            <td width="55">Login:</td>
            <td width="122"><input type="text" name="username"></td>
            </tr><tr>
            <td colspan="2"><div align="center">
            <input type="submit" name="Submit" value="Logar">
            </div></td>
            </tr>
        </table>
    </form>
    
    <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>
