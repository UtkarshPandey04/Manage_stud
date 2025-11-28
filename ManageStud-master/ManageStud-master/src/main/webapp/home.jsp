<%@ page session="true" %>
<%@ include file="db.jsp" %>

<%
    if(session.getAttribute("student_id") == null){
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        :root {
            --primary: #4361ee;
            --primary-light: #4895ef;
            --secondary: #3f37c9;
            --success: #4cc9f0;
            --dark: #2b2d42;
            --light: #f8f9fa;
            --gray: #8d99ae;
            --card-shadow: 0 10px 20px rgba(0,0,0,0.05);
            --hover-shadow: 0 15px 30px rgba(67, 97, 238, 0.15);
        }

        body {
            background: linear-gradient(135deg, #f5f7fa 0%, #e4edf5 100%);
            font-family: 'Poppins', sans-serif;
            color: var(--dark);
            min-height: 100vh;
        }

        .navbar-custom {
            background: linear-gradient(135deg, var(--primary) 0%, var(--secondary) 100%);
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
            padding: 1rem 0;
        }

        .navbar-brand {
            font-weight: 600;
            font-size: 1.4rem;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .navbar-brand i {
            font-size: 1.6rem;
        }

        .logout-btn {
            background: rgba(255,255,255,0.2);
            border: 1px solid rgba(255,255,255,0.3);
            color: white;
            font-weight: 500;
            padding: 0.5rem 1.2rem;
            border-radius: 50px;
            transition: all 0.3s ease;
        }

        .logout-btn:hover {
            background: rgba(255,255,255,0.3);
            transform: translateY(-2px);
        }

        .dashboard-container {
            padding: 2rem 0;
        }

        .welcome-card {
            background: white;
            border-radius: 16px;
            padding: 2rem;
            margin-bottom: 2rem;
            box-shadow: var(--card-shadow);
            border: none;
            background: linear-gradient(135deg, #ffffff 0%, #f8fbff 100%);
        }

        .dashboard-card {
            background: white;
            border-radius: 16px;
            padding: 2rem 1.5rem;
            height: 100%;
            box-shadow: var(--card-shadow);
            transition: all 0.3s ease;
            border: none;
            text-decoration: none;
            display: block;
            color: inherit;
            position: relative;
            overflow: hidden;
        }

        .dashboard-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 4px;
            background: linear-gradient(90deg, var(--primary) 0%, var(--success) 100%);
        }

        .dashboard-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--hover-shadow);
            color: inherit;
            text-decoration: none;
        }

        .card-icon {
            width: 70px;
            height: 70px;
            border-radius: 16px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 1.5rem;
            font-size: 1.8rem;
            color: white;
        }

        .progress-icon {
            background: linear-gradient(135deg, #ff6b6b 0%, #ff8e8e 100%);
        }

        .attendance-icon {
            background: linear-gradient(135deg, #4ecdc4 0%, #6ae2d9 100%);
        }

        .activities-icon {
            background: linear-gradient(135deg, #ffd166 0%, #ffe08a 100%);
        }

        .profile-icon {
            background: linear-gradient(135deg, #6a4c93 0%, #8b6db0 100%);
        }

        .addmarks-icon {
            background: linear-gradient(135deg, #00b09b 0%, #96c93d 100%);
        }

        .footer {
            text-align: center;
            padding: 2rem 0;
            margin-top: 2rem;
            color: var(--gray);
            font-size: 0.9rem;
        }
    </style>
</head>
<body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-custom">
        <div class="container">
            <a class="navbar-brand text-white" href="#">
                <i class="fas fa-graduation-cap"></i>
                Student Portal
            </a>
            <div class="d-flex align-items-center">
                <span class="text-white me-3 d-none d-sm-block">Welcome, <%= session.getAttribute("student_name") %></span>
                <a href="logout.jsp" class="logout-btn">
                    <i class="fas fa-sign-out-alt me-2"></i>Logout
                </a>
            </div>
        </div>
    </nav>

    <!-- Dashboard Content -->
    <div class="container dashboard-container">

        <!-- Welcome Card -->
        <div class="welcome-card">
            <div class="row align-items-center">
                <div class="col-md-8">
                    <h3>Hello, <%= session.getAttribute("student_name") %>!</h3>
                    <p>Welcome to your student dashboard. Here you can track your progress, attendance, activities and manage your profile.</p>
                </div>
                <div class="col-md-4 text-md-end">
                    <div class="badge bg-primary px-3 py-2 rounded-pill">
                        <i class="fas fa-calendar-day me-2"></i>
                        <%= new java.text.SimpleDateFormat("EEEE, MMMM d").format(new java.util.Date()) %>
                    </div>
                </div>
            </div>
        </div>

        <!-- Dashboard Cards -->
        <div class="row g-4">

            <div class="col-md-6 col-lg-3">
                <a href="progress.jsp" class="dashboard-card">
                    <div class="card-icon progress-icon">
                        <i class="fas fa-chart-line"></i>
                    </div>
                    <h4 class="card-title">Progress</h4>
                    <p class="card-desc">Track your academic progress, grades and performance analytics.</p>
                </a>
            </div>

            <div class="col-md-6 col-lg-3">
                <a href="attendance.jsp" class="dashboard-card">
                    <div class="card-icon attendance-icon">
                        <i class="fas fa-calendar-check"></i>
                    </div>
                    <h4 class="card-title">Attendance</h4>
                    <p class="card-desc">View your class attendance records and statistics.</p>
                </a>
            </div>

            <div class="col-md-6 col-lg-3">
                <a href="activities.jsp" class="dashboard-card">
                    <div class="card-icon activities-icon">
                        <i class="fas fa-tasks"></i>
                    </div>
                    <h4 class="card-title">Activities</h4>
                    <p class="card-desc">Check your assignments, projects and extracurricular activities.</p>
                </a>
            </div>

            <div class="col-md-6 col-lg-3">
                <a href="profile.jsp" class="dashboard-card">
                    <div class="card-icon profile-icon">
                        <i class="fas fa-user-circle"></i>
                    </div>
                    <h4 class="card-title">Profile</h4>
                    <p class="card-desc">Manage your personal information and account settings.</p>
                </a>
            </div>

            <!-- ⭐ NEW FEATURE — Add My Marks -->
            <div class="col-md-6 col-lg-3">
                <a href="addMyMarks.jsp" class="dashboard-card">
                    <div class="card-icon addmarks-icon">
                        <i class="fas fa-pen"></i>
                    </div>
                    <h4 class="card-title">Add My Marks</h4>
                    <p class="card-desc">Submit or update your academic subject marks.</p>
                </a>
            </div>

        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <div class="container">
            <p>Student Portal © 2023 | Designed for better learning experience</p>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
