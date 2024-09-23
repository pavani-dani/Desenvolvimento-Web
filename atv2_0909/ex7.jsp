<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Ex7: Conversao de Tempo</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Conversão de Tempo para Segundos</h1>
        <form action="resultEx7.jsp" method="POST">
            <label for="horas">Horas:</label>
            <input type="number" id="horas" name="horas" required><br><br>

            <label for="minutos">Minutos:</label>
            <input type="number" id="minutos" name="minutos" required><br><br>

            <label for="segundos">Segundos:</label>
            <input type="number" id="segundos" name="segundos" required><br><br>

            <input type="submit" value="Converter">
        </form>
        <a href="index.jsp">Voltar ao Menu</a>
    </div>
</body>
</html>
