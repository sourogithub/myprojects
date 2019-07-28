<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/front.css">
<style type="text/css">
<!--
.style1 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-style: italic;
}
.style2 {color: #000000}
-->
</style>
<script type="text/javascript">
function active()
{
	var searchbar = document.getElementById('searchbar');
	if(searchbar.value == 'search')
		{
		searchbar.value = ''
		searchbar.placeholder = 'search'
		}
	
	}

</script>

</head>
<body>

<div class="menu">
     <ul>
     <li><a href="login.jsp">Login</a></li>
     <li><a href="registerpage.jsp">Sign Up</a></li>
    <li> <%String user=(String)session.getAttribute("uid");
    session.setAttribute("uid",user);
      if(user!=null)
	     {%>
        	<form method="post" action="Logout">
        	<input type="submit" value="logout" />
        	</form>

	    <%}%>
     </li>   
     </ul>
</div>
<div class="shadow">
<h1>Webstore</h1>
<div class="searchbox">
<form action="" method="post">
<input type="text" class="searchbar" placeholder="" value="search" autocomplete="on" MouseDown="active();" /><button class="searchbtn">&#128269;</button>
</form>
</div>
</div>
<div class="marquee" behavior="scroll" direction="left" > <marquee> Welcome to Webstore online shopping site 24/7</marquee>
 </div>
<div class="items">
 <ul>

        <li><a href="#">Electronics <span style="margin-top:12px;"><img src="./images/down.png" width="12px" height="12px" /></span></a>
        <ul class="dropdown1">
				<li><a href="">Mobiles <span style="margin-top:12px;"><img src="./images/right.png" width="12px" height="12px" /></span></a>
				<ul>
				<li><a href="container/lenovomob.jsp">Lenovo</a></li>
				<li><a href="container/Asusmob.jsp">Asus</a></li>
				<li><a href="container/Redmimob.jsp">Redmi</a></li>
				<li><a href="container/Motorolamob.jsp">Motorola</a></li>
				</ul></li>
				<li><a href="#">Laptops <span style="margin-top:12px;"><img src="./images/right.png" width="12px" height="12px" /></span></a>
                <ul>
                <li><a href="container/lenovolap.jsp">Lenovo</a></li>
                <li><a href="container/hplap.jsp">Hp</a></li>
                <li><a href="container/delllap.jsp">Dell</a></li>
                <li><a href="container/allienwarelap.jsp">Alienware</a></li>
                </ul>
                </li>
                

                <li><a href="#">Monitors <span style="margin-top:12px;"><img src="./images/right.png" width="12px" height="12px" /></span></a>
                <ul>
				<li><a href="container/benqmonitor.jsp">Benq</a></li>
				<li><a href="container/samsungmonitors.jsp">Samsung</a></li>
				<li><a href="container/hpmonitors.jsp">Hp</a></li>
				</ul>
                </li>
		  </ul>    
        </li>
        

        <li><a href="#">Appliances <span style="margin-top:12px;"><img src="./images/down.png" width="12px" height="12px" /></span></a>
        <ul class="dropdown2">

                <li><a href="#">Televisions <span style="margin-top:12px;"><img src="./images/right.png" width="12px" height="12px" /></span></a>
                <ul>
                <li><a href="container/sonytel.jsp">Sony</a></li>
                <li><a href="container/samsungtel.jsp">Samsung</a></li>
                <li><a href="container/lgtel.jsp">LG</a></li>
                </ul>
                </li>
                <li><a href="#">Air conditioner <span style="margin-top:12px;"><img src="./images/right.png" width="12px" height="12px" /></span></a>
                <ul>
				<li><a href="container/samsungair.jsp">Samsung</a></li>
				<li><a href="container/voltasair.jsp">Voltas</a></li>
				</ul>
                </li>
				<li><a href="#">Refigerator <span style="margin-top:12px;"><img src="./images/right.png" width="12px" height="12px" /></span></a>
				<ul>
				<li><a href="container/samsungref.jsp">Samsung</a></li>
				</ul>
				</li>
          </ul>
    </li>
       <li>

            <a href="#">Clothes <span style="margin-top:12px;"><img src="./images/down.png" width="12px" height="12px" /></span></a>

            <ul class="dropdown3">

                <li><a href="#">Womens <span style="margin-top:12px;"><img src="./images/right.png" width="12px" height="12px" /></span></a>
                <ul>
				<li><a href="container/sarre.jsp">Sarees</a></li>
				<li><a href="container/kurtas.jsp">Kurtas</a></li>
				
				</ul></li>
				
                <li><a href="#">Mens <span style="margin-top:12px;"><img src="./images/right.png" width="12px" height="12px" /></span></a>
                <ul>
				<li><a href="container/tshirts.jsp">T-shirts</a></li>
				<li><a href="container/shirts.jsp">Shirts</a></li>
				<li><a href="container/jeans.jsp">Jeans</a></li>
				<li><a href="container/trousers.jsp">Trousers</a></li>
				</ul></li>
				
                <li><a href="#">Kids <span style="margin-top:12px;"><img src="./images/right.png" width="12px" height="12px" /></span></a>
                <ul>
				<li><a href="container/polo.jsp">Polos & T-shirts</a></li>
				<li><a href="container/ethnic.jsp">Ethnic wear</a></li>
				</ul></li>
				
            </ul>

    </li>

        <li><a href="#">Books <span style="margin-top:12px;"><img src="./images/down.png" width="12px" height="12px" /></span></a>
		<ul>
		<li><a href="container/busbook.jsp">Business</a></li>
		<li><a href="vkidbook.jsp">Kids</a></li>
		<li><a href="container/comicbook.jsp">Comics</a>
		</ul></li>
	
  </ul></div>
    
</body>
</html>