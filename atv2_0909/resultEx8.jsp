<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    double valor = Double.parseDouble(request.getParameter("valor"));
    int codigo = Integer.parseInt(request.getParameter("codigo"));
    double aumento = 0.0;

    switch (codigo) {
        case 1:
            aumento = 0.15;
            break;
        case 3:
            aumento = 0.20;
            break;
        case 4:
            aumento = 0.35;
            break;
        case 8:
            aumento = 0.40;
            break;
        default:
            aumento = 0.0; 
            break;
    }

    double valorFinal = valor + (valor * aumento);
%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Resultado Ex8</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Resultado: Aumento de Produto</h1>
        <p>Valor Original: R$ <%= String.format("%.2f", valor) %></p>
        <p>Valor Final com Aumento: R$ <%= String.format("%.2f", valorFinal) %></p>
        <a href="index.jsp">Voltar ao Menu</a>
    </div>
</body>
</html>
