<%@page language = "java" import = "java.util.*"%> 
<%
    String nome = request.getParameter("NOME");
    if (nome == null) {
        nome = "";
    }
    Cookie meuCookie = new Cookie("nomeDoUsuario", nome);
    meuCookie.setMaxAge(5);
    response.addCookie(meuCookie);
%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Redirecionamento</title>
    </head>
    <body> 
        <p><a href="ExibirCookie.jsp">Veja o valor do Cookie...</a></p> 
    </body>
</html>