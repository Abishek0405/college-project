<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Online Digital Rental</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap Icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
        <!-- SimpleLightbox plugin CSS-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#page-top" style=" color:  #f4623a;">Digital Rental</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto my-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link"  style=" color: #f4623a;" href="index.html">Home</a></li>
                        <li class="nav-item"><a class="nav-link"  style=" color: #f4623a;" href="search.jsp">Search Rental Products</a></li>
                        <li class="nav-item"><a class="nav-link" style=" color:  #f4623a;"  href="makeorder.jsp">New Order</a></li>
                        <li class="nav-item"><a class="nav-link" style=" color:  #f4623a;"  href="gfeed.jsp">Give Feedback</a></li>
                        <li class="nav-item"><a class="nav-link" style=" color:  #f4623a;"  href="index.html">Logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead">
            <div class="container px-4 px-lg-5 h-100">
                <div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">
                   <h3 align="center" style="color:lightcoral; font-family: cursive;">Choose our Products</h3>
                <div class="w3l_banner_nav_right">  
            <div class="w3ls_w3l_banner_nav_right_grid">
                       
                        
                      <%
                          	       
                        String pcate=request.getParameter("pcate");
                        String user=session.getAttribute("user").toString();
                        String id=session.getAttribute("id").toString();
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/digitalrental","root","root");
                        PreparedStatement query=con.prepareStatement("select * from upload where pcate='"+pcate+"' ");
                        ResultSet rs=query.executeQuery();
	            	while(rs.next())
	            	{
                         
                         String pname=request.getParameter("pname");
                         String psepc=request.getParameter("psepc");
                         String cost=request.getParameter("cost");
                         String pdes=request.getParameter("pdes"); 
                           String contact =request.getParameter("contact");   
                   %>
                                        
					
                        <div class="w3ls_w3l_banner_nav_right_grid1">
                            <div class="col-md-3 w3ls_w3l_banner_left">
						<div class="hover14 column">
						<div class="agile_top_brand_left_grid w3l_agile_top_brand_left_grid">
							<div class="agile_top_brand_left_grid_pos">
							</div>
							<div class="agile_top_brand_left_grid1">
								<figure> 
									<div class="snipcart-item block" style="height: 350px; padding-bottom: 10px;">
										<div class="snipcart-thumb" >
                                                                                    <a href="searchaction.jsp?pname=<%=rs.getString("pname")%>&&psepc=<%=rs.getString("psepc")%>&&pdes=<%=rs.getString("pdes")%>&&cost=<%=rs.getString("cost")%>&&sno=<%=rs.getString("sno")%>"><img src="product/<%=rs.getString("image") %>"alt=" " style=" height: 250px; width: 250px; background-color: white; "class="img-responsive" /></a>
                                                                                    
                                                                                        <p style=" font-size:15px; font-weight: bold; color:  darkmagenta;"><%=rs.getString("pname")%></p>
											<h4 style=" font-size:15px; font-weight: bold; color:  darkmagenta;"> Rs.<%=rs.getString("cost")%>/day</h4>
										</div>
										<div class="snipcart-details">
                                                                                    
                                                                                    		
										</div>
									 </div>
								</figure>
							</div>
						</div>
						</div>
					</div><%}%>
                                </div></div>
				</div>
		
		<div class="clearfix"></div>
    
            
        </header>
        <!-- About-->
        <section class="page-section bg-primary" id="about">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-8 text-center">
                        <h2 class="text-white mt-0">Digital World</h2>
                        <hr class="divider divider-light" />
                        <p class="text-white-75 mb-4">Start Bootstrap has everything you need to get your new website up and running in no time! Choose one of our open source, free to download, and easy to use themes! No strings attached!</p>
                        
                    </div>
                </div>
            </div>
        </section>
        <!-- Services-->
       
        <!-- Portfolio-->
        
        <!-- Call to action-->
        <section class="page-section bg-dark text-white">
          
        </section>
        <!-- Contact-->
        <section class="page-section" id="contact">
            <div class="container px-4 px-lg-5">
               
                <div class="row gx-4 gx-lg-5 justify-content-center mb-5">
                    <div class="col-lg-6">
                     
                    </div>
                </div>
              
            </div>
        </section>
        <!-- Footer-->
        
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- SimpleLightbox plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>

