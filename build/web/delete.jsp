<%-- 
    Document   : delete
    Created on : Aug 8, 2018, 6:45:34 PM
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
            String id=request.getParameter("sid");
            
            Connection con=MyConnection.getCon();
            PreparedStatement pStatement=null;
            String sql="delete from t_student_record where id=?";
            pStatement=con.prepareStatement(sql);
            pStatement.setString(1, id);
            int row=pStatement.executeUpdate();
            if(row>0){
                response.sendRedirect("home.jsp");
            }else{
                response.sendRedirect("error.jsp");
            }
            
        %>
        
    </body>
</html>
