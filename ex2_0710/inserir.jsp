<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
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
            <input type="text" name="email" placeholder="E-mail"><br>
            <input type="text" name="telefone" placeholder="Telefone"><br>
            <input type="date" name="data_aniversario" placeholder="Data de Aniversário"><br>
            <input type="submit" value="Inserir">
        </form>
        
        <%
            String nome = request.getParameter("nome");
            String email = request.getParameter("email");
            String telefone = request.getParameter("telefone");
            String dataAniversario = request.getParameter("data_aniversario");

            if (nome != null && !nome.isEmpty()) {
                try {
                    Class.forName("com.mysql.jdbc.Driver");

                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/contatos", "root", "");

                    String sql = "INSERT INTO contatos (nome, email, telefone, data_aniversario) VALUES (?, ?, ?, ?)";
                    PreparedStatement stmt = conn.prepareStatement(sql);
                    stmt.setString(1, nome);
                    stmt.setString(2, email);
                    stmt.setString(3, telefone);
                    stmt.setString(4, dataAniversario);

                    int linhasAfetadas = stmt.executeUpdate();

                    if (linhasAfetadas > 0) {
                        out.println("<p>Contato inserido com sucesso!</p>");
                    } else {
                        out.println("<p>Falha ao inserir o contato.</p>");
                    }

                    stmt.close();
                    conn.close();
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
