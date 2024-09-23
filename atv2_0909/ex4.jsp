<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Ex4: Verificar Par ou Ímpar</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Verificar Par ou Ímpar</h1>
        <form action="resultEx4.jsp" method="POST">
            <label for="numero">Informe um número:</label>
            <input type="number" id="numero" name="numero" required><br><br>

            <input type="submit" value="Verificar">
        </form>
        <a href="index.jsp">Voltar ao Menu</a>
    </div>
</body>
</html>
