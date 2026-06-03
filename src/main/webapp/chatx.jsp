<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.File" %>

<%
String usr = request.getParameter("username");
String name = request.getParameter("name");
String msg = request.getParameter("message");

String dbPath = application.getRealPath("/WEB-INF/employees.db");
Class.forName("org.sqlite.JDBC");

Connection conn = null;
PreparedStatement stmt = null;

try {
    conn = DriverManager.getConnection("jdbc:sqlite:" + dbPath);
    
    String createSQL="CREATE TABLE IF NOT EXISTS messages (id INTEGER PRIMARY KEY AUTOINCREMENT, email TEXT, name TEXT, message TEXT, timestamp DATETIME DEFAULT CURRENT_TIMESTAMP)";
    Statement st = conn.createStatement();
    st.executeUpdate(createSQL);
    st.close();
    
    String sqlQuery = "INSERT INTO messages (email, name, message) VALUES (?, ?, ?)";
    stmt = conn.prepareStatement(sqlQuery);
    stmt.setString(1, usr);
    stmt.setString(2, name);
    stmt.setString(3, msg);
    stmt.executeUpdate();
} catch (SQLException e) {
    e.printStackTrace();
} finally {
    try {
        if (stmt != null) stmt.close();
        if (conn != null) conn.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
}
%>
<script>
setTimeout(() => {
    window.location.href = "chat.jsp?msg=<%= usr%>";
}, 10);
</script>