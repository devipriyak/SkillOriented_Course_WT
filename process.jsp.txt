<%
//Read values from the myfood.html form
String uname=request.getParameter("name");
String foodname=request.getParameter("foodname");
String qu=request.getParameter("quan");
//print
out.println("Hello"+uname);
out.println("Thank you for your order");
out.println("We provide"+foodname);
out.println("Discount on"+qu);
%>