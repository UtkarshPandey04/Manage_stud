<!DOCTYPE html>
<html>
<head>
    <title>Student Login</title>

    <!-- Bootstrap + Fonts -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg,#4e73df,#224abe);
            font-family: 'Poppins', sans-serif;
            height: 100vh;
        }
        .login-box {
            width: 380px;
            padding: 30px;
            background: white;
            border-radius: 12px;
            margin: auto;
            margin-top: 120px;
            box-shadow: 0px 6px 22px rgba(0,0,0,0.2);
        }
    </style>
</head>

<body>
    <div class="login-box">
        <h3 class="text-center mb-4">Student Login</h3>

        <form action="loginProcess.jsp" method="post">
            <div class="form-group mb-3">
                <label>Email</label>
                <input type="email" class="form-control" name="email" required>
            </div>

            <div class="form-group mb-4">
                <label>Password</label>
                <input type="password" class="form-control" name="password" required>
            </div>

            <button class="btn btn-primary w-100">Login</button>
        </form>

        <div class="text-center mt-3">
            <a href="signup.jsp">New Student? Register Here</a>
        </div>
    </div>
</body>
</html>
