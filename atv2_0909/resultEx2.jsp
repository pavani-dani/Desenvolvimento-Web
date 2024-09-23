<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    int horas = Integer.parseInt(request.getParameter("horas"));
    int nivel = Integer.parseInt(request.getParameter("nivel"));
    double valorHora = 0;

    switch (nivel) {
        case 1:
            valorHora = 12.00;
            break;
        case 2:
            valorHora = 17.00;
            break;
        case 3:
            valorHora = 25.00;
            break;
    }

    double salario = horas * valorHora;
%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Resultado Ex2</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Resultado: Salário do Professor</h1>
        <p>Horas/Aula: <%= horas %></p>
        <p>Nível: <%= nivel %></p>
        <p>Salário Calculado: R$ <%= String.format("%.2f", salario) %></p>
        <a href="index.jsp">Voltar ao Menu</a>
    </div>
</body>
</html>
