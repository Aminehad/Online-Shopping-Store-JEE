<%@page  import ="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="../css/profile.css" rel="stylesheet" type="text/css">
    <link href="../css/variables.css" rel="stylesheet" type="text/css">
    <link href="../css/header.css" rel="stylesheet" type="text/css">
    <link href="../css/footer.css" rel="stylesheet" type="text/css">
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500;600;700;800;900&family=Open+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <title>Shop All | Tech House</title>
</head>
<body>
	<header>
		<div class="nav-bar-main">
    <div class="container">
    <div class="nav-bar-sec1">
        <img class="box" href="../images/akar-icons_shipping-box-01.png">
        <p class="shipping-free">Free Shipping for order over 500$</p>
    </div>
    <nav class="nav-bar-sec2">
        <img src="../images/menu-icon.png" alt="Menu icone" class="ham-icone">
        <ul class="nav-elements">
            <li class="nav-element"><a href="../jsp/index.jsp" class="nav-bar-link">Home</a></li>
            <li class="nav-element"><a href="../jsp/about-us.html" class="nav-bar-link">About Us</a></li>
            <li class="nav-element"><a href="../jsp/contact-us.jsp" class="nav-bar-link">Contact Us</a></li>
            <li class="nav-element"><a href="../jsp/login.jsp" class="nav-bar-link">Help Center</a></li>
            <li class="nav-element"><a href="#" class="nav-bar-link">Call Us 06606666</a></li>
        </ul>
    </nav>
    </div>
    </div>
    <div class="search-bar-main">
    <div class="container">
        <div class="search-bar-sec1">
            <div class="logo container">
                <a href="../jsp/index.jsp"><img src="../images/new-logo.jpg" alt="logo"></a>
            </div>
            
        </div>
        <!-- AFC: MY Account - My Favorites - My Cart -->
        <div class="AFC">
            <nav class="AFC-nav">
                <ul class="AFC-nav-elements">
                    <li class="AFC-nav-element account"><img src="../images/codicon_account.png" alt="account" class="AFC_icone"><a href="profile.jsp">My Account</a></li>
                    <li class="AFC-nav-element cart"><img src="../images/bi_cart.png" alt="cart" class="AFC_icone">My Cart</li>
 				<%    
          String em=session.getAttribute("email").toString();
            		int z=0;
        try{
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		ResultSet rs1=st.executeQuery("select *from admin where email='"+em+"'");
			while(rs1.next()){z=1;}
			if (z==1){%>
				 <li class="AFC-nav-element account"><img src="../images/icons8-control-panel-64.png" class="AFC_icone"><a href="../admin/adminDash.jsp">My Panel</a></li> <%}
			}
			catch(Exception e){
				System.out.println(e);
			}  
         %>      

 	
                </ul>
            </nav>
        </div>
    </div>
    </div>
    
	</header>
<%String email=session.getAttribute("email").toString();
	String password =session.getAttribute("password").toString();%>
      <main>
        <div class="profile">
            <img src="../images/codicon_account.png" alt="account" class="profile-picture">
            <h1 class="c-title">My Account (<%out.print(email);%>)</h1>
        </div>

        <div class="submit">
            <div class="submit-area">
              <div class="submit-content">
                  <h1 class="s-title">My Account</h1>
                  <p class="s-text">View and edit you personal informations.</p>
              </div>
              <hr />
              <form action="" name="contact-from">
              <% 
              	
              try{
            	  	Connection con=ConnectionProvider.getCon();
            	  	Statement st=con.createStatement();
            	  	ResultSet rs=st.executeQuery("select *from users  where email='"+email+"'");
            	  	while(rs.next())
            	  	{
            	  
               %>
                  <div class="groups">
                        <div class="form-group">
                            <label>Full Name</label>
                            <input name="name "type="text" READONLY placeholder="<%=rs.getString(1) %>" />
                            <div class="error-hint hide">Your name is required</div>
                        </div>
                        
                	 <div class="groups">
                        <div class="form-group">
                            <label>Email</label>
                            <input name="email" type="text" class="" READONLY placeholder="<%=rs.getString(2) %>" />
                            <div class="error-hint hide">Your Email is invalid</div>
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input name="password" type="text" READONLY placeholder="<%out.print(password); %>" />
                            <div class="error-hint hide">The Password is required</div>
                        </div>
                 	 </div>   
                        <div class="form-group">
                            <label>Phone Number</label>
                            <input name="mobileNumber" type="text" READONLY placeholder="<%=rs.getString(3) %>" />
                            <div class="error-hint hide">The Phone Number is required</div>
                        </div>
                        
                        <div class="form-group">
                            <label>Adress</label>
                            <input name="adress" type="text" READONLY placeholder="<%=rs.getString(5) %>" />
                            <div class="error-hint hide">The Adress is required</div>
                        </div> 
                  </div>
                  </form>
                <hr />
              <div class="buttons">
              <form action="edit-info.jsp">
                  <button type="submit" class="submit-button">Edit</button>
               </form> 
                  <button type="submit" class="reset-button"><a href="logoutAction.jsp">Logout</button>
              </div>
            </div> 
                <%
          
                 }
            	}
            	catch(Exception e){
            		System.out.println(e);
            	} %>
            	<%if("admin@admin.com".equals(email)){
            		%>
            		  <div class="buttons">
                  <button type="submit" class="reset-button"><a href="logoutAction.jsp">Logout</button>
              		</div>
            	<%}%>
                  
            </div>
      </main>

    <script src="../js/profile.js"></script>
    <script src="../js/cartall.js"></script>
    <script src="https://kit.fontawesome.com/10f80d219b.js" crossorigin="anonymous"></script>
</body>
</html>