<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="suporte.Contato"%>
<%!
    private List<Contato> getContatos()  {
        List<Contato> contatos = new ArrayList<Contato>();
        contatos.add(new Contato("João Victor", "+55 (11) 95647-4159", 32));
        contatos.add(new Contato("Aline Santos", "+55 (11) 91565-1224", 17));
        contatos.add(new Contato("Mirian Albuquerque", "+55 (11) 96716-7628", 23));
        return contatos;
    }
%>
 
<!DOCTYPE html>
<html>
    <head>
        <title>Exemplo de Coleções de Objetos</title>
    <style>
        h1 {
            color: green;
            font-family: sans-serif;
        }
        body {
            color: indigo;
            background-color: lightgoldenrodyellow;
        }
    </style>
    </head>
    <body>
        <hr>
        <h1>Exemplo de Coleções de Objetos</h1>
        <pre>
            <% out.println("<hr>Exibindo elementos de um vetor simples:");
                List<Contato> ctts = getContatos(); 
                for (Contato ct : ctts)  {
                    out.println("------------------------------");
                    out.println("Nome____: " + ct.getNome());
                    out.println("Telefone: " + ct.getTelefone());
                    out.println("Idade___: " + ct.getIdade());
                }
                out.println("------------------------------");
            %>
        </pre>
        <hr>
    </body>
</html>