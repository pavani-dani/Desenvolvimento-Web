<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pergunta 3</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Pergunta 3</h1>
        <form action="pergunta3.jsp" method="POST">
            <label>3. O que é CSS?</label><br/>
            <input type="radio" name="pergunta3" value="a" required/>A - Linguagem de programação<br/>
            <input type="radio" name="pergunta3" value="b"/>B - Linguagem de marcação<br/>
            <input type="radio" name="pergunta3" value="c"/>C - Folha de estilo<br/>
            <input type="radio" name="pergunta3" value="d"/>D - Banco de dados<br/>
            <input type="radio" name="pergunta3" value="e"/>E - Framework<br/>
            <input type="submit" value="Responder"/>
        </form>
    </div>

    <%
        if (request.getMethod().equalsIgnoreCase("POST")) {
            String resposta = request.getParameter("pergunta3");
            session.setAttribute("resposta3", resposta);
            response.sendRedirect("resultado.jsp"); // Redirecionar para a página de resultados
        }
    %>
</body>
</html>
