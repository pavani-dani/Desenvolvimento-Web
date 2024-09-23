<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Ex1: Média e Aprovação</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Media e Aprovacao</h1>
        <form action="resultEx1.jsp" method="POST">
            <label for="nome">Nome do Aluno:</label>
            <input type="text" id="nome" name="nome" required><br>
            <label for="nota1">Nota 1:</label>
            <input type="number" id="nota1" name="nota1" step="0.1" required><br>
            <label for="nota2">Nota 2:</label>
            <input type="number" id="nota2" name="nota2" step="0.1" required><br>
            <label for="nota3">Nota 3:</label>
            <input type="number" id="nota3" name="nota3" step="0.1" required><br><br>
            <input type="submit" value="Calcular Média">
        </form>
        <a href="index.jsp">Voltar ao Menu</a>
    </div>
</body>
</html>
