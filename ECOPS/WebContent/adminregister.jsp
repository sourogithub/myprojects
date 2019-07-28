<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ include file="adminview.jsp" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Register</title>
<link rel="stylesheet" href="loader.css">
<marquee style="background-color:black;color:white;font-size:25px" behavior="scroll" direction="left">Register to our online portal to get updates</marquee>
<h1 style="color:blue;" align="center">REGISTRATION FORM</h1>
<script type="text/javascript">
function validate()
{
var number = /^[0-9]+$/;
var letter= /^[a-zA-Z]+$/;  
var x=document.form1.e-mail.value;  
var atposition=x.indexOf("@");  
var dotposition=x.lastIndexOf(".");  
if(document.form1.fname.value.match(letter))
	{
	return true;
	}
else{
	document.form1.fname.focus();
	alert("please give valid firstname");
	return false;
}	

if(document.form1.lname.value.match(letter))
{
return true;
}
else{
	document.form1.lname.focus();
alert("please give valid lastname");
return false;
}

if(document.form1.pin-code.value.length <= 7)
{
return true;
}
else{
	document.form1.pin-code.focus();
alert("please give valid pin-code");
return false;
}

if(document.form1.mobileno.value.length == 10)
{
return true;
}
else{
	document.form1.mobileno.focus();
alert("please give valid mobile number");
return false;
}

if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length)
{
	document.form1.e-mail.focus();
alert("please give valid e-mail number");
return false;
}
else
{
return true;
}

if(document.form1.pwd.value.length > 5)
{
return true;
}
else{
	document.form1.pwd.focus();
alert("password must be atleast 6 characters long");
return false;
}
}
</script>
</head>
<body>

<div style="background-color:white" align="center">
<form  action="ecopsdbms.jsp" method="post" style="font-size:25px" name="form1"  align="center" onsubmit="return validate();" >
<table>
<tbody>
<tr>
<td>
First Name:<input type="text" style="font-size:15px"  placeholder=Fname name="fname" required>
</td>
<td>
<p>  Last Name:<input type="text" style="font-size:15px"  placeholder=Lname name="lname" required></p>
</td>  
</tr>
<tr>
<td>
Age:<input type="number" style="font-size:15px"  placeholder=Age name="age" required>
</td>
<td>
<p>Sex:<input type="radio" name="sex" value="Male" name="sex" checked >Male
<input type="radio"  name="sex" value="Female" name="sex">Female</p>
</td>
</tr>
 <tr>
<td>
<p>D.O.B:<input type="date" style="font-size:15px"  placeholder=D.O.B name="dob" ></p>
</td>
</tr>
<tr>
 <td>
 <p style="color:purple; text-decoration:underline">Residential address:</p>
<p>Country:<label>
  <select name="country">
    <option value="Ind">India</option>
    <option value="ban">Bangladesh</option>
    <option value="pak">Pakistan</option>
    <option value="sri">Srilanka</option>
    <option value="aus">Australia</option>
    <option value="cin">China</option>
    <option value="afgan">Afganisthan</option>
    <option value="Uk">United Kingdom</option>
    <option value="Us">United States</option>
  </select>
</label></p>
</td>
<td>
<p>State:<input type="text" style="font-size:15px" placeholder=State name="state" required></p>
</td>
</tr>
<tr>
<td>
City:<input type="text" style="font-size:15px" placeholder=City name="city" required>
</td>
<td>
<p>Pin Code:<input type="number"  style="font-size:15px" placeholder="Pin Code" name="pin-code" required></p>
</td>
</tr>
</div>
<tr>
<td>
<p>Profession:<input type="text" style="font-size:15px" placeholder=profession name="profession" required></p>
</td>
<td>
<p>Email:<input type="text"  style="font-size:15px" placeholder=Email name="e-mail" required></p>
</td>
<td>
<p>Mobile No:<input type="number" style="font-size:15px" placeholder="mobile number" name="mobileno" required></p>
</td>
</tr>
<tr>
<td>
<h2>
Choose a username
</h2>
</td>
</tr>
<tr>
<td>
<p>User_Id:<input type="text" placeholder=username name="uname" required></p>
</td>
<td>
<p>Password:<input type="password" placeholder=password name="pwd" required></p>
</td>
</tr>
<tr>
<td>
<p><input type="submit" style="color:blue;  background-color:rgb(202,202,202)" value="I accept terms and conditions"></p>
</td>
</tr>
<tr>
<td>
<button id="submit" class="button" value="submit" name="Register">submit</button>
<button id="reset" class="button" value="reset" name="reset">reset</button>
</td>
</tr>
<tr>
<td>
<h3 style="color:red">If You Are Already Registered. Click<a href="Front.jsp"> Login</a>
</h3>
</td>
</tr>
</tbody>
</table>
</form>
</div>
<%@ include file="bottom.html" %>
</body>
</html>