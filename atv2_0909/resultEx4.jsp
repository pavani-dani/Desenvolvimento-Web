<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    int numero = Integer.parseInt(request.getParameter("numero"));
    String resultado;

    if (numero % 2 == 0) {
        resultado = "O número " + numero + " é par.";
    } else {
        resultado = "O número " + numero + " é ímpar.";
    }
%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Resultado Ex4</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Resultado: Par ou Ímpar</h1>
        <p><%= resultado %></p>
        <a href="index.jsp">Voltar ao Menu</a>
    </div>
</body>
</html>
