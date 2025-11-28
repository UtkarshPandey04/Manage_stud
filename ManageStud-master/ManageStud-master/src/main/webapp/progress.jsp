<%@ include file="db.jsp" %>
<%@ page session="true" %>

<%
    if(session.getAttribute("student_id") == null){
        response.sendRedirect("login.jsp");
    }

    int sid = (int) session.getAttribute("student_id");

    String query = "SELECT * FROM marks WHERE student_id=?";
    PreparedStatement ps = conn.prepareStatement(query);
    ps.setInt(1, sid);

    ResultSet rs = ps.executeQuery();

    int s1 = 0, s2 = 0, s3 = 0;
    boolean hasMarks = false;

    if(rs.next()) {
        s1 = rs.getInt("sub1");
        s2 = rs.getInt("sub2");
        s3 = rs.getInt("sub3");
        hasMarks = true;
    }

    int total = s1 + s2 + s3;
    double percent = total / 3.0;

    String grade;
    if(percent >= 90) grade = "A+";
    else if(percent >= 80) grade = "A";
    else if(percent >= 70) grade = "B";
    else if(percent >= 60) grade = "C";
    else if(percent >= 50) grade = "D";
    else grade = "F";
%>

<!DOCTYPE html>
<html>
<head>
    <title>Your Progress</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { background: #eef2f7; font-family: 'Poppins', sans-serif; }
        .card-box { padding: 25px; border-radius: 14px; background: #fff;
                    box-shadow: 0 8px 25px rgba(0,0,0,0.1); text-align: center; }
        .grade-badge { font-size: 22px; padding: 8px 20px; border-radius: 8px; color: white; }
    </style>
</head>

<body>

<nav class="navbar navbar-dark bg-primary">
    <div class="container-fluid">
        <span class="navbar-brand">Progress Report</span>
        <a class="btn btn-light btn-sm" href="home.jsp">Back</a>
    </div>
</nav>

<div class="container mt-4 mb-4">

<% if(!hasMarks) { %>

    <div class="alert alert-warning text-center mt-5">
        <h4>No marks found for your account.</h4>
    </div>

<% } else { %>

    <div class="row g-4">

        <div class="col-md-4">
            <div class="card-box">
                <h5>Maths</h5>
                <h2><%= s1 %></h2>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card-box">
                <h5>Physics</h5>
                <h2><%= s2 %></h2>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card-box">
                <h5>Chemistry</h5>
                <h2><%= s3 %></h2>
            </div>
        </div>

    </div>

    <div class="row g-4 mt-4">
        <div class="col-md-6">
            <div class="card-box">
                <h5>Total Marks</h5>
                <h1><%= total %></h1>
            </div>
        </div>

        <div class="col-md-6">
            <div class="card-box">
                <h5>Percentage</h5>
                <h1><%= String.format("%.2f", percent) %>%</h1>
            </div>
        </div>
    </div>

    <div class="text-center mt-4">
        <%
            String color = "bg-danger";
            if(grade.equals("A+") || grade.equals("A")) color = "bg-success";
            else if(grade.equals("B") || grade.equals("C")) color = "bg-primary";
            else if(grade.equals("D")) color = "bg-warning";
        %>

        <span class="grade-badge <%= color %>">
            Grade: <%= grade %>
        </span>
    </div>

<% } %>

</div>

</body>
</html>
