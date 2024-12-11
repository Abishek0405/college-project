<%@page import="java.sql.*"%>
<%
  String id=request.getParameter("id");
  String user=request.getParameter("user");
  String pcate=request.getParameter("pcate");
  String pname=request.getParameter("pname");
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/digitalrental","root","root");
   PreparedStatement ps=con.prepareStatement("Update dorder SET status='Cancel'  Where id='"+id+"' and pcate='"+pcate+"'and pname='"+pname+"' ");
   System.out.println(ps);
   ps.executeUpdate();
   out.println("<script>"); 			
   out.println("alert(\"Cancel Your Delivery\")");
   out.println("</script>");
   RequestDispatcher rd=request.getRequestDispatcher("/makeorder.jsp");  
   rd.include(request, response);  
%>
