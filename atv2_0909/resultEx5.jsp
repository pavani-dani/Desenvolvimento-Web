<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    String tipoCarro = request.getParameter("tipo").toUpperCase();
    int km = Integer.parseInt(request.getParameter("km"));
    double consumo = 0;
    String mensagem = "";

    if (tipoCarro.equals("A")) {
        consumo = km / 8.0;
    } else if (tipoCarro.equals("B")) {
        consumo = km / 9.0;
    } else if (tipoCarro.equals("C")) {
        consumo = km / 12.0;
    } else {
        mensagem = "Tipo de carro inválido. Informe A, B ou C.";
    }

    if (consumo > 0) {
        mensagem = "O carro do tipo " + tipoCarro + " consumirá aproximadamente " + String.format("%.2f", consumo) + " litros de combustível para percorrer " + km + " km.";
    }
%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Resultado Ex5</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Resultado: Consumo de Combustível</h1>
        <p><%= mensagem %></p>
        <a href="index.jsp">Voltar ao Menu</a
