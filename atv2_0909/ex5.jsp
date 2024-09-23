<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Ex5: Consumo de Combustível</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Calcular Consumo de Combustível</h1>
        <form action="resultEx5.jsp" method="POST">
            <label for="tipo">Tipo de Carro (A, B, C):</label>
            <input type="text" id="tipo" name="tipo" required><br>

            <label for="km">Percurso em km:</label>
            <input type="number" id="km" name="km" required><br><br>

            <input type="submit" value="Calcular Consumo">
        </form>
        <a href="index.jsp">Voltar ao Menu</a>
    </div>
</body>
</html>
