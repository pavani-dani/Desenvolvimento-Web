<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    int num1 = Integer.parseInt(request.getParameter("num1"));
    int num2 = Integer.parseInt(request.getParameter("num2"));
    String resultado;

    if (num1 == num2) {
        resultado = "Os números são iguais.";
    } else if (num1 > num2) {
        resultado = "O número " + num1 + " é maior que " + num2 + ". Os números são diferentes.";
    } else {
        resultado = "O número " + num2 + " é maior que " + num1 + ". Os números são diferentes.";
    }
%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Resultado Ex3</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Resultado: Comparação de Números</h1>
        <p><%= resultado %></p>
        <a href="index.jsp">Voltar ao Menu</a>
    </div>
</body>
</html>
