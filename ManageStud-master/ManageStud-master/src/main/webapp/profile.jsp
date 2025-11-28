<%@ include file="db.jsp" %>

<%
    if(session.getAttribute("student_id") == null){
        response.sendRedirect("login.jsp");
    }

    int sid = (int) session.getAttribute("student_id");
    String query = "SELECT * FROM students WHERE id=?";
    PreparedStatement ps = conn.prepareStatement(query);
    ps.setInt(1, sid);

    ResultSet rs = ps.executeQuery();

    String name = "";
    String mobile = "";
    String address = "";
    String email = "";

    if(rs.next()){
        name = rs.getString("name");
        mobile = rs.getString("mobile");
        address = rs.getString("address");
        email = rs.getString("email");
    }

    // Close resources
    rs.close();
    ps.close();
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Profile</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --primary: #4361ee;
            --secondary: #3f37c9;
            --success: #4cc9f0;
            --light: #f8f9fa;
            --dark: #212529;
            --gray: #6c757d;
            --card-shadow: 0 10px 20px rgba(0,0,0,0.1);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: #f5f7fb;
            color: var(--dark);
            line-height: 1.6;
            padding: 20px;
            min-height: 100vh;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
        }

        .profile-header {
            text-align: center;
            margin-bottom: 30px;
        }

        .profile-header h1 {
            color: var(--primary);
            font-size: 2.5rem;
            margin-bottom: 10px;
            font-weight: 700;
        }

        .profile-header p {
            color: var(--gray);
            font-size: 1.1rem;
        }

        .profile-card {
            background-color: white;
            border-radius: 15px;
            box-shadow: var(--card-shadow);
            overflow: hidden;
            margin-bottom: 30px;
            transition: transform 0.3s ease;
        }

        .profile-card:hover {
            transform: translateY(-5px);
        }

        .profile-banner {
            height: 180px;
            background: linear-gradient(135deg, var(--primary), var(--success));
            position: relative;
        }

        .profile-avatar {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            background: white;
            position: absolute;
            bottom: -75px;
            left: 50%;
            transform: translateX(-50%);
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: var(--card-shadow);
            border: 5px solid white;
        }

        .profile-avatar i {
            font-size: 70px;
            color: var(--primary);
        }

        .profile-content {
            padding: 100px 40px 40px;
        }

        .profile-info {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }

        .info-group {
            margin-bottom: 25px;
        }

        .info-label {
            font-size: 0.9rem;
            color: var(--gray);
            text-transform: uppercase;
            font-weight: 600;
            letter-spacing: 1px;
            margin-bottom: 8px;
            display: flex;
            align-items: center;
        }

        .info-label i {
            margin-right: 10px;
            font-size: 1.1rem;
        }

        .info-value {
            font-size: 1.2rem;
            font-weight: 500;
            color: var(--dark);
            padding: 12px 15px;
            background-color: #f8f9fa;
            border-radius: 10px;
            border-left: 4px solid var(--primary);
        }

        .action-buttons {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-top: 40px;
        }

        .btn {
            padding: 12px 30px;
            border-radius: 50px;
            font-weight: 600;
            text-decoration: none;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            transition: all 0.3s ease;
            cursor: pointer;
            border: none;
            font-size: 1rem;
        }

        .btn-primary {
            background-color: var(--primary);
            color: white;
        }

        .btn-primary:hover {
            background-color: var(--secondary);
            transform: translateY(-3px);
            box-shadow: 0 7px 15px rgba(67, 97, 238, 0.3);
        }

        .btn-outline {
            background-color: transparent;
            color: var(--primary);
            border: 2px solid var(--primary);
        }

        .btn-outline:hover {
            background-color: rgba(67, 97, 238, 0.1);
            transform: translateY(-3px);
        }

        .btn i {
            margin-right: 8px;
        }

        @media (max-width: 768px) {
            .profile-content {
                padding: 100px 20px 30px;
            }

            .profile-info {
                grid-template-columns: 1fr;
            }

            .action-buttons {
                flex-direction: column;
                align-items: center;
            }

            .btn {
                width: 100%;
                max-width: 300px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="profile-header">
            <h1>Student Profile</h1>
            <p>View and manage your personal information</p>
        </div>

        <div class="profile-card">
            <div class="profile-banner"></div>
            <div class="profile-avatar">
                <i class="fas fa-user-graduate"></i>
            </div>

            <div class="profile-content">
                <div class="profile-info">
                    <div class="info-group">
                        <div class="info-label">
                            <i class="fas fa-user"></i>
                            Full Name
                        </div>
                        <div class="info-value">
                            <%= name %>
                        </div>
                    </div>

                    <div class="info-group">
                        <div class="info-label">
                            <i class="fas fa-mobile-alt"></i>
                            Mobile Number
                        </div>
                        <div class="info-value">
                            <%= mobile %>
                        </div>
                    </div>

                    <div class="info-group">
                        <div class="info-label">
                            <i class="fas fa-map-marker-alt"></i>
                            Address
                        </div>
                        <div class="info-value">
                            <%= address %>
                        </div>
                    </div>

                    <div class="info-group">
                        <div class="info-label">
                            <i class="fas fa-envelope"></i>
                            Email Address
                        </div>
                        <div class="info-value">
                            <%= email %>
                        </div>
                    </div>
                </div>

                <div class="action-buttons">
                    <a href="home.jsp" class="btn btn-primary">
                        <i class="fas fa-arrow-left"></i> Back to Dashboard
                    </a>
                    <button class="btn btn-outline">
                        <i class="fas fa-edit"></i> Edit Profile
                    </button>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Add subtle animation to info values when page loads
        document.addEventListener('DOMContentLoaded', function() {
            const infoValues = document.querySelectorAll('.info-value');

            infoValues.forEach((value, index) => {
                value.style.opacity = '0';
                value.style.transform = 'translateY(10px)';

                setTimeout(() => {
                    value.style.transition = 'opacity 0.5s ease, transform 0.5s ease';
                    value.style.opacity = '1';
                    value.style.transform = 'translateY(0)';
                }, 200 * index);
            });
        });
    </script>
</body>
</html>