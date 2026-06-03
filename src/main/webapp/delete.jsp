<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.servlet.http.*" %>
    <%@ page import="java.io.File" %>

<%
String Email;
Email=request.getParameter("gmail");

String dbPath = application.getRealPath("/WEB-INF/employees.db");
Class.forName("org.sqlite.JDBC");

Connection conn=DriverManager.getConnection("jdbc:sqlite:" + dbPath);

String sqlQuery="DELETE FROM employees WHERE email=?";
PreparedStatement stmt = conn.prepareStatement(sqlQuery);
stmt.setString(1,Email);
stmt.executeUpdate();
conn.close();
stmt.close();
%>
<%
	HttpSession ss = request.getSession();
	ss.invalidate();
%>
<script>
alert("Profile deleted successfully!");
setTimeout(()=>{
    alert("redirecting......")},2000
)
<%
response.sendRedirect("index.jsp");
%>
</script>