<%@page import="java.sql.*"%>
<%
  String id=request.getParameter("id");
  String user=request.getParameter("user");
   String pcate=request.getParameter("pcate");
   String pname=request.getParameter("pname");
    Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/digitalrental","root","root");
   PreparedStatement ps=con.prepareStatement("Update dorder SET status=' Order Delivered' Where id='"+id+"'and user='"+user+"' and pcate='"+pcate+" and pname='"+pname+"'  ");
   System.out.println(ps);
   ps.executeUpdate();

   out.println("<script>"); 			
   out.println("alert(\"Accept and Order Delivered\")");
   out.println("</script>");
        RequestDispatcher rd=request.getRequestDispatcher("/view.jsp");  
        rd.include(request, response);  
  

%>