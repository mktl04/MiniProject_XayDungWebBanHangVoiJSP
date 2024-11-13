<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg bg-primary" data-bs-theme="dark">
    <div class="container">
        <a class="navbar-brand" href="#">Flowers Shop</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarColor01">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="home.jsp">Home </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="product.jsp">Product</a>
                </li>  
                <li class="nav-item">
                    <a class="nav-link" href="ManageProduct">Manage Products</a>
                </li>
            </ul>
            <!--Hiển thị Welcome User  -->
            <ul class="navbar-nav">
                <%
                    if (session.getAttribute("username")!=null) //Lịch sử đăng nhập thành công
                    {
                %>
                <li class="nav-item">
                    <a class="nav-link" href="ChangePassServlet">Welcome <%=session.getAttribute("username") %></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="LogoutServlet">Logout</a>
                </li>
                <%
                    } else {
                %>
                <li class="nav-item">
                    <a class="nav-link" href="login.jsp">Login</a>
                </li>
                <%
                    }
                %>
            </ul>
        </div>
    </div>
</nav>