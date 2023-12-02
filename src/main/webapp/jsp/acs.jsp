<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Payment | Tech House </title>
    
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
    integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

    <link href="../css/acs.css" rel="stylesheet" type="text/css">
    <link href="../css/variables.css" rel="stylesheet" type="text/css">
    


    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500;600;700;800;900&family=Open+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
</head>
<body>

             
        <div class="wrapper">
        	
        	 <%
                String msg=request.getParameter("msg");
             	String t=session.getAttribute("tot").toString();
             	String sa=session.getAttribute("spgadr").toString();
        	 //	System.out.print(t);
        	 //	System.out.print(sa);
        	 	
    if("valid".equals(msg)){
                %>
                <h2 class="succsess">You payment is successful</h2>
                <% 
        	 try{
        	Connection con = ConnectionProvider.getCon();
        	Statement st = con.createStatement();
        	ResultSet rs=st.executeQuery("select *from orderp where id=(select  max(id) from orderp) and ship_to='"+sa+"' and total='"+t+"'");
        	while(rs.next())
    	  	{
        	%>
        	<label>
        		<h4>Your Order ID:</h4>
        		<p><%=rs.getString(1) %></p>
        	</label>
        	<label>
        		<h4>Order Total:</h4>
        		<p>$<%=rs.getString(2) %></p>
        	</label>
        	<label>
        		<h4>Shipping Adress:</h4>
        		<p><%=rs.getString(3) %></p>
        	</label>
        	<!-- <label>
        		<h4>Product Ordered:</h4>
        		<p><%//=rs.getString(5) %></p>
        	</label>
        	<label>
        		<h4>Quantity:</h4>
        		<p><%//=rs.getString(6) %></p>
        	</label> -->
        	
        	
        	
        	<%}
        	}catch(Exception e)
        	{System.out.print(e);}
                
        	%>
                <button type="submit" class="backbutton"><a href="../jsp/shop-all.jsp">BACK TO SHOP</a></button>
            
            <%}
                if("invalid".equals(msg)){
            %>
                 <h2 class="error"> Something went wrong!! </h2> 
                 <button type="submit" class="backbutton"><a href="../jsp/shop-all.jsp">BACK TO SHOP</a></button>
            <% } %>
             </div>
    <script src="https://kit.fontawesome.com/10f80d219b.js" crossorigin="anonymous"></script>
</body>
</html>