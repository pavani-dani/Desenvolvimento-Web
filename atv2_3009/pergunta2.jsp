<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pergunta 2</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Pergunta 2</h1>
        <form action="pergunta2.jsp" method="POST">
            <label>2. O que é HTML?</label><br/>
            <input type="radio" name="pergunta2" value="a" required/>A - Linguagem de programação<br/>
            <input type="radio" name="pergunta2" value="b"/>B - Linguagem de marcação<br/>
            <input type="radio" name="pergunta2" value="c"/>C - Banco de dados<br/>
            <input type="radio" name="pergunta2" value="d"/>D - Framework<br/>
            <input type="radio" name="pergunta2" value="e"/>E - Editor de texto<br/>
            <input type="submit" value="Responder"/>
        </form>
    </div>

    <%
        if (request.getMethod().equalsIgnoreCase("POST")) {
            String resposta = request.getParameter("pergunta2");
            session.setAttribute("resposta2", resposta);
            response.sendRedirect("pergunta3.jsp"); // Redirecionar para a próxima pergunta
        }
    %>
</body>
</html>
