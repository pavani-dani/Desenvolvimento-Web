<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Ex8: Calcular Aumento de Produto</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Cálculo do Aumento de Produto</h1>
        <form action="resultEx8.jsp" method="POST">
            <label for="valor">Valor do Produto:</label>
            <input type="number" id="valor" name="valor" step="0.01" required><br><br>

            <label for="codigo">Código do Aumento:</label>
            <input type="number" id="codigo" name="codigo" required><br><br>

            <input type="submit" value="Calcular">
        </form>
        <a href="index.jsp">Voltar ao Menu</a>
    </div>
</body>
</html>
