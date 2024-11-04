<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Menu</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>CRUD Amigos</h1>
        
        <div class="user-info">
            <h2>Seja bem-vindo!</h2>
            <p>Esta é a <%= (session.getAttribute("vezes") != null ? session.getAttribute("vezes") : 1) %>ª vez que você acessa esta página.</p>
        </div>

        <div class="menu">
            <a href="listar.jsp">Listar contatos</a>
            <a href="consultar_nome.jsp">Consultar por Nome</a>
            <a href="consultar_mes.jsp">Consultar por Mês de Aniversário</a><br>
            <a href="inserir.jsp">Inserir</a>
            <a href="selecionarAmg.jsp">Alterar</a>
            <a href="excluir.jsp">Excluir</a>
            <a href="sair.jsp">Sair</a>
        </div>
    </div>
</body>
</html>
