<%@ include file="db.jsp" %>

<%
    String name = request.getParameter("name");
    String mobile = request.getParameter("mobile");
    String address = request.getParameter("address");
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    String insertQuery = "INSERT INTO students(name, mobile, address, email, password) VALUES(?,?,?,?,?)";

    try {
        // Insert student first
        PreparedStatement ps = conn.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
        ps.setString(1, name);
        ps.setString(2, mobile);
        ps.setString(3, address);
        ps.setString(4, email);
        ps.setString(5, password);
        ps.executeUpdate();

        // Get the generated student ID
        ResultSet rs = ps.getGeneratedKeys();
        int sid = 0;

        if(rs.next()) {
            sid = rs.getInt(1);
        }

        // Create session for the student
        session.setAttribute("student_id", sid);
        session.setAttribute("student_name", name);
        session.setAttribute("student_email", email);

        // Redirect to dashboard
        response.sendRedirect("home.jsp");
        return;

    } catch(Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
