<%@ page session="true" %>
<%@ include file="db.jsp" %>

<%
    if(session.getAttribute("student_id") == null){
        response.sendRedirect("login.jsp");
        return;
    }

    int sid = (int) session.getAttribute("student_id");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Add My Marks</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body { background:#eef2f7; font-family: 'Poppins', sans-serif; }
        .card { border-radius:12px; padding:20px; box-shadow:0 5px 20px rgba(0,0,0,0.1); }
    </style>
</head>

<body>
<div class="container mt-5">

    <div class="card col-md-6 offset-md-3">
        <h3 class="text-center mb-3">Enter Your Marks</h3>

        <form action="addMyMarksProcess.jsp" method="post">

            <input type="hidden" name="sid" value="<%= sid %>">

            <div class="mb-3">
                <label>Maths</label>
                <input type="number" name="sub1" class="form-control" required>
            </div>

            <div class="mb-3">
                <label>Physics</label>
                <input type="number" name="sub2" class="form-control" required>
            </div>

            <div class="mb-3">
                <label>Chemistry</label>
                <input type="number" name="sub3" class="form-control" required>
            </div>

            <button class="btn btn-primary w-100">Save My Marks</button>

        </form>
    </div>

</div>
</body>
</html>
