<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" href="resources/style.css" type="text/css" media="screen" title="Stylesheet"/>
</head>
<body>
<div align="center">
    <div style="width: 300px; height: 500px;">
        <form:form method="POST" commandName="submit">

            <div class="imgcontainer">
                <img src="resources/incognito.jpg" alt="Avatar" class="avatar">
            </div>
            <h3 align="center" style="color:maroon;">Hi there! Log in, please</h3>

            <div class="container" align="left">
                <label>Username</label>
                <input type="text" name="name" required="required"/>

                <label>Password</label>
                <input type="password" name="password" required="required"/>
                <button type="submit">Login</button>
            </div>
        </form:form>
    </div>
</div>
</body>
</html>