<%-- 
    Document   : login
    Created on : Feb 28, 2024, 2:19:51 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login Form</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .login-form {
                width: 340px;
                margin: 0 auto;
            }
            .login-wrapper {
                border: 2px solid #f7f7f7; 
                border-radius: 10px;
                padding: 20px;
            }
            .login-form form {
                background: #f7f7f7;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                padding: 30px;
                border-radius: 10px;
            }
            .login-form h2 {
                margin-bottom: 30px;
                font-size: 24px;
                text-align: center;
            }
            .form-group {
                margin-bottom: 20px;
            }
            .form-control {
                min-height: 42px;
                box-shadow: none;
                border-radius: 20px;
            }
            .btn {
                font-size: 18px;
                font-weight: bold;
                min-height: 42px;
                border-radius: 20px;
            }
            .checkbox-inline {
                font-size: 16px;
            }
            .error-message {
                color: red;
                margin-top: 10px;
                display: block;
                text-align: center;
            }
            .remember-me {
                font-size: 16px;
            }

        </style>
    </head>
    <body>
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="text-center mb-4">
                        <h1>FPT University Academic Portal</h1>
                    </div>
                    <div class=" login-wrapper">
                        <form class="login-form" action="login" method="POST">
                            <h2>Log in</h2>       
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Username" required="required" name="username">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" placeholder="Password" required="required" name="password">
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary btn-block">Log in</button>
                            </div>
                            <span class="error-message">${requestScope.error}</span>
                            <div class="form-group">
                                <label class="checkbox-inline remember-me">
                                    <input type="checkbox"> Remember me
                                </label>
                            </div>        
                        </form>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center mt-4">
                <div class="col-md-6 text-center">
                    <img src="https://seeklogo.com/images/F/fpt-university-logo-B3B6D84292-seeklogo.com.png" class="img-fluid" alt="FPT University Logo" width="200px" height="200px"/>
                </div>
            </div>
        </div>
    </body>
</html>
