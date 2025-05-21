<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="TrataErro.jsp" %>
<jsp:useBean id="item" class="Suporte.Estoque" />
<jsp:setProperty name="item" property="*" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Teste de Dados e Erro em JSP</title>
    </head>
    <body>
        <h3>Cadastro de Item com Tratamento - Com tratamento de Erro</h3>
        <%-- Apresentação dos dados via HTML --%>
        <pre>
           ---------- DADOS OBTIDOS DO BROWSER ---------------------
           Ação:           <%=item.getAcao()%>
           Codigo:         <%=item.getCodigo()%>
           Descrição:      <%=item.getDescricao()%>
           Unidade:        <%=item.getUnidade()%>
           Saldo:          <%=item.getSaldo()%>
           Valor Unitário: <%=item.getValorUnitario()%>
           Observações:    <%=item.getObs()%>
           ---------------------------------------------------------
           Valor Total: <%=(item.getSaldo() * item.getValorUnitario())%>
        </pre>
    </body>
</html>