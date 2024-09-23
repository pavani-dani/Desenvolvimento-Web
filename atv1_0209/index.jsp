<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Formulário</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Cadastro Eleitoral</h1>
        <form action="classificar.jsp" method="post">
            <label for="nome">Nome:</label>
            <input type="text" id="nome" name="nome" required>
            
            <label for="idade">Idade:</label>
            <input type="number" id="idade" name="idade" required>
            
            <input type="submit" value="Enviar">
        </form>
    </div>
</body>
</html>
