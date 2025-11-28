<!DOCTYPE html>
<html>
<head>
    <title>Student Signup</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">

    <style>
        body { background: #f7f9fc; font-family: 'Poppins',sans-serif; }
        .container { max-width: 600px; margin-top: 50px; }
        .card { padding: 25px; border-radius: 12px; box-shadow: 0 5px 20px rgba(0,0,0,0.1); }
    </style>
</head>

<body>
<div class="container">
    <div class="card">
        <h3 class="text-center mb-3">Student Registration</h3>

        <form action="signupProcess.jsp" method="post">

            <div class="row">
                <div class="col-md-6 mb-3">
                    <label>Name</label>
                    <input type="text" class="form-control" name="name" required>
                </div>

                <div class="col-md-6 mb-3">
                    <label>Mobile</label>
                    <input type="text" class="form-control" name="mobile" required>
                </div>
            </div>

            <div class="mb-3">
                <label>Address</label>
                <input type="text" class="form-control" name="address" required>
            </div>

            <div class="mb-3">
                <label>Email</label>
                <input type="email" class="form-control" name="email" required>
            </div>

            <div class="mb-3">
                <label>Password</label>
                <input type="password" class="form-control" name="password" required>
            </div>

            <button class="btn btn-success w-100 mt-2">Create Account</button>
        </form>

        <div class="text-center mt-3">
            <a href="login.jsp">Already registered? Login here</a>
        </div>
    </div>
</div>

</body>
</html>
