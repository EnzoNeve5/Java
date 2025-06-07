<%@page language="java"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar Cookie</title>
    <style>
        h1 {
            color: red;
        }
    </style>
    </head>
    <body>
        <h1>AVISO: Colocar somente o nome</h1>
        <form method="post" action="GeraCookie.jsp"> 
            <p><b>Digite o seu nome: </b><input type="text" name="NOME"></p>
            <br> 
            <input type="submit" value="Enviar Cookie"/> 
        </form> 
        <hr>
    </body>
</html>