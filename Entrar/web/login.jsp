<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Site</title>
    <style>
        table {
            border-width: 1px;
            border-style: solid;
            border-color: black;
        }
        td {
            border-width: 1px;
            border-style: solid;
            border-color: black;
        }
        p {
            text-align: left;
            color: red;
        }
    </style>
    </head>
    <body>
        <%
            if (session.getAttribute("login") == null) {
        %>
        <form name="frmLogin" method="post" action="LoginServlet">
           <table>
                <caption><i>Login</i>:</caption>
                <tr>
                    <td>Usuário:</td>
                    <td><input type="text" name="login" size="10"/></td>
                </tr>
                <tr>
                    <td>Senha:</td>
                    <td><input type="password" name="senha" size="10"/></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Entrar"/></td>
                </tr>
           </table>
           <input type="hidden" name="acao" value="login"/>
        </form>
        <% }
            if (request.getParameter("erro") != null) {
        %>
        
        <div>
            <p><i>Login</i> Inválido! - Tente novamente</p>
        </div>
         
        <% }
            if (session.getAttribute("login") != null) {
        %>
        <div>
            <br><br>
            <form name="frmLogout" method="post" action="LoginServlet">
                <input type="hidden" name="acao" value="logout"/>
                Usuário Ativo: 
                   <%out.print(session.getAttribute("login"));%>
                <br><br>
                <input type="submit" value="Sair"/>
            </form>
        </div>
        <% } %>
    </body>
</html>