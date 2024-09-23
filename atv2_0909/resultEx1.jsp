<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    String nome = request.getParameter("nome");
    double nota1 = Double.parseDouble(request.getParameter("nota1"));
    double nota2 = Double.parseDouble(request.getParameter("nota2"));
    double nota3 = Double.parseDouble(request.getParameter("nota3"));
    double media = (nota1 + nota2 + nota3) / 3;
    String resultado = media >= 7 ? "Aprovado" : media <= 5 ? "Reprovado" : "Em recuperação";
%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Resultado - Exercício 1</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Resultado</h1>
        <p>Aluno: <%= nome %></p>
        <p>Média: <%= String.format("%.2f", media) %></p>
        <p>Resultado: <%= resultado %></p>
        <a href="index.jsp">Voltar ao Menu</a>
    </div>
</body>
</html>
