<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<%@ include file="adminview.jsp" %>
<body>
<%request.getAttribute("message"); %>
    <form method="post" action="Addproduct">
    <h2>
        Add products
    </h2>
    <table>
        <tr>
            <td>
                <table>
                 <tr>
                        <td>view products:</td>
                        <td><a href="viewproduct.jsp"><input type="button" name="" value="view" /></a></td>
                    </tr>
                    <tr>
                        <td>Product id:</td>
                        <td><input type="text" name="productid" value="" /></td>
                    </tr>
                    <tr>
                        <td>Product name:</td>
                        <td><input type="text" name="productname" value="" /></td>
                    </tr>
                    <tr>
                    <td>product type:</td>
                    <td><select name="ptype">
                    <option value="mobiles">mobiles</option>
                    <option value="laptops">laptops</option>
                    <option value="monitors">monitors</option>
                    <option value="television">television</option>
                    <option value="airconditioner">airconditioner</option>
                    <option value="refrigerator">refrigerator</option>
                    <option value="men wears">men wears</option>
                    <option value="women wears">women wears</option>
                    <option value="kids wears">kids wears</option>
                    <option value="business books">business books</option>
                    <option value="kids books">kids books</option>
                    <option value="comic books">comic books</option>
                    </select>
                    </td>
                    </tr> 
                     <tr>
                     
                     <td>discount percentage:
                    <td><select name="discounts">
                    <option value="0">0</option>
                    <option value="10">10%</option>
                    <option value="20%">20%</option>
                    <option value="30%">30%</option>
                    <option value="40%">40%</option>
                    <option value="50%">50%</option>
                    </select>
                    </td>
                    </td>
                    
                    </tr> 
                    <tr>
                        <td>quantity:</td>
                        <td><input type="number" name="quantity" value="" /></td>
                    </tr>
                    <tr>
                        <td>price:</td>
                        <td><input type="number" name="price" value="" /></td>
                    </tr>
                    <tr>
                        <td>Photo:</td>
                        <td><input type="file" name="image" value="" /></td>
                    </tr>
                    <tr>
                        <td>Brand:</td>
                        <td><input type="text" name="brand" value="" /></td>
                    </tr>
                    <tr>
                     <td>product details</td>
                     <td><textarea rows="6" cols="12" placeholder="write product specification" name="details">
                     </textarea>
                    </td>
                    </tr>
                    <tr>
                        <td>url:</td>
                        <td><input type="text" name="pageurl" value="" /></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="left"><input type="submit" value="add" name="add" /></td>                        
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>