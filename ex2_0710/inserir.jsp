<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="conectar.jsp" %> 
<html>
<head>
    <title>Inserir Contato</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Inserir contato</h1>
        <form method="POST">
            <input type="text" name="nome" placeholder="Nome" required><br>
            <input type="text" name="login" placeholder="E-mail" required><br>
            <input type="text" name="telefone" placeholder="Telefone"><br>
            <input type="text" name="endereco" placeholder="Endereço" required><br>
            <input type="date" name="dataAniversario" placeholder="Data de Aniversário"><br>
            <button type="submit">Inserir</button>
        </form>
        
        <%
            String nome = request.getParameter("nome");
            String login = request.getParameter("login"); 
            String telefone = request.getParameter("telefone");
            String endereco = request.getParameter("endereco");
            String dataAniversario = request.getParameter("dataAniversario");

            if (nome != null && !nome.isEmpty() && login != null && !login.isEmpty()) { 
                try {
                    String checkEmailSql = "SELECT * FROM login WHERE email = ?";
                    PreparedStatement checkStmt = conexao.prepareStatement(checkEmailSql);
                    checkStmt.setString(1, login);
                    ResultSet rs = checkStmt.executeQuery();

                    if (rs.next()) { 
                        String sql = "INSERT INTO amigos (nome, login, telefone, endereco, dataAniversario) VALUES (?, ?, ?, ?, ?)"; 
                        PreparedStatement stmt = conexao.prepareStatement(sql);
                        stmt.setString(1, nome);
                        stmt.setString(2, login);
                        stmt.setString(3, telefone);
                        stmt.setString(4, endereco);
                        stmt.setString(5, dataAniversario);

                        int linhasAfetadas = stmt.executeUpdate();

                        if (linhasAfetadas > 0) {
                            out.println("<p>Contato inserido com sucesso!</p>");
                        } else {
                            out.println("<p>Falha ao inserir o contato.</p>");
                        }

                        stmt.close();
                    } else {
                        out.println("<p>Email não encontrado na tabela de login.</p>");
                    }

                    checkStmt.close();
                } catch (Exception e) {
                    out.println("<p>Erro: " + e.getMessage() + "</p>");
                    e.printStackTrace();
                }
            }
        %>

        <a href="menu.jsp">Voltar ao Menu</a>
    </div>
</body>
</html>
