<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.File" %>
<%
String fname,lname,gmail,pwd,tel,gen;
gmail=request.getParameter("eAdd");
fname=request.getParameter("fname");
lname=request.getParameter("lname");
tel=request.getParameter("tel");
gen=request.getParameter("gender");
pwd=request.getParameter("pwd");

String dbPath = application.getRealPath("/WEB-INF/employees.db");
Class.forName("org.sqlite.JDBC");
Connection conn=DriverManager.getConnection("jdbc:sqlite:" + dbPath);
String sqlQuery="UPDATE employees SET first_name=?,last_name=?,password=?,phone=?,gender=? WHERE email=?";
PreparedStatement stmt = conn.prepareStatement(sqlQuery);
stmt.setString(6,gmail);
stmt.setString(1,fname);
stmt.setString(2,lname);
stmt.setString(3,pwd);
stmt.setString(4,tel);
stmt.setString(5,gen);
stmt.executeUpdate();
conn.close();
stmt.close();
%>
<%
	HttpSession ss = request.getSession();
	ss.invalidate();
%>
<script>
alert("Profile updated successfully!");
<%
response.sendRedirect("index.jsp");
%>
</script>