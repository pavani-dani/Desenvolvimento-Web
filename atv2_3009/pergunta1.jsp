<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pergunta 1</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Pergunta 1</h1>
        <form action="pergunta1.jsp" method="POST">
            <label>1. Qual é a linguagem de programação mais utilizada para desenvolvimento web?</label><br/>
            <input type="radio" name="pergunta1" value="a" required/>A - Python<br/>
            <input type="radio" name="pergunta1" value="b"/>B - Java<br/>
            <input type="radio" name="pergunta1" value="c"/>C - JavaScript<br/>
            <input type="radio" name="pergunta1" value="d"/>D - C#<br/>
            <input type="radio" name="pergunta1" value="e"/>E - Ruby<br/>
            <input type="submit" value="Responder"/>
        </form>
    </div>

    <%
        if (request.getMethod().equalsIgnoreCase("POST")) {
            String resposta = request.getParameter("pergunta1");
            session.setAttribute("resposta1", resposta);
            response.sendRedirect("pergunta2.jsp"); // Redirecionar para a próxima pergunta
        }
    %>
</body>
</html>
