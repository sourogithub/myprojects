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
				<li><a href="lenovomobile.jsp">Lenovo</a></li>
				<li><a href="Asusmobile.jsp">Asus</a></li>
				<li><a href="Redmimobile.jsp">Redmi</a></li>
				<li><a href="Motorolamobile.jsp">Motorola</a></li>
				</ul></li>
				<li><a href="#">Laptops <span style="margin-top:12px;"><img src="./images/right.png" width="12px" height="12px" /></span></a>
                <ul>
                <li><a href="lenovolaptops.jsp">Lenovo</a></li>
                <li><a href="hplaptops.jsp">Hp</a></li>
                <li><a href="delllaptops.jsp">Dell</a></li>
                <li><a href="allienwarelaptops.jsp">Alienware</a></li>
                </ul>
                </li>
                

                <li><a href="#">Monitors <span style="margin-top:12px;"><img src="./images/right.png" width="12px" height="12px" /></span></a>
                <ul>
				<li><a href="benqmonitors.jsp">Benq</a></li>
				<li><a href="samsungmonitors.jsp">Samsung</a></li>
				<li><a href="hpmonitors.jsp">Hp</a></li>
				</ul>
                </li>
		  </ul>    
        </li>
        

        <li><a href="#">Appliances <span style="margin-top:12px;"><img src="./images/down.png" width="12px" height="12px" /></span></a>
        <ul class="dropdown2">

                <li><a href="#">Televisions <span style="margin-top:12px;"><img src="./images/right.png" width="12px" height="12px" /></span></a>
                <ul>
                <li><a href="sonytel.jsp">Sony</a></li>
                <li><a href="samsungtel.jsp">Samsung</a></li>
                <li><a href="lgtel.jsp">LG</a></li>
                </ul>
                </li>
                <li><a href="#">Air conditioner <span style="margin-top:12px;"><img src="./images/right.png" width="12px" height="12px" /></span></a>
                <ul>
				<li><a href="samsungair.jsp">Samsung</a></li>
				<li><a href="voltasair.jsp">Voltas</a></li>
				</ul>
                </li>
				<li><a href="#">Refigerator <span style="margin-top:12px;"><img src="./images/right.png" width="12px" height="12px" /></span></a>
				<ul>
				<li><a href="samsungref.jsp">Samsung</a></li>
				</ul>
				</li>
          </ul>
    </li>
       <li>

            <a href="#">Clothes <span style="margin-top:12px;"><img src="./images/down.png" width="12px" height="12px" /></span></a>

            <ul class="dropdown3">

                <li><a href="#">Womens <span style="margin-top:12px;"><img src="./images/right.png" width="12px" height="12px" /></span></a>
                <ul>
				<li><a href="sarre.jsp">Sarees</a></li>
				<li><a href="kurtas.jsp">Kurtas</a></li>
				
				</ul></li>
				
                <li><a href="#">Mens <span style="margin-top:12px;"><img src="./images/right.png" width="12px" height="12px" /></span></a>
                <ul>
				<li><a href="tshirts.jsp">T-shirts</a></li>
				<li><a href="shirts.jsp">Shirts</a></li>
				<li><a href="jeans.jsp">Jeans</a></li>
				<li><a href="trousers.jsp">Trousers</a></li>
				</ul></li>
				
                <li><a href="#">Kids <span style="margin-top:12px;"><img src="./images/right.png" width="12px" height="12px" /></span></a>
                <ul>
				<li><a href="polo.jsp">Polos & T-shirts</a></li>
				<li><a href="ethnic.jsp">Ethnic wear</a></li>
				</ul></li>
				
            </ul>

    </li>

        <li><a href="#">Books <span style="margin-top:12px;"><img src="./images/down.png" width="12px" height="12px" /></span></a>
		<ul>
		<li><a href="busbook.jsp">Business</a></li>
		<li><a href="kidbook.jsp">Kids</a></li>
		<li><a href="comicbook.jsp">Comics</a>
		</ul></li>
	
  </ul></div>
    
</body><li>
</html>