<%@ page session="true" %>
<%
    if(session.getAttribute("student_id") == null){
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!doctype html>
<html>
<head><title>Student Portal</title></head>
<body>
    <h2>Welcome, <%= session.getAttribute("student_name") %></h2>
    <ul>
      <li><a href="progress.jsp">Progress</a></li>
      <li><a href="attendance.jsp">Attendance</a></li>
      <li><a href="activities.jsp">Activities</a></li>
      <li><a href="profile.jsp">Profile</a></li>
      <li><a href="logout.jsp">Logout</a></li>
    </ul>
</body>
</html>
