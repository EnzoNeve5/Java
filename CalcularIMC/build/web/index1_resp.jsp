<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Índice de Massa Corporal</title>
    </head>
    <body style="background-color: paleturquoise">
        <%
            String pes, alt;
            float peso = 0F;
            float altura = 0F;
            pes = request.getParameter("peso");
            alt = request.getParameter("altura");
            if (!pes.equals("")) {
                peso = Float.parseFloat(pes);
            }
            if (!alt.equals("")) {
                altura = Float.parseFloat(alt);
            }
            if (peso == 0 || altura == 0) {
                out.println("Peso/Altura Invalido(s)<br>");
            } else {
                float imc = peso / (altura * altura);
                out.println("IMC: " + imc +"<br>");
 
                if (imc < 18.5) {
                    out.println("Você está abaixo do peso ideal!");
                } else if (imc >= 18.5 & imc <= 24.9) {
                    out.println("Parabéns - Você está em seu peso ideal!");
                } else if (imc >= 25.0 & imc <= 29.9) {
                    out.println("Você está acima do seu peso ideal!");
                } else if (imc >= 30.0 & imc <= 34.9) {
                    out.println("Obsidade Grau I");
                } else if (imc >= 35.0 & imc <= 39.9) {
                    out.println("Obsidade Grau II");
                } else {
                    out.println("Obsidade Grau III (mórbida)");
                }
            }
        %>
    </body>
</html>