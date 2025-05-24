<%!
    private String DiaDaSemana(int nDiaDaSemana) {
        String diasDaSemana[] = {"Domingo", "Segunda-feira", "Terça-feira",
            "Quarta-feira", "Quinta-feira", "Sexta-feira", "Sábado"};
        return diasDaSemana[nDiaDaSemana - 1];
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Exemplo de Vetores</title>
    <style>
        mark {
            color: rgb(30,125,210);
            background-color: transparent;
        }
        h1 {
            color: red;
            font-family: sans-serif;
        }
        body {
            color: indigo;
            background-color: lightgoldenrodyellow;
            font-family: sans-serif;
        }
    </style>
    </head>
    <body>
        <hr>
        <h1>Exemplo de Vetores</h1>
        <hr>Exibindo elementos de um vetor simples:
        <%
            int meuVetor[] = {1, 3, 5, 7, 9, 11};
            for (int i = 0; i < meuVetor.length; i++) {
                out.print(meuVetor[i]);
            }
        %>
 
        <hr>Exibindo o primeiro dia da semana 
        (através de função que armazena os dias da semana em um vetor):
        <%
            out.print(DiaDaSemana(1));
        %>
 
        <hr>Exibindo todos os dias da semana:
        <%
            for (int i = 1; i <= 7; i++) {
                out.print(DiaDaSemana(i));
                switch (i) {
                    case 6:
                        out.print(" e ");
                        break;
                    case 7:
                        out.print(".");
                        break;
                    default:
                        out.print(", ");
                }
            }
        %>
        
        <% out.println("<hr>Exemplo de Vetor (Array) bidimensional:<br>");
        String planilha[][] = {
            {"Nome ", "<mark>Telefone</mark>", " Idade"},
            {"João ", "<mark>+55 (11) 97777-9999</mark>", " 43"},
            {"Aline ", "<mark>+55 (13) 92211-3324</mark>", " 19"},
            {"Mirian ", "<mark>+55 (11) 96666-8888</mark>", " 27"}
        };
        for (int lin = 0; lin < planilha.length; lin++) {
            for (int col = 0; col < planilha[lin].length; col++) {
                out.print(planilha[lin][col]);
            }
            out.print("<br>");
        }
        %>
        <hr>
    </body>
</html>