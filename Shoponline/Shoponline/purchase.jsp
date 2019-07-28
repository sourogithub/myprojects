<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <% 
          String user = (String) session.getAttribute("uid");
     
        session.setAttribute("uid",user);
        if(user!=null)
	     {%>
        	<form method="post" action="Logout">
        	<input type="submit" value="logout" />
        	</form>

	    <%}%>
   <form method="post" action="Purchase">
        	
           <p>purchase type:<input type="radio" name="ptype" value="buy online" checked >buy online
          <input type="radio"  name="ptype" value="Cash on delivery" >cash on delivery</p>
           
           Residential address:
           <textarea rows="3" cols="16" name="address"></textarea>
           
           <p>Country:<label>
    <select name="country">
    <option value="Ind">India</option>
    <option value="ban">Bangladesh</option>
    <option value="pak">Pakistan</option>
    <option value="sri">Srilanka</option>
    <option value="aus">Australia</option>
    <option value="cin">China</option>
    <option value="afgan">Afganisthan</option>
    <option value="Uk">Bhutan</option>
    <option value="Us">Malyasia</option>
  </select>
</label></p>

<p>State:<input type="text" style="font-size:15px" placeholder=State name="state" required></p>


City:<input type="text" style="font-size:15px" placeholder=City name="city" required>

<p>Pin Code:<input type="number"  style="font-size:15px" placeholder="Pin Code" name="pincode" required></p>

        	<input type="submit" value="buy" />
        	</form>
        
   
    </body>
</html>