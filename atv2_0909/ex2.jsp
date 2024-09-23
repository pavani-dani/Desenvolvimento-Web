<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Ex2: Salário do Professor</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Calcular Salário do Professor</h1>
        <form action="resultEx2.jsp" method="POST">
            <label for="horas">Horas/Aula:</label>
            <input type="number" id="horas" name="horas" required><br>

            <label for="nivel">Nível do Professor:</label>
            <select id="nivel" name="nivel" required>
                <option value="1">Nível 1</option>
                <option value="2">Nível 2</option>
                <option value="3">Nível 3</option>
            </select><br><br>

            <input type="submit" value="Calcular Salário">
        </form>
        <a href="index.jsp">Voltar ao Menu</a>
    </div>
</body>
</html>
