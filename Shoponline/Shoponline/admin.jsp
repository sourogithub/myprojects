<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Front page</title>
<script type="text/javascript">
function validate()
{
	if (document.login.t1.value=="")
	{
		alert("PLEASE ENTER YOUR USERID!");
		document.login.t1.focus();
		return false;
	}
	if (document.login.t2.value=="")
	{
		alert("PLEASE ENTER YOUR PASSWORD!");
		document.login.t2.focus();
		return false;
	}
	return true;
}
</script>
</head>
<p> ${message}</p>
<body>

<h1>ADMIN PORTAL</h1>

<form action="Admindb" method="post" onsubmit="return validate();">
<table style="background-color:#99C; font-size:24px; position:relative; left:450px; top:50px; height:200px" width="400px">
<thead>
</thead>
<tbody>
<tr>
<td>login_id:</td>
<td><input type="text" name="login" required />
</tr>
<tr>
<td>Password:</td>
<td><input type="password" name="pass" required />
</td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" name="b1" value="LOGIN"/>
<input type="reset" name="b2" value="RESET"/></td>
</tr>
</tbody>
<tfoot>
</tfoot>
</table>
</form>
 
</body>
</html>