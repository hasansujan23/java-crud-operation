<%-- 
    Document   : addstudent
    Created on : Aug 8, 2018, 6:09:41 PM
    Author     : SUJAN HASAN
--%>

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
                    <h2>Add Student</h2>
                </div>
                <div class="subheaderlink">
                    <a href="home.jsp">Student List</a>
                </div>
        </div>
               
       <div class="container clear">
                <div class="col-md-12">
                        <form action="insertstudent.jsp" action="get">
                          <div class="form-group">
                            <label>Id:</label>
                            <input type="text" class="form-control" name="id">
                          </div>
                          <div class="form-group">
                            <label>Name:</label>
                             <input type="text" class="form-control" name="name">
                          </div>
                          <div class="form-group">
                            <label>Department:</label>
                             <input type="text" class="form-control" name="dept">
                          </div>
                          <div class="form-group">
                            <label>Email:</label>
                             <input type="text" class="form-control" name="email">
                          </div>
                          <div class="form-group">
                            <label>CGPA:</label>
                             <input type="text" class="form-control" name="cgpa">
                          </div>
                          </div>
                            <input type="submit" value="SUBMIT" class="btn btn-success btn-block">
                        </form>
                </div>
        </div>
        
        <jsp:include page="footer.jsp"/>
    </body>
</html>
