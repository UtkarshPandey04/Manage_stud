<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Attendance</title>
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
            max-width: 1000px;
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

        .card {
            background-color: white;
            border-radius: 15px;
            box-shadow: var(--card-shadow);
            padding: 30px;
            margin-bottom: 30px;
        }

        .stats-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
            margin-bottom: 30px;
        }

        .stat-card {
            background: linear-gradient(135deg, var(--primary), var(--success));
            color: white;
            padding: 20px;
            border-radius: 12px;
            text-align: center;
        }

        .stat-value {
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 5px;
        }

        .stat-label {
            font-size: 1rem;
            opacity: 0.9;
        }

        .attendance-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .attendance-table th {
            background-color: #f1f5fd;
            padding: 15px;
            text-align: left;
            color: var(--primary);
            font-weight: 600;
            border-bottom: 2px solid #e2e8f0;
        }

        .attendance-table td {
            padding: 15px;
            border-bottom: 1px solid #e2e8f0;
        }

        .attendance-table tr:hover {
            background-color: #f8fafc;
        }

        .progress-container {
            width: 100%;
            background-color: #e2e8f0;
            border-radius: 10px;
            overflow: hidden;
            height: 10px;
        }

        .progress-bar {
            height: 100%;
            border-radius: 10px;
        }

        .good {
            background-color: #10b981;
        }

        .average {
            background-color: #f59e0b;
        }

        .poor {
            background-color: #ef4444;
        }

        .attendance-percentage {
            font-weight: 600;
            text-align: center;
            padding: 5px 10px;
            border-radius: 20px;
            font-size: 0.9rem;
        }

        .icon-container {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            background: linear-gradient(135deg, var(--primary), var(--success));
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 25px;
        }

        .icon-container i {
            font-size: 50px;
            color: white;
        }

        .card h2 {
            color: var(--primary);
            margin-bottom: 15px;
            font-size: 1.8rem;
            text-align: center;
        }

        .card p {
            color: var(--gray);
            font-size: 1.1rem;
            margin-bottom: 30px;
            text-align: center;
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
            .card {
                padding: 20px 15px;
            }

            .stats-container {
                grid-template-columns: 1fr;
            }

            .attendance-table {
                font-size: 0.9rem;
            }

            .attendance-table th,
            .attendance-table td {
                padding: 10px 8px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Student Attendance</h1>
            <p>Track and monitor your class participation</p>
        </div>

        <div class="card">
            <div class="icon-container">
                <i class="fas fa-calendar-check"></i>
            </div>
            <h2>Your Attendance Overview</h2>
            <p>Here's a summary of your attendance across all courses</p>

            <div class="stats-container">
                <div class="stat-card">
                    <div class="stat-value">87%</div>
                    <div class="stat-label">Overall Attendance</div>
                </div>
                <div class="stat-card">
                    <div class="stat-value">42</div>
                    <div class="stat-label">Classes Attended</div>
                </div>
                <div class="stat-card">
                    <div class="stat-value">6</div>
                    <div class="stat-label">Classes Missed</div>
                </div>
                <div class="stat-card">
                    <div class="stat-value">48</div>
                    <div class="stat-label">Total Classes</div>
                </div>
            </div>

            <h3 style="color: var(--primary); margin-bottom: 15px;">Course-wise Attendance</h3>
            <table class="attendance-table">
                <thead>
                    <tr>
                        <th>Course</th>
                        <th>Attended</th>
                        <th>Total</th>
                        <th>Percentage</th>
                        <th>Progress</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Mathematics</td>
                        <td>22</td>
                        <td>24</td>
                        <td class="attendance-percentage" style="background-color: rgba(16, 185, 129, 0.1); color: #10b981;">92%</td>
                        <td>
                            <div class="progress-container">
                                <div class="progress-bar good" style="width: 92%;"></div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>Computer Science</td>
                        <td>20</td>
                        <td>24</td>
                        <td class="attendance-percentage" style="background-color: rgba(245, 158, 11, 0.1); color: #f59e0b;">83%</td>
                        <td>
                            <div class="progress-container">
                                <div class="progress-bar average" style="width: 83%;"></div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>Physics</td>
                        <td>18</td>
                        <td>24</td>
                        <td class="attendance-percentage" style="background-color: rgba(245, 158, 11, 0.1); color: #f59e0b;">75%</td>
                        <td>
                            <div class="progress-container">
                                <div class="progress-bar average" style="width: 75%;"></div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>Chemistry</td>
                        <td>23</td>
                        <td>24</td>
                        <td class="attendance-percentage" style="background-color: rgba(16, 185, 129, 0.1); color: #10b981;">96%</td>
                        <td>
                            <div class="progress-container">
                                <div class="progress-bar good" style="width: 96%;"></div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>English Literature</td>
                        <td>17</td>
                        <td>24</td>
                        <td class="attendance-percentage" style="background-color: rgba(239, 68, 68, 0.1); color: #ef4444;">71%</td>
                        <td>
                            <div class="progress-container">
                                <div class="progress-bar poor" style="width: 71%;"></div>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="action-container">
            <a href="home.jsp" class="btn">
                <i class="fas fa-arrow-left"></i> Back to Dashboard
            </a>
        </div>
    </div>
</body>
</html>