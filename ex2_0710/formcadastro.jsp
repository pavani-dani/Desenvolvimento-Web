<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Cadastro de Amigos</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Cadastro de Amigos</h1>

        <%
            String nome = request.getParameter("nome");
            String telefone = request.getParameter("telefone");
            String dataAniversario = request.getParameter("dataAniversario");
            String login = request.getParameter("login");
            String senha = request.getParameter("senha");

            if (nome != null && telefone != null && dataAniversario != null && login != null && senha != null) {
                Connection conn = null;
                PreparedStatement pstmt1 = null;
                PreparedStatement pstmt2 = null;

                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/contatos", "root", ""); 
                    String sqlLogin = "INSERT INTO login (email, senha, nome) VALUES (?, ?, ?)";
                    pstmt1 = conn.prepareStatement(sqlLogin);
                    pstmt1.setString(1, login);
                    pstmt1.setString(2, senha);
                    pstmt1.setString(3, nome);
                    pstmt1.executeUpdate();

                    String sqlAmigos = "INSERT INTO amigos (nome, telefone, dataAniversario, login) VALUES (?, ?, ?, ?)";
                    pstmt2 = conn.prepareStatement(sqlAmigos);
                    pstmt2.setString(1, nome);
                    pstmt2.setString(2, telefone);
                    pstmt2.setDate(3, Date.valueOf(dataAniversario));
                    pstmt2.setString(4, login);
                    pstmt2.executeUpdate();

                    out.println("<h2>Cadastro realizado com sucesso!</h2>");
                } catch (SQLException e) {
                    out.println("<h2>Erro ao cadastrar: " + e.getMessage() + "</h2>");
                } finally {
                    if (pstmt1 != null) try { pstmt1.close(); } catch (SQLException ignore) {}
                    if (pstmt2 != null) try { pstmt2.close(); } catch (SQLException ignore) {}
                    if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
                }
            } else {
        %>

        <form action="formcadastro.jsp" method="post">
            <label for="nome">Nome:</label>
            <input type="text" id="nome" name="nome" required><br>

            <label for="telefone">Telefone:</label>
            <input type="text" id="telefone" name="telefone" required><br>

            <label for="dataAniversario">Data de Aniversário:</label>
            <input type="date" id="dataAniversario" name="dataAniversario" required><br>

            <label for="login">Login (E-mail):</label>
            <input type="text" id="login" name="login" required><br>

            <label for="senha">Senha:</label>
            <input type="password" id="senha" name="senha" required><br>

            <input type="submit" value="Cadastrar">
        </form>

        <%
            } 
        %>
        <a href="menu.jsp">Voltar ao Menu</a>
    </div>
</body>
</html>
