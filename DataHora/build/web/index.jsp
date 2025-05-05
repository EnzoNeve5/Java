<%-- 
    Document   : index
    Created on : 5 de mai. de 2025, 13:50:24
    Author     : anton
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Relógio</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="Formatacao/formata.css"/>
        <script type="text/javascript" src="js/programa.js"></script>
    </head>
    <body>
        <h1>Data e Hora</h1>
        <br/>
        <%
            String nome = "Enzo Neves";
            byte idade = 20;
            out.println("O " + nome + " tem " + idade + " anos.");
        %>
        <p>O programa Cascading Style Sheets está em um arquivo externo, chamado 
           de: "formata.css" na pasta Formatacao.</p>
        <p>O programa JavaScript está em um arquivo externo, chamado 
           de: "programa.js" na pasta js.</p>
        <p>Um exemplo de interatividade entre HTML, CSS, JavaScript e Java.</p>
        <p>Os botões Mostra e Esconde são exibidos alternadamente.</p>
        <p>A data e hora atualiza-se com JavaScript.</p>
        <p id="demo"></p>
        <button type="button"
            onclick="exibeData()">Exibir Data e Hora (js externo)</button>
        <div id="minhaDiv" >Java - Desenvolvimento Web</div>
        <button type="button" id="btnEsconde"
            onclick="exibir(false)">Esconder</button>
        <button type="button" id="btnMostra"
            onclick="exibir(true)" style="display:none">Mostrar</button>
    </body>
</html>