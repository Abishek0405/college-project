
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%

String sno=request.getParameter("sno");
String pcate=request.getParameter("pcate");
String pname=request.getParameter("pname");
String psepc=request.getParameter("psepc");
String cost=request.getParameter("cost");
String days=request.getParameter("days");
String purpose=request.getParameter("purpose");
String amount=request.getParameter("amount");
String bank=request.getParameter("bank");
String card =request.getParameter("card");
String ifsc=request.getParameter("ifsc");
String cvv=request.getParameter("cvv");
String id=request.getParameter("id");
   String user=session.getAttribute("user").toString(); 

try{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/digitalrental","root","root");
PreparedStatement p=con.prepareStatement("insert into dorder(id,user,pcate,pname,psepc,cost,days,purpose,amount,bank,card,ifsc,cvv)values('"+id+"','"+user+"','"+pcate+"','"+pname+"','"+psepc+"','"+cost+"','"+days+"','"+purpose+"','"+amount+"','"+bank+"','"+card+"','"+ifsc+"','"+cvv+"')");
       
System.out.println(p);
                    p.executeUpdate();
                    System.out.println(p);
                    out.println("<script>"); 			
                    out.println("alert(\"Make Order Sucessfully\")");
                    out.println("</script>");
                                    
                     RequestDispatcher rd=request.getRequestDispatcher("search.jsp");
                    rd.include(request,response);

}
catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("searchaction.jsp");
                    rd.include(request,response);
                }


%>