<%-- 
    Document   : update
    Created on : Aug 8, 2018, 8:16:31 PM
    Author     : SUJAN HASAN
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.connection.MyConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String id=request.getParameter("id");
        String name=request.getParameter("name");
        String dept=request.getParameter("dept");
        String email=request.getParameter("email");
        String cgpa=request.getParameter("cgpa");
        
            Connection con=MyConnection.getCon();
            PreparedStatement pStatement=null;
            String sql="update t_student_record set name=?,dept=?,email=?,cgpa=? where id=?";
            pStatement=con.prepareStatement(sql);
            pStatement.setString(1, name);
            pStatement.setString(2, dept);
            pStatement.setString(3, email);
            pStatement.setString(4, cgpa);
            pStatement.setString(5, id);
            int row=pStatement.executeUpdate();
            if(row>0){
                response.sendRedirect("home.jsp");
            }else{
                response.sendRedirect("error.jsp");
            }
        
        %>
    </body>
</html>
