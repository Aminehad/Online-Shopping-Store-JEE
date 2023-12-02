<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../css/login.css" rel="stylesheet" type="text/css">
    <link href="../css/variables.css" rel="stylesheet" type="text/css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500;600;700;800;900&family=Open+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">

    <title> Tech House | Log in </title>
</head>
<body>
    <section class="log-in">
        <div class="left">
                <div class="logo">
                    <h2>LOGO</h2>
                </div>
               <div class="error-login">
               
               <%
                String msg=request.getParameter("msg");
      
        
                if("doesntexist".equals(msg)){
                %>
                <h1>Incorrect email or password</h1>
            <%} %>
            <%
                if("invalid".equals(msg)){
            %>
                <h1> Something went wrong!! </h1>
            <%} %>
               
               
               
               </div>
               
               
            <div class="login-content">
                <p class="welcome-back">Welcome back!Please login to your account</p>
              
              
              <form action="loginAction.jsp" method="post">
                <div class="user-info">
                    <label class="email-field">
                          <input type="email" name="email"  required/>
                          <span class="placeholder">Email Address</span>
                          <div class="error-msg"></div>
                    </label>
                    
                    <label class="pwd-field">
                         <input type="password" name="password" required/>
                         <span class="placeholder">Password</span>
                         <div class="error-msg"></div>
                    </label>
             
                    <div class="choices">
                        <div class="remember">
                            <input type="checkbox" class="checkbox" />
                            <span> Remember me</span>
                        </div>

                        <div class="forget">
                            <a href="../jsp/forgotpwd.jsp">Forgot your password ?</a>
                        </div>
                    </div>
                    <div class="submit-box"	>
                        <input type="submit" class="login hide" value="Log In"/>
                        <a class="azerty" href="#"  type="submit">Log In</a>
                        <a class="signup" href="../jsp/signup.jsp">Sign Up</a>
                   </div>
               </div>
              </form>
                <div class="other-logs">
                    <p>or login with</p>
                    <div class="other-logs-links">
                        <a href="#">
                            <img src="../images/facebook.jpg" alt="">
                        </a>
                        <a href="#">
                            <img src="../images/google.png" alt="">
                        </a>
                    </div>
                    
                </div>
            </div>
            
        </div>
    </section>
    <script src="../js/animatedBackground.js"></script>
    <script src="../js/log-in.js"></script>
    
</body>
</html>