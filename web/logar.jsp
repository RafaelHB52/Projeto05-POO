<%@page import="br.com.fatecpg.webquiz.Bd"%>
<%@page import="br.com.fatecpg.webquiz.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
    if(request.getParameter("entrar") != null){
        String login = request.getParameter("login");
        Usuario u = new Usuario(login, 0);
        if(Bd.addUsuario(u)){
%><script>
    window.onload = function () {
                $("#success").modal("show");
            }</script>
        <%}else{
            session.putValue("sessionName", login);
            session.setAttribute("nome", login);
        %>
        
}
    }

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <script>document.location.href='logado.jsp';</script>
    </body>
</html>
