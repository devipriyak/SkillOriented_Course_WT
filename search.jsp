
<%@ page import="java.sql.*" %>

		<%
		int eid=Integer.parseInt(request.getParameter("eid"));
		

		try
		{
			Connection con= null;
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@ntsocietyserver:1521:oralbrce","srinu","srinu25");
			String qry ="select eid,name,email from empcseb where eid=?";

			PreparedStatement pstmt = con.prepareStatement(qry);

			pstmt.setInt(1,eid);
			
			ResultSet rs= pstmt.executeQuery();
			
			while(rs.next())
			{
                         out.println(rs.getInt(1));
                         out.println(rs.getString(2));
                         out.println(rs.getString(3));
			}

		}
		catch(Exception e)
		{
		out.print(e);
		e.printStackTrace();
		}
		%>