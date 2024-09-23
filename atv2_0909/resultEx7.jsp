<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    int horas = Integer.parseInt(request.getParameter("horas"));
    int minutos = Integer.parseInt(request.getParameter("minutos"));
    int segundos = Integer.parseInt(request.getParameter("segundos"));

    int totalSegundos = (horas * 3600) + (minutos * 60) + segundos;
%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Resultado Ex7</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Resultado: Tempo em Segundos</h1>
        <p>Total em segundos: <%= totalSegundos %></p>
        <a href="index.jsp">Voltar ao Menu</a>
    </div>
</body>
</html>
