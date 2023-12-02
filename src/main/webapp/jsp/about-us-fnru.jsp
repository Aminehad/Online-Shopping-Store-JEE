<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link href="../css/about-us.css" rel="stylesheet" type="text/css">
    <link href="../css/header.css" rel="stylesheet" type="text/css">
    <link href="../css/footer.css" rel="stylesheet" type="text/css">
    <link href="../css/variables.css" rel="stylesheet" type="text/css">
    

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500;600;700;800;900&family=Open+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <title>Tech House | About Us</title>
    <%
        session.setAttribute("email", -1); //same as null just needed -1 to restrict the user from accessing clients interfaces
        %>
</head>
<body>
		 
      <main>
       
          <!-- main-paragraphe -->
          <div class="main-content">
                <div class="main-title">
                    About TechHouse
                </div>
                <hr/>
                <div class="main-p">
                    Founded in 2022, TechHouse began selling PC components,
                    all sorts of electronics and helped popularize the ''Tech is 
                    easy'' movement,and in doing so, developed a cult following 
                    among Tech and Elctronics enthusiasts.<br>Since then, TechHouse 
                    Inc. is the fastest growing tech-focused e-retailer<br>  
                    in North Africa. <br> Today, customers turn to TechHouse to shop 
                    for the latest PC components, consumer electronics, smart 
                    home and gaming products. 
                    TechHouse is ranked as one of the best online shopping 
                    destinations, and the company regularly earns industry-leading 
                    customer service ratings.
                    TechHouse is headquartered in Algiers, with North african 
                    distribution facilities located throughout Algeria,Tunisia and 
                    Morocco.
                </div>
                <hr/>
          </div>
          <div class="main-img">
              <img src="../images/Component 1.png" class="img1">
          </div>
        
      </main>

    <script src="https://kit.fontawesome.com/10f80d219b.js" crossorigin="anonymous"></script>
    <script src="../js/sharingscript-fnru.js"></script>
</body>
</html>