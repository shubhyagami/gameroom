<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.servlet.http.*" %>
    <%@ page import="java.io.File" %>
<%
String uname,pwd;
uname=request.getParameter("uname");
pwd=request.getParameter("pwd");
String dbPath = application.getRealPath("/WEB-INF/employees.db");
Class.forName("org.sqlite.JDBC");
Connection conn=DriverManager.getConnection("jdbc:sqlite:" + dbPath);

String createSQL="CREATE TABLE IF NOT EXISTS employees (id INTEGER PRIMARY KEY AUTOINCREMENT, first_name TEXT, last_name TEXT, gender TEXT, phone TEXT, email TEXT UNIQUE, password TEXT, department TEXT)";
Statement st = conn.createStatement();
st.executeUpdate(createSQL);
st.close();

String sqlQuery="SELECT * FROM employees WHERE email=? and password=? ;";
PreparedStatement stmt = conn.prepareStatement(sqlQuery);
stmt.setString(1,uname);
stmt.setString(2,pwd);
ResultSet rs = stmt.executeQuery();
if(rs.next()){
	%>
	<%
	HttpSession ss = request.getSession();
	ss.setAttribute("user", uname);
	Cookie userck = new Cookie("username", uname);
	userck.setMaxAge(24 * 60 * 60); 
	response.addCookie(userck);
	Cookie passck = new Cookie("password", pwd);
	passck.setMaxAge(24 * 60 * 60);
	response.addCookie(passck);
	response.sendRedirect("dashboard.jsp?gmail="+uname);
	%>
<%
} else{ %>
<script>
alert("Login failed !!!");
window.location.href="error.jsp";
</script>
<% }
conn.close();
stmt.close();
%>