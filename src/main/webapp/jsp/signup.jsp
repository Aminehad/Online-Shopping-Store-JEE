<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../css/signup.css" rel="stylesheet" type="text/css">
    <link href="../css/variables.css" rel="stylesheet" type="text/css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500;600;700;800;900&family=Open+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">

    <title>Tech House | Sign up</title>
</head>
<body>

    <main class="container">
        <section class="left">
            <!-- c-conntent = create account content -->
            <div class="signup-content">
                <div class="ca-content">
                    <h1 class="ca-title">Create Account</h1>
                    <div class="ca-input-area">
                    	<form action="signupAction.jsp" method="post">
                        <div class="ca-input-fields">

                          <label class="name-field">
                          		<input type="text" name="name" required/>
                                <span class="placeholder">Full Name</span>
                                <span class="lazm"></span>
                                
                          </label> 
						  <label class="phone-field">
						   		<input type="texte" name="mobileNumber" maxlength="10" onkeypress="return onlyNumberKey(event)" required/>
                                <span class="placeholder">Phone Number</span>
                                <span class="lazm"></span>
                                
						  </label>
						  <label class="adr-field">
						   		 <input type="text" name="adress"required/>
                                 <span class="placeholder">Adress</span>
                                 <span class="lazm"></span>
                                 
						  </label>
						  <label class="email-field">
						  		  <input type="email" name="email" id="email" required/>
                                  <span class="placeholder">Email Address</span>
                                  <span class="lazm"></span>
                                  <div class="error-msg"></div>
						  </label>
						  <label class="pwd-field">
						    	  <input type="password" name="password" id="password" required/>
                                  <span class="placeholder">Password</span>
                                  <span class="lazm"></span>
                                  <div class="error-msg"></div>
						  </label>
                        </div>
                        <div class="terms">
                            <input type="checkbox" class="checkbox" required checked/>
                            <span>I agree to the <a href="#">Terms and Services</a> and <a href="#">Privacy Policy</a></span>
                        </div>
                        <div class="submit-box azerty">
                            <input type="submit" class="signup hide" value="Create Account"/>
                            <input class="azerty" value="Create Account"/>
                        </div>
                 		</form>
                        <div class="signin">
                            <span>Already a member? <a class="signin-link"href="../jsp/login.jsp">Sign in</a></span>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="right">
            <div class="right-content">
                <div class="error-signup">
             <%
        String msg=request.getParameter("msg");
      
        
        if("invalid".equals(msg)){
            %>
            <h1>Something went wrong,<br> Please try again</h1>
         <%} %>
         <%
          if("valid".equals(msg)){
        %>
        <h1> Welcome to House tech<br>Please log in</h1>
        
        <%} %>
         
                </div>
                <nav class="nav-bar">
                    <ul class="nav-bar-list">
                        <li class="list-element"><a href="../jsp/first-home-page.jsp" class="element-link">Home</a></li>
                        <li class="list-element"><a href="../jsp/shop-all-fnru.jsp" class="element-link">Shop Now</a></li>
                        <li class="list-element"><a href="../jsp/contact-us.jsp" class="element-link">Contact Us</a></li>
                        <li class="list-element"><a href="../jsp/login.jsp" class="element-link">Login</a></li>
                    </ul>
                </nav>

                <div class="logo">
					<img src="../images/new-logo.jpg" alt="logo">
                </div>

                
            </div>

        </section>
    </main>
    <script src="../js/sign-up.js"></script>
</body>
</html>