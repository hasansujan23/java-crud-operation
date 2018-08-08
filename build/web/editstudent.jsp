<%-- 
    Document   : editstudent
    Created on : Aug 8, 2018, 7:56:48 PM
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
                    <h2>Edit Student</h2>
                </div>
                <div class="subheaderlink">
                    <a href="home.jsp">Student List</a>
                </div>
        </div>
        
        <%
            String id=request.getParameter("sid");
            
            Connection con=MyConnection.getCon();
            PreparedStatement pStatement=null;
            String sql="select * from t_student_record where id=?";
            pStatement=con.prepareStatement(sql);
            pStatement.setString(1, id);
            ResultSet rset=pStatement.executeQuery(); 
             while(rset.next()){
        %>
        <div class="container clear">
                <div class="col-md-12">
                        <form action="update.jsp" action="get">
                          <div class="form-group">
                            <label>Id:</label>
                            <input type="text" class="form-control" value="<%=rset.getString("id") %>" name="id">
                          </div>
                          <div class="form-group">
                            <label>Name:</label>
                            <input type="text" class="form-control" value="<%=rset.getString("name") %>" name="name">
                          </div>
                          <div class="form-group">
                            <label>Department:</label>
                            <input type="text" class="form-control" value="<%=rset.getString("dept") %>" name="dept">
                          </div>
                          <div class="form-group">
                            <label>Email:</label>
                            <input type="text" class="form-control" value="<%=rset.getString("email") %>" name="email">
                          </div>
                          <div class="form-group">
                            <label>CGPA:</label>
                             <input type="text" class="form-control" value="<%=rset.getString("cgpa") %>" name="cgpa">
                          </div>
                          </div>
                            <input type="submit" value="SUBMIT" class="btn btn-success btn-block">
                        </form>
                </div>
        </div>
        <%
        }
        %>
        
        <jsp:include page="footer.jsp"/>
    </body>
</html>
