<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Activities</title>
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

        .header {
            text-align: center;
            margin-bottom: 30px;
        }

        .header h1 {
            color: var(--primary);
            font-size: 2.5rem;
            margin-bottom: 10px;
            font-weight: 700;
        }

        .header p {
            color: var(--gray);
            font-size: 1.1rem;
        }

        .activities-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 25px;
            margin-bottom: 30px;
        }

        .activity-card {
            background-color: white;
            border-radius: 15px;
            box-shadow: var(--card-shadow);
            padding: 25px;
            transition: transform 0.3s ease;
        }

        .activity-card:hover {
            transform: translateY(-5px);
        }

        .activity-icon {
            width: 70px;
            height: 70px;
            border-radius: 50%;
            background: linear-gradient(135deg, var(--primary), var(--success));
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 20px;
        }

        .activity-icon i {
            font-size: 30px;
            color: white;
        }

        .activity-card h3 {
            color: var(--primary);
            margin-bottom: 10px;
            font-size: 1.4rem;
        }

        .activity-card p {
            color: var(--gray);
            margin-bottom: 15px;
        }

        .activity-meta {
            display: flex;
            justify-content: space-between;
            color: var(--gray);
            font-size: 0.9rem;
            margin-top: 15px;
            padding-top: 15px;
            border-top: 1px solid #eee;
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
            background-color: var(--primary);
            color: white;
        }

        .btn:hover {
            background-color: var(--secondary);
            transform: translateY(-3px);
            box-shadow: 0 7px 15px rgba(67, 97, 238, 0.3);
        }

        .btn i {
            margin-right: 8px;
        }

        .action-container {
            text-align: center;
            margin-top: 20px;
        }

        @media (max-width: 768px) {
            .activities-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Your Activities</h1>
            <p>Track your recent academic activities and progress</p>
        </div>

        <div class="activities-grid">
            <div class="activity-card">
                <div class="activity-icon">
                    <i class="fas fa-book"></i>
                </div>
                <h3>Mathematics Assignment</h3>
                <p>Completed Chapter 5 exercises on Calculus. Submitted on time with a score of 92%.</p>
                <div class="activity-meta">
                    <span><i class="far fa-calendar"></i> Oct 15, 2023</span>
                    <span><i class="far fa-clock"></i> 2 hours</span>
                </div>
            </div>

            <div class="activity-card">
                <div class="activity-icon">
                    <i class="fas fa-flask"></i>
                </div>
                <h3>Chemistry Lab</h3>
                <p>Conducted experiment on chemical reactions. Lab report submitted and graded.</p>
                <div class="activity-meta">
                    <span><i class="far fa-calendar"></i> Oct 12, 2023</span>
                    <span><i class="far fa-clock"></i> 3 hours</span>
                </div>
            </div>

            <div class="activity-card">
                <div class="activity-icon">
                    <i class="fas fa-laptop-code"></i>
                </div>
                <h3>Programming Project</h3>
                <p>Developed a web application for database management. Project submitted for review.</p>
                <div class="activity-meta">
                    <span><i class="far fa-calendar"></i> Oct 10, 2023</span>
                    <span><i class="far fa-clock"></i> 8 hours</span>
                </div>
            </div>

            <div class="activity-card">
                <div class="activity-icon">
                    <i class="fas fa-file-alt"></i>
                </div>
                <h3>Literature Essay</h3>
                <p>Wrote an analytical essay on modern poetry. Received positive feedback from instructor.</p>
                <div class="activity-meta">
                    <span><i class="far fa-calendar"></i> Oct 8, 2023</span>
                    <span><i class="far fa-clock"></i> 4 hours</span>
                </div>
            </div>

            <div class="activity-card">
                <div class="activity-icon">
                    <i class="fas fa-chart-bar"></i>
                </div>
                <h3>Statistics Quiz</h3>
                <p>Completed weekly quiz on probability distributions. Scored 18/20 points.</p>
                <div class="activity-meta">
                    <span><i class="far fa-calendar"></i> Oct 5, 2023</span>
                    <span><i class="far fa-clock"></i> 45 mins</span>
                </div>
            </div>

            <div class="activity-card">
                <div class="activity-icon">
                    <i class="fas fa-users"></i>
                </div>
                <h3>Group Discussion</h3>
                <p>Participated in online discussion about economic theories. Contributed 5 substantive posts.</p>
                <div class="activity-meta">
                    <span><i class="far fa-calendar"></i> Oct 3, 2023</span>
                    <span><i class="far fa-clock"></i> 1.5 hours</span>
                </div>
            </div>
        </div>

        <div class="action-container">
            <a href="home.jsp" class="btn">
                <i class="fas fa-arrow-left"></i> Back to Dashboard
            </a>
        </div>
    </div>
</body>
</html>