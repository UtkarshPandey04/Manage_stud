<%@ page import="java.sql.*" %>

<%
    String url = "jdbc:mysql://localhost:3306/studentsms";
    String user = "root";
    String pass = "up3671";

    Connection conn = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, pass);
    } catch(Exception e) {
        out.println("Database Error: " + e.getMessage());
    }
%>
