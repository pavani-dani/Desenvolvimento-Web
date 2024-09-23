<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Menu de Arquivos</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Menu de Arquivos</h1>
        <div class="menu">
            <a href="verArquivo.jsp?tipo=nao_eleitor">Não-eleitor</a>
            <a href="verArquivo.jsp?tipo=eleitor_obrigatorio">Eleitor obrigatório</a>
            <a href="verArquivo.jsp?tipo=eleitor_facultativo">Eleitor facultativo</a>
        </div>
        <a href="index.jsp">Voltar ao formulário</a>
    </div>
</body>
</html>
