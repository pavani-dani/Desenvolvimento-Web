<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Ex3: Comparar Numeros</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Comparar Numeros</h1>
        <form action="resultEx3.jsp" method="POST">
            <label for="num1">Numero 1:</label>
            <input type="number" id="num1" name="num1" required><br>

            <label for="num2">Numero 2:</label>
            <input type="number" id="num2" name="num2" required><br><br>

            <input type="submit" value="Comparar">
        </form>
        <a href="index.jsp">Voltar ao Menu</a>
    </div>
</body>
</html>
