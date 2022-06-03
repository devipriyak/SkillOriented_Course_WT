
<%@ page import="java.sql.*" %>

		<%
int eid=Integer.parseInt(request.getParameter("eid"));
	String ename=request.getParameter("ename");
String email=request.getParameter("email");

		try
		{
		Connection con= null;
          Class.forName("oracle.jdbc.driver.OracleDriver");
      con = DriverManager.getConnection("jdbc:oracle:thin:@ntsocietyserver:1521:oralbrce","srinu","srinu25");
String qry ="insert into  empcseb values(?,?,?)";

PreparedStatement pstmt = con.prepareStatement(qry);

			pstmt.setInt(1,eid);
			pstmt.setString(2,ename);
			pstmt.setString(3,email);
		int sts = pstmt.executeUpdate();
	out.println(sts+ " row inserted successfully");

		}
		catch(Exception e)
		{
		out.print(e);
		e.printStackTrace();
		}
		%>