<%@ page import="com.praticle_10.model.User" %>
<%@ page import ="javax.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    User user = new User();
    
    String loginMsg = "please login to continue..";
    
    if(request.getMethod().equalsIgnoreCase("post"))
    {
    	if(user.login(request.getParameter("txtUserName"),request.getParameter("txtPassword")).equals("Success"))
    	{
    		request.getRequestDispatcher("/Items.jsp").forward(request, response);
    	}
    	else
    	{
    		loginMsg = "Invalid credentials";
    	}
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<script type="text/javascript"> src="Controllers/jQuery.js"</script>
<script type="text/javascript"> src="Controllers/controllerMain.js"</script>
</head>
<body>

<from id="fromlogin" action="index.jsp" method="post">
	UserName<input id="txtUserName" name="txtUserName" type="text"><br>
	Password<input id="txtPassword" name="txtPassword" type="password"><br>
	<input id="btnlogin" name="btnlogin" type="button" value="login"><br>
	<div id="divStvMsglogin"></div>
		< %out.println(loginMsg); %>
		</div>
		</from>
		

</body>
</html>		



