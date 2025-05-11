<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Tabuada</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilo.css"/>
    </head>
    <body>
        <%
        for (int t = 1; t <= 20; t++) {
            out.println("Tabuada do: " + t + "<br>");
            for (int n = 1; n <= 20; n++) {
                out.println(t + " x " + n + " = " + (t * n) + "<br>");
            }
            out.println("<hr>");
        }
        %>    
    </body>
</html>
