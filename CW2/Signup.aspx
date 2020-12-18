<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="CW2.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/bootstrap-4.5.3-dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Styles/Stylelogin.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="fonts/material-icon/css/material-design-iconic-font.min.css" rel="stylesheet" />
</head>
<body>
<div class="main">
        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Sign up</h2>
                        <form method="POST" class="register-form" id="register-form">
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="name" id="name" placeholder="Your Name"/>
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <input type="email" name="email" id="email" placeholder="Your Email"/>
                            </div>
                             <div class="form-group">
                                <label for="address"><i class="zmdi zmdi-email"></i></label>
                                <input type="text" name="Address" id="address" placeholder="Your Address"/>
                            </div>
                            <div class="form-group">
                                <label for="Contact No"><i class="zmdi zmdi-phone"></i></label>
                                <input type="text" name="Address" id="Contact No" placeholder="Your Contact No"/>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="pass" id="pass" placeholder="Password"/>
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="password" name="re_pass" id="re_pass" placeholder="Repeat your password"/>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signup" id="signup" class="form-submit" value="Register"/>
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">                        
                        <figure><img src="Images/sssss.jpg" /></figure>
                        <a href="#" class="signup-image-link">I am already member</a>
                    </div>
                </div>
            </div>
        </section>
    </div> 
    
    <script src="js/main.js"></script>
    <script src="js/jquery-ui.min.js"></script>

</body>
</html>
