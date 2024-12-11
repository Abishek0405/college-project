<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%

String feed=request.getParameter("feed");
String rate=request.getParameter("rate");

String id=request.getParameter("id");
   String user=session.getAttribute("user").toString(); 

try{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/digitalrental","root","root");
PreparedStatement p=con.prepareStatement("insert into feed(id,user,feed,rate)values('"+id+"','"+user+"','"+feed+"','"+rate+"') ");
       
System.out.println(p);
                    p.executeUpdate();
                    System.out.println(p);
                    out.println("<script>"); 			
                    out.println("alert(\"Give '"+user+"' Feedback Successfully\")");
                    out.println("</script>");
                                    
                     RequestDispatcher rd=request.getRequestDispatcher("gfeed.jsp");
                    rd.include(request,response);

}
catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("gfeed.jsp");
                    rd.include(request,response);
                }


%>