<%-- 
    Document   : changepass
    Created on : Nov 11, 2024, 5:19:06 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--nhung noi dung header.jsp-->
<jsp:include page="shared/header.jsp" />
<!--nhung noi dung nav.jsp-->
<jsp:include page="shared/nav.jsp" />
<div class="container">
    <h2>Change Password</h2>
    <form action="LoginServlet" method="post">
        <div>
            <label>Old password</label>
            <input type="password" name="oldpassword" value="" required="" class="form-control">
        </div>
        <div>
            <label>New password</label>
            <input type="password" name="newpassword" value="" required="" class="form-control">
        </div>
            <label>Confirm new password</label>
            <input type="password" name="confirmpassword" value="" required="" class="form-control">
        </div>
        <div>
            <button type="submit" class="btn btn-primary">Change Password</button>
        </div>
    </form>
    <%
        if (request.getAttribute("error") != null) {
    %>
    <div class="text-danger mb-3">
        <%=request.getAttribute("error")%>
    </div>
    <%
        }
    %>
</div>
<!--nhung noi dung footer.jsp-->
<jsp:include page="shared/footer.jsp" />   


