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
                </ul>
            </nav>
        </div>
    </div>
    </div>
    
	</header>
<%String email=session.getAttribute("email").toString();
String password =session.getAttribute("password").toString();%>
      <main>
       <div class="submit">
            <div class="submit-area">
            <div class="submit-content">
            	  <div class="notification">
	            	  	<h1 class="s-title">My Account</h1>
				        <%
				        String msg=request.getParameter("msg");
				      
				        
				        if("valid".equals(msg)){
				            %>
				            <h1 class="good">Succesfully edited</h1>
				         <%} %>
				         <%
				          if("invalid".equals(msg)){
				        %>
				        <h1 class="bad"> Soemething went wrong! try again. </h1>
				        <%} %>
            	  </div>
                  
                  <p class="s-text">Edit Your informations</p>
              </div>
               
              <hr />     
              <form action="edit-infoAction.jsp" name="contact-from" method="post">
              <%try{
            	  Connection con=ConnectionProvider.getCon();
            	  	Statement st=con.createStatement();
            	  	ResultSet rs=st.executeQuery("select *from users  where email='"+email+"'");
            	  	while(rs.next()){	%>
                  
                  <div class="groups">
                        <div class="form-group">
                        
                            <label>Email</label>
                            <input name="email" type="text" class="" READONLY placeholder="<%=rs.getString(2) %>" />
                        </div>
            	  	<div class="groups">
                        <div class="form-group">
                            <label>Full Name</label>
                            <input type="text" name="name" value="<%=rs.getString(1) %>" placeholder="Enter new FullName" required />
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                           <input type="password" name="password" value="<%out.print(password); %>" placeholder="Enter new password" required/>
                        </div>
                 	 </div>   
            	  	<div class="form-group">
                            <label>Phone Number</label>
                            <input type="text" name="mobileNumber" value="<%=rs.getString(3) %>" placeholder="Enter new phone numberr" required/>
                     </div>
            	  	<div class="form-group">
                            <label>Adress</label>
                            <input type="text" name="adress" value="<%=rs.getString(5) %>" placeholder="Enter new Adress" required/>
                        </div> 
            	  	
            	  	<div class="buttons">
               			
               			<button  class="reset-button"><a href="../jsp/profile.jsp">Back</a></button>
               			<button type="submit" class="submit-button">Edit</button>
              		 </form>         
             		 </div>
            	  	
            	  	<%}
            	  	}catch(Exception e){
            	  		System.out.println(e);
            	  	}%>
            	</div>  
      </main>

    <script src="../js/profile.js"></script>
    <script src="https://kit.fontawesome.com/10f80d219b.js" crossorigin="anonymous"></script>
</body>
</html>