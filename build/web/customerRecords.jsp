<%-- 
    Document   : addgym
    Created on : Mar 3, 2018, 5:57:15 PM
    Author     : mypc
--%>

<%@page import="java.sql.*"%>
<%@ page import="database.DatabaseConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="utf-8" />
    <title>Fitness</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <!--Favicon -->
	<link rel="icon" type="image/png" href="images/favicon.jpg" />
		
	<!-- CSS Files -->
		
	<link rel="stylesheet" href="css/reset.css" />
	<link rel="stylesheet" href="css/animate.min.css" />
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/font-awesome.css" />
	<link rel="stylesheet" href="css/owl.carousel.css" />
	<link rel="stylesheet" href="css/responsive.css" />
	<link rel="stylesheet" href="css/player/YTPlayer.css" />
	<link href="css/pro-bars.css" rel="stylesheet" />
	

	<!-- End CSS Files -->
 
</head>

<body>
    	<section id="features" class="container">

		<div class="inner">

			<!-- Header -->
			<h1 class="colored fancy">Fitness Ace!</span></h1>
                        

            <!-- Controls -->
                        <div>
           <%         
             String userid = null;
             String gid=null;
            Cookie[] cookies = request.getCookies();
            if(cookies !=null){
        for(Cookie cookie : cookies){
	if(cookie.getName().equals("user_id")) 
            userid = cookie.getValue();
        }
}
            Connection con = DatabaseConnect.dbconnect();
        Statement ps = con.createStatement();
        //String sql = "INSERT INTO gyms(gym_id, name, address, contact, email) VALUES(?,?,?,?,?)";
        //PreparedStatement pstmt = con.prepareStatement(sql);      
                try{
        ResultSet rs = ps.executeQuery("select * from user_detail where user_id='"+userid+"'");
        while(rs.next())
        {
        gid = rs.getString("gym_id");
                }
       //out.println("<h1>details are" +name+ " "+ category+"</h1>");
        
               }
                catch(Exception e)
                {
                    System.out.println(e);
                }
                   String gname = request.getParameter("ename");
                  char fchar='/';
                   if(gname != null)
                   {
                       
                                fchar = gname.charAt(0); }
                  
                try{
                     
        ResultSet rs = ps.executeQuery("SELECT u.user_id,u.name,u.email,u.contact,u.address,up.height,up.weight,up.gender,up.routine,up.bmr from user_detail u,customer_personal_data up where u.user_id=up.user_id and u.name like'"+fchar+"%' and u.gym_id='"+gid+"'");
        %>
        <table style="width:100%">
            <tr>
                <td class="colored bold"><h2>UserID</h2></td>
                <td class="colored bold"><h2>Name</h2></td>
                <td class="colored bold"><h2>Email</h2></td>
                <td class="colored bold"><h2>Contact</h2></td>
                <td class="colored bold" ><h2>Address</h2></td>
                <td class="colored bold" ><h2>Height(cm)</h2></td>
                <td class="colored bold" ><h2>Weight</h2></td>
                <td class="colored bold" ><h2>Gender</h2></td>
                <td class="colored bold" ><h2>Routine</h2></td>
                <td class="colored bold" ><h2>BMR</h2></td>
            
            </tr>   
        
        <%
        while(rs.next())
        {
        
        %>
        <tr>
            <td class="colored bold"><%=rs.getString("user_id") %></td>
            <td class="colored bold"><%=rs.getString("name") %></td>
            <td class="colored bold"><%=rs.getString("email") %></td>
            <td class="colored bold"><%=rs.getString("contact") %></td>
            <td class="colored bold"><%=rs.getString("address") %></td>
            <td class="colored bold"><%=rs.getString("height") %></td>
             <td class="colored bold"><%=rs.getString("weight") %></td>
              <td class="colored bold"><%=rs.getString("gender") %></td>
                 <td class="colored bold"><%=rs.getString("routine") %></td>
               <td class="colored bold"><%=rs.getString("bmr") %></td>
            
        </tr>
        <%
        
        }      %></table> </div><%
                }
                catch(Exception e)
                {
                    System.out.println(e);
                }
			
			%>
			
					 
			<hr>       <hr>
        
		</div><!-- End About Inner -->
	</section><!-- End About Section -->

  
    

	
	</div>
	</section><!-- End Team Section -->  
    
	
    
	<!-- Contact Section -->
	<section id="contact" class="container parallax4">
		<!-- Contact Inner -->
		<div class="inner contact">

			<!-- Form Area -->
			<div class="contact-form">
            
            	<h4 class="header light gray3 fancy"><span class="colored">Contact</span> Us</h4>
                <p class="h-desc white">To join us or ask us for any help<br />
                Email us at:</p>
				
			</div><!-- End Contact Form Area -->
		</div><!-- End Inner -->
	</section><!-- End Contact Section -->



	



	<!-- Footer -->
	<footer id="footer" class="footer">
		<!-- Your Company Name -->
        <img src="images/logo-icon.png" width="200" alt="Logo" />
		<!-- Copyright -->
		<p class="copyright normal">© 2014 <span class="colored">Fitness.</span> All Rights Reserved.</p>
	</footer><!-- End Footer -->

	<!-- JS Files -->
	
	
	<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery.appear.js"></script>
	<script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="js/modernizr-latest.js"></script>
	<script type="text/javascript" src="js/SmoothScroll.js"></script>
	<script type="text/javascript" src="js/jquery.parallax-1.1.3.js"></script>
	<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="js/jquery.superslides.js"></script>
	<script type="text/javascript" src="js/jquery.flexslider.js"></script>
	<script type="text/javascript" src="js/jquery.mb.YTPlayer.js"></script>
	<script type="text/javascript" src="js/jquery.fitvids.js"></script>
	<script type="text/javascript" src="js/jquery.slabtext.js"></script>
	<script type="text/javascript" src="js/plugins.js"></script>

	<script>
  $("a.about-icon").hover(function () {
    $(this).children("i").addClass("fa-spin");
 }, function(){
 	$(this).children("i").removeClass("fa-spin");
 });
</body>
</html>