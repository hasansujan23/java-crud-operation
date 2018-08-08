<%-- 
    Document   : home
    Created on : Aug 8, 2018, 5:08:08 PM
    Author     : SUJAN HASAN
--%>

<%@page import="java.sql.ResultSet"%>
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
        <jsp:include page="index.jsp"/>
        <div class="container">
            	<div class="subheader">
                    <h2>Student List</h2>
                </div>
                <div class="subheaderlink">
                    <a href="addstudent.jsp">Add Student</a>
                </div>
            
            <div class="table-responsive clear">
                <table class="table table-bordered clear">
                    <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Department</th>
                    <th>Email</th>
                    <th>cgpa</th>
                    <th>Action</th>
                    </tr>
                    <%
                        Connection con=MyConnection.getCon();
                        PreparedStatement pStatement=null;
			String sql="select * from t_student_record";
			pStatement=con.prepareStatement(sql);
                        ResultSet rset=pStatement.executeQuery();
                        while(rset.next()){
        %>
                    <tr>
                        <td><%=rset.getString("id") %></td>
                        <td><%=rset.getString("name") %></td>
                        <td><%=rset.getString("dept") %></td>
                        <td><%=rset.getString("email") %></td>
                        <td><%=rset.getString("cgpa") %></td>
                        <td>
                            <a href="editstudent.jsp?sid=<%=rset.getString("id") %>" class="btn btn-warning">Edit</a>
                            <a href="delete.jsp?sid=<%=rset.getString("id") %>" class="btn btn-danger">Delete</a>
                        </td>
                    </tr>
                                <%
            }
            %>
                </table>
            </div>
        </div>        
       <jsp:include page="footer.jsp"/>
    </body>
</html>
