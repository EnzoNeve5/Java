<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Média Escolar</title>
    <style>
        h1 {
            color: #0066ff;
            font-family: monospace;
        }
        
        i {
            color: #0099aa;
            font-family: serif; 
        }
        
        body {
            color: #444444;
            background-color: #dddddd;
            font-family: sans-serif;
        }
    </style>
    </head>
    <body>
        <h1>Média escolar em <i>JSP</i></h1>
        <%!
            float tot1, tot2, tot3, tot4 = 0;
            int vezes = 0;

            private void acumula(float v1, float v2, float v3, float v4) {
                this.vezes++;
                this.tot1 += v1;
                this.tot2 += v2;
                this.tot3 += v3;
                this.tot4 += v4;
            }

            private String medias() {
                String sRet = "";
                sRet += "<br>Média 1º Semestre: " + (this.tot1 / vezes);
                sRet += "<br>Média 2º Semestre: " + (this.tot2 / vezes);
                sRet += "<br>Média 3º Semestre: " + (this.tot3 / vezes);
                sRet += "<br>Média 4º Semestre: " + (this.tot4 / vezes);
                sRet += "<br>Média Anual: " + (((this.tot1 / vezes) + (this.tot2 / vezes) + (this.tot3 / vezes) + (this.tot4 / vezes)) / 4);
                return sRet;
            }
        %>
        <%
            acumula(10, 8, 4, 6.5f);
            acumula(8, 3, 7, 8.5f);
            acumula(5, 5, 9.5f, 6.5f);
            acumula(7, 8, 7.5f, 8.5f);
            out.println("Média entre os semestres 1, 2, 3 e 4");
            out.println(medias());
        %>
    </body>
</html>