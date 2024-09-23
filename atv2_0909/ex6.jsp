<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Ex6: Cálculo de Novo Salário</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Cálculo de Novo Salário</h1>
        <form action="resultEx6.jsp" method="POST">
            <label for="salario">Informe o salário:</label>
            <input type="number" id="salario" name="salario" step="0.01" required><br><br>

            <label for="cargo">Informe o código do cargo:</label>
            <input type="number" id="cargo" name="cargo" required><br><br>

            <input type="submit" value="Calcular">
        </form>
        <a href="index.jsp">Voltar ao Menu</a>
    </div>
</body>
</html>
