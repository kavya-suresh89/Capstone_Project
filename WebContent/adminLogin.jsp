<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>At Your Service</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<div class="container">

<header>
   <h3>At Your Service...</h3>
</header>
<h3 style="font: italic;color:red;font-size: 14px;">
        				<% 
        					if(null != request.getAttribute("errorMessageLogin")) 
        					{
        						out.println(request.getAttribute("errorMessageLogin"));
        				}
        				%>
</h3>
<br>
	<form role="form" id="login_form" action="adminLoginServlet" method="post">
            <center>
            <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Admin Login Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="user_name" value="admin"/></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="login_password" value="admin"/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    
                </tbody>
            </table>
            </center>
        </form>
        </div>
</body>
</html>