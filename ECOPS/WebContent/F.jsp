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
        <li> <a href="http://cbi.nic.in/rt_infoact/rti.php">Employees</a> 
           <ul>
           <li><a href="policelogin1.jsp">Employees Information</a></li>
           <li><a href="policereg.jsp">Employees Registration</a></li>
           <li><a href="policelogin1.jsp">Job Records</a></li>
           <li><a href="">Employees Rights</a></li>
           </ul>        
        </li>
        <li> <a href="Register.jsp">Public Registration</a> </li>
        <li> <a href="http://cbi.nic.in/wantedbycbi.php">CBI
          
        </a>
          <ul>
            <li> <a href="http://cbi.nic.in/rnotice/notices.php" title="">Interpol Red Notices</a> </li>
            <li> <a href="http://cbi.nic.in/rnotice/notices_yellow.php" title="">Interpol Yellow Notices</a> </li>
            <li> <a href="http://cbi.nic.in/wanted/wanted.php" title="">Missing / Kidnap</a> </li>
            <li> <a href="http://cbi.nic.in/wanted/rewards.php" title="">Announced Rewards</a> </li>
			<li> <a href="http://cbi.nic.in/warrant/warrant.php" title="">Warrant</a> </li>
			<li> <a href="http://cbi.nic.in/sketch/sketch.php" title="">Sketch</a> </li>
          </ul>
          
        </li>
        <li> <a>Links</a>
        
          <ul>
            <li> <a href="http://www.cbiacademy.gov.in/" title="" target="new">Ecops Academy</a> </li>
            <li> <a href="http://cbi.nic.in/cbigallery.php">Latest News</a> </li>
            <li> <a href="http://cbi.nic.in/pg.php">Photo Gallery</a> </li>
          </ul>
         
        </li>
       
        <li> <a href="http://cbi.nic.in/rt_infoact/rti.php">Women</a> </li>
        <li> <a href="http://cbi.nic.in/rt_infoact/rti.php">Traffic</a> </li>
         <li> <a href="">About Us</a>
          <ul>
            <li> <a href="">Crime Manuals</a> </li>
            <li> <a href="">Admin Manuals</a> </li>
            <li> <a href="">History</a> </li>
            <li><a href="">Ecops Employee Corner</a></li>
            <li> <a href="">Senior Officers</a> </li>
		  </ul>
        </li>
        <li> <a href="http://cbi.nic.in/rt_infoact/rti.php">RTI</a> </li>
        <li> <a href="http://cbi.nic.in/tender.php">Tender</a> </li>
        <li> <a href="http://cbi.nic.in/faq.php">FAQs</a> </li>
        <li> <a href="http://cbi.nic.in/sitemap.php">Site Map</a> </li>
      </ul>
  </div>   
<div align="right">
<strong>
<a href="home.html"><img src="./images/home.png" width="63" height="57"/>Home</a>
<a href="contact.jsp"><img src="./images/c.png" width="63" height="57"/>Contact us</a>
<a href="http://www.facebook.com"><img src="./images/facebookIcon.jpg"  width="40" height="35"/></a>
<a href="http://www.twitter.in"><img src="./images/twitterIcon.jpg"  width="40" height="35"/></a>
<a href="http://www.linkedin.com"><img src="./images/linkedinIcon.jpg" width="40" height="35"/></a>
<a href="http://www.googleplus.com"><img src="./images/googlePlusIcon.jpg" width="40" height="35"/></a>
</strong>
</div>
</div>
<div class="tags" align="center">
<img src="./images/images(5).jpg" width="180" height="156" />
<img src="./images/images(76).jpg" width="180" height="154" /> 
<img src="./images/images(101).jpg" width="170" height="154" />
<img src="./images/images(27).jpg" width="180" height="156" />
</div>
<div class="login">
<h3><p style="color:#F00; text-decoration:underline"><i>ARE YOU A VICTIM OF CRIME? REGISTERED NOW.</p>
<p style="text-decoration:underline; color:blue"><a href="Register.jsp">For Registration click on Public Registration</a></p>
<P style="text-decoration:underline"> IF YOU ARE ALREADY REGISTERED, LOGIN HERE!</i> </P></h3>
<form action="logindb.jsp" method="post" class="form" name="login" onsubmit="return validate();">
<table style="background-color:#99C; font-size:24px; position:relative; left:450px; top:50px; height:200px" width="400px">
<thead>
</thead>
<tbody>
<tr>
<td>User_id:</td>
<td><input type="text" name="uname" required />
</tr>
<tr>
<td>Password:</td>
<td><input type="password" name="pwd" required />
</td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" name="b1" value="LOGIN"/>
<input type="reset" name="b2" value="RESET"/></td>
</tr>
<tr>
<td colspan="2" align="right"><a href="login_help.jsp">Login Help>></a></td>
</tr>
</tbody>
<tfoot>
</tfoot>
</table>
</form>
<div id="c">
<h3>Write comment about us.</h3>
<textarea name="comment" rows="6" cols="10" style="height:100px; font-size:15px; width:450px" placeholder=comment required>
</textarea><br>
<button>comment</button> 
</div>
</div>
<div align="center" style="background-color:#F00">
 All rights reserved. | Site best viewed with a resolution of 1024x768 (or higher) <a class="shl" href="http://cbi.nic.in/disclaimer.php">|Disclaimer</a> | 
</div>
</body>
</html>