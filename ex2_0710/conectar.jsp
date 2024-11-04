<%@ page import="java.sql.*" %>
<%
    String url = "jdbc:mysql://localhost/contatos"; 
    String user = "root"; 
    String password = ""; 

    Connection conexao = null;

    try {
        Class.forName("com.mysql.jdbc.Driver"); 
        conexao = DriverManager.getConnection(url, user, password);
    } catch (ClassNotFoundException e) {
        out.println("Erro ao carregar o driver: " + e.getMessage());
    } catch (SQLException e) {
        out.println("Erro ao conectar ao banco de dados: " + e.getMessage());
    }
%>
