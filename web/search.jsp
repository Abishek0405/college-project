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
                        <li class="nav-item"><a class="nav-link"  style=" color:  #f4623a;" href="index.html">Home</a></li>
                        <li class="nav-item"><a class="nav-link"  style=" color:  #f4623a;" href="search.jsp">Search Rental Products</a></li>
                        <li class="nav-item"><a class="nav-link" style=" color:  #f4623a;"  href="makeorder.jsp"> Order Status</a></li>
                        <li class="nav-item"><a class="nav-link" style=" color:  #f4623a;"  href="gfeed.jsp">Give Feedback</a></li>
                        <li class="nav-item"><a class="nav-link" style=" color:  #f4623a;"  href="vresponse.jsp">View Response</a></li>
                    <li class="nav-item"><a class="nav-link" style=" color:  #f4623a;"  href="index.html">Logout</a></li>
                  
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead">
            <div class="container px-4 px-lg-5 h-100">
                <div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">
                    <style>
      table{
          width: 50%;
          color: White;
          font-size: 20px;
          margin-top: -200px;
      }
      tr,td{
          padding-bottom: 10px;
          border-radius: 20px;
          font-family: initial;
          width: 350px;
      }
      h3{
          color: lightpink;
      }
  </style>
   <h3 align="center" style="color:whit; ">Choose our Rental Products</h3>
                    
                    <%
                    String user=session.getAttribute("user").toString();
                    String id=session.getAttribute("id").toString();     
                    %>
                   <form action="srch.jsp">
                    <table align="center">
                        <tr><td><strong>Search By Products: </strong></td><td>
                            <select name="pcate" style="border-radius: 10px; height: 20px; width: 250px; height: 30px" required>
                                <option>Choose one</option>
                        <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/digitalrental","root","root");
                        PreparedStatement query=con.prepareStatement("select * from upload group by pcate ");
                        ResultSet rs=query.executeQuery();
	            	while(rs.next())
	            	{
                        %>
                                <option><%=rs.getString("pcate")%></option><%}%>
                            </select>
                            </td></tr>
                        <tr><td align="center" colspan="2"><button type="submit" style="border-radius: 20px; height: 40px; width:120px;background-color:  #f4623a; ">Search</button></td></tr>
                    </table>
                    </form>	  
                </div>
                </div>
            
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
