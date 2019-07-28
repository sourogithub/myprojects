<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/Loader.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
<script type="text/javascript">
(function()
		{
			var preload=document.getElementById(preload);
			var loading =0;
			var id = setInterval(frame,64);
			function frame()
			{
				if(loading ==100)
					{
					clearInterval(id);
					window.open("./Index.jsp","self");
					}
				else
					{
					loading= loading + 1;
					if(loading==90)
						{
						preload.style.animation="fadeout 1s ease";
						}
					}
			}
		})();
</script>
</head>
<body>
<div class="preload">
<div class="logo">
<span style="color:darkturquoise;">Webstore</span>
</div>
<div class="loader-frame">
<div class="loader1" id="loader1"></div>
<div class="loader2" id="loader2"></div>
</div>
</div>

</body>
</html>