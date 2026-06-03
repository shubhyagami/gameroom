<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.File" %>
<%
String fname,lname,gmail,pwd,dept,tel,gender;
dept=request.getParameter("dept");
tel=request.getParameter("tel");
gender=request.getParameter("gender");
fname=request.getParameter("fname");
lname=request.getParameter("lname");
gmail=request.getParameter("eAdd");
pwd=request.getParameter("pwd");

String dbPath = application.getRealPath("/WEB-INF/employees.db");
Class.forName("org.sqlite.JDBC");
Connection conn=DriverManager.getConnection("jdbc:sqlite:" + dbPath);

String createSQL="CREATE TABLE IF NOT EXISTS employees (id INTEGER PRIMARY KEY AUTOINCREMENT, first_name TEXT, last_name TEXT, gender TEXT, phone TEXT, email TEXT UNIQUE, password TEXT, department TEXT)";
Statement st = conn.createStatement();
st.executeUpdate(createSQL);
st.close();

String sqlQuery="INSERT INTO employees (first_name,last_name,gender,phone,email,password,department) VALUES(?,?,?,?,?,?,?)";
PreparedStatement stmt = conn.prepareStatement(sqlQuery);
stmt.setString(1,fname);
stmt.setString(2,lname);
stmt.setString(3,gender);
stmt.setString(4,tel);
stmt.setString(5,gmail);
stmt.setString(6,pwd);
stmt.setString(7,dept);
stmt.executeUpdate();
conn.close();
stmt.close();
%>
<script>
alert("Registration successful ! Welcome to the team!");
setTimeout(()=>{
    alert("redirecting......")},2000
)
</script>
<%
response.sendRedirect("sign.jsp");
%>