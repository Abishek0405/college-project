<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%

String feed=request.getParameter("feed");
String rate=request.getParameter("rate");
String respons=request.getParameter("respons");
String id=request.getParameter("id");
   String user=session.getAttribute("user").toString(); 

try{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/digitalrental","root","root");
PreparedStatement p=con.prepareStatement("update feed set respons='"+respons+"'  where id='"+id+"' and user='"+user+"'  ");
       
System.out.println(p);
                    p.executeUpdate();
                    System.out.println(p);
                    out.println("<script>"); 			
                    out.println("alert(\"Give a response  to'"+user+"' Feedback Successfully\")");
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