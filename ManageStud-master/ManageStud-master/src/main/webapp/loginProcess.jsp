<%@ include file="db.jsp" %>

<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    String query = "SELECT * FROM students WHERE email=? AND password=?";

    PreparedStatement ps = conn.prepareStatement(query);
    ps.setString(1, email);
    ps.setString(2, password);

    ResultSet rs = ps.executeQuery();

    if(rs.next()) {

        session.setAttribute("student_id", rs.getInt("id"));
        session.setAttribute("student_name", rs.getString("name"));

        response.sendRedirect("home.jsp");

    } else {

        out.println("Invalid email or password! <a href='login.jsp'>Try Again</a>");

    }
%>
