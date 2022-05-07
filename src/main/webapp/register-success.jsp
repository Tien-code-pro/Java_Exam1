<%--
  Created by IntelliJ IDEA.
  User: PhạmMinh
  Date: 07/05/2022
  Time: 5:07 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register Success</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>

<header class="w3-container w3-center w3-padding-32">
    <h1>Register Success</h1>
</header>
<div class="w3-main w3-content" style="max-width:1600px;margin-top:83px">
    <div class="w3-container w3-dark-grey w3-center w3-text-light-grey w3-padding-32" id="about">
    <h4><b>About Me</b></h4>
    <img src="https://www.w3schools.com//w3images/avatar_hat.jpg" alt="Me" class="w3-image w3-padding-32" width="600" height="650">
    <div class="w3-content w3-justify" style="max-width:600px">
        <p>UserName: <%=request.getAttribute("username")%></p>
        <p>Gender: <%=request.getAttribute("gender")%></p>
        <p>Phone: <%=request.getAttribute("phone")%></p>
        <p>Address: <%=request.getAttribute("address")%></p>
    </div>
    </div>
    <div>

</body>
</html>
