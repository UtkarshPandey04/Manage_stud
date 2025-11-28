<%@ include file="db.jsp" %>

<%
    int sid = Integer.parseInt(request.getParameter("sid"));
    int s1 = Integer.parseInt(request.getParameter("sub1"));
    int s2 = Integer.parseInt(request.getParameter("sub2"));
    int s3 = Integer.parseInt(request.getParameter("sub3"));

    // Update or insert automatically
    String q = "REPLACE INTO marks(student_id, sub1, sub2, sub3) VALUES (?,?,?,?)";
    PreparedStatement ps = conn.prepareStatement(q);

    ps.setInt(1, sid);
    ps.setInt(2, s1);
    ps.setInt(3, s2);
    ps.setInt(4, s3);

    int result = ps.executeUpdate();

    if(result > 0){
        response.sendRedirect("home.jsp");
        return;     // ✔ after this, NO CODE should exist
    } else {
        out.println("<h2>Error saving marks.</h2>");
    }
%>
