<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Front page</title>
<link rel="stylesheet" type="text/css" href="FRONT.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
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
<body class="body">
<div class="image" align="center">
<img class="img1" src="./images/COP.jpg" width="120" height="100"/>
<img src="./images/download.jpg" width="120" height="100" />
<img src="./images/IMG.png" width="200" height="100"/> 
<img src="./images/imagesr.png" width="120" height="100" />
<img class="img0" src="./images/flag.jpg" width="120" height="100" /> </div>
<div id="top" align="center" style="color:blue;">
<h1><marquee style="background-color:black;color:white;font-size:25px" behavior="scroll" direction="left">Welcome To E-Cops Online Portal</marquee>
<img src="./gif/misc025.gif" style="position:absolute; left:20px; height:33px; float:right; top: 50px; width: 200px" />
<img src="./gif/misc025.gif" style="position:absolute; right:20px; height:33px; float:right; top: 50px; width: 200px" /></h1>
</div>
<div class="btn" align="center">
<div align="center">
<h2>Admin Portal</h2>
<a href="public.jsp"><input type="button" name='btn1' value="Registered Public" ></a>
<a href="employee.jsp"><input type="button" name='btn2' value="Employees" ></a>
<a href="reports.jsp"><input type="button" name='btn3' value="Reports" ></a>
<a href="adminpolicereg.jsp"><input type="button" name='btn2' value="Add Employees" ></a>
<a href="adminregister.jsp"><input type="button" name='btn3' value="Add public" ></a>
<a href="logout.jsp"><input type="button" name='btn3' value="Logout" ></a>
</div>
    
</div>
</body>
</html>