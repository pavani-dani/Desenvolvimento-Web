<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="conectar.jsp" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Salvando Cadastro</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="container">
        <%
            String nome = request.getParameter("nome");
            String email = request.getParameter("email");
            String senha = request.getParameter("senha");
            String confirmaSenha = request.getParameter("confirmaSenha");
            String foto = request.getParameter("foto");

            if (nome == null || email == null || senha == null || confirmaSenha == null || nome.isEmpty() || email.isEmpty() || senha.isEmpty() || confirmaSenha.isEmpty()) {
                out.println("<p class='error-message'>Por favor, preencha todos os campos obrigatórios.</p>");
            } else if (!senha.equals(confirmaSenha)) {
                out.println("<p class='error-message'>As senhas não coincidem. Tente novamente.</p>");
            } else {
                try {
                    PreparedStatement stmt = conexao.prepareStatement("INSERT INTO login (email, senha, nome, foto) VALUES (?, ?, ?, ?)");
                    stmt.setString(1, email);
                    stmt.setString(2, senha);
                    stmt.setString(3, nome);
                    stmt.setString(4, foto == null ? "" : foto);
                    stmt.executeUpdate();
                    stmt.close();
                    out.println("<p class='success-message'>Cadastro realizado com sucesso!</p>");
                } catch (SQLException e) {
                    out.println("<p class='error-message'>Erro ao cadastrar: " + e.getMessage() + "</p>");
                }
            }
        %>
        <br>
        <a href="./index.jsp">Voltar para o menu</a>
    </div>
</body>
</html>
