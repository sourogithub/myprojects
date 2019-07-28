<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<div class="menu">
      <ul>
        <li> 
        <a>ADMIN</a>
        </li>
        <li> <a href="http://cbi.nic.in/rt_infoact/rti.php">Policestations</a> </li>
        <li> <a href="">Employees</a> 
           <ul>
           <li><a href="policelogin1.jsp">Employees Information</a></li>
           <li><a href="policereg.jsp">Employees Registration</a></li>
           <li><a href="policelogin1.jsp">Job Records</a></li>
           <li><a href="">Employees Rights</a></li>
           </ul>        
        </li>
        <li> <a href="Register.jsp">Public Registration</a> </li>
        <li> <a href="">CBI
          
        </a>
          <ul>
            <li> <a href="Red.jsp" title="">Interpol Red Notices</a> </li>
            <li> <a href="Yel.jsp" title="">Interpol Yellow Notices</a> </li>
            <li> <a href="Miss.jsp" title="">Missing / Kidnap</a> </li>
            <li> <a href="Reward.jsp" title="">Announced Rewards</a> </li>
			<li> <a href="War.jsp" title="">Warrant</a> </li>
			<li> <a href="Ske.jsp" title="">Sketch</a> </li>
          </ul>
          
        </li>
        <li> <a>Links</a>
        
          <ul>
            <li> <a href="http://www.cbiacademy.gov.in/" title="" target="new">Ecops Academy</a> </li>
            <li> <a href="http://cbi.nic.in/cbigallery.php">Latest News</a> </li>
            <li> <a href="Photo.jsp">Photo Gallery</a> </li>
          </ul>
         
        </li>
       
        <li> <a href="Womenr8t.jsp">Women</a> </li>
        
         <li> <a href="">About Us</a>
          <ul>
            <li> <a href="crime.jsp">Crime Manuals</a> </li>
            <li> <a href="AdminMan.jsp">Admin Manuals</a> </li>
            <li> <a href="">History</a> </li>
            <li><a href="">Ecops Employee Corner</a></li>
            <li> <a href="">Senior Officers</a> </li>
		  </ul>
        </li>
         <li> <a href="Site.jsp">Site Map</a> </li>
        <li> <a href="Rt.jsp">RTI</a> </li>
        <li> <a href="Tender.jsp">Tender</a> </li>
        <li> <a href="FA.jsp">FAQs</a> </li>
         <li> <a href="Feedback.jsp">Feedback</a> </li>
       
       
      </ul>
  </div>   
<div align="right">
<strong>
<a href="Front.jsp"><img src="./images/home.png" width="63" height="57"/>Home</a>
<a href="contact.jsp"><img src="./images/c.png" width="63" height="57"/>Contact us</a>
<a href="http://www.facebook.com"><img src="./images/facebookIcon.jpg"  width="40" height="35"/></a>
<a href="http://www.twitter.in"><img src="./images/twitterIcon.jpg"  width="40" height="35"/></a>
<a href="http://www.linkedin.com"><img src="./images/linkedinIcon.jpg" width="40" height="35"/></a>
<a href="http://www.googleplus.com"><img src="./images/googlePlusIcon.jpg" width="40" height="35"/></a>
</strong>
</div>
</div>
<div class="login">
<h1>ADMIN PORTAL</h1>
<form action="admindb.jsp" method="post" class="form" name="login" onsubmit="return validate();">
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
  <%@ include file="bottom.html" %> 
</body>
</html>