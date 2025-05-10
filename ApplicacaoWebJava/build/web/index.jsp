<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Escola CATEC</title>
    </head>
    <body>
        <h1>Média anual das Notas:</h1>
        <h2>Ano de 2024</h2>
        <%!
            private float calcMedia(float n1, float n2, float n3, float n4) {
                float m;
                m = (n1 + n2 + n3 + n4) / 4;
                return m;
            }
            float n1 = 10;
            float n2 = 8.5F;
            float n3 = 4.5F;
            float n4 = 7;
        %>
        <pre>
            1º Semestre: <%=n1%>
            2º Semestre: <%=n2%>
            3º Semestre: <%=n3%>
            4º Semestre: <%=n4%>
            Média Anual: <%=calcMedia(n1,n2,n3,n4)%>
        </pre>
    </body>
</html>
