<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="Front1.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
                 function Captcha(){
                     var alpha = new Array('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z');
                     var i;
                     for (i=0;i<6;i++){
                       var a = alpha[Math.floor(Math.random() * alpha.length)];
                       var b = alpha[Math.floor(Math.random() * alpha.length)];
                       var c = alpha[Math.floor(Math.random() * alpha.length)];
                       var d = alpha[Math.floor(Math.random() * alpha.length)];
                       var e = alpha[Math.floor(Math.random() * alpha.length)];
                       var f = alpha[Math.floor(Math.random() * alpha.length)];
                       var g = alpha[Math.floor(Math.random() * alpha.length)];
                      }
                    var code = a + ' ' + b + ' ' + ' ' + c + ' ' + d + ' ' + e + ' '+ f + ' ' + g;
                    document.getElementById("mainCaptcha").value = code
                  }
                  function ValidCaptcha(){
                      var string1 = removeSpaces(document.getElementById('mainCaptcha').value);
                      var string2 = removeSpaces(document.getElementById('txtInput').value);
                      if (string1 == string2){
                        return true;
                      }
                      else{        
                        return false;
                      }
                  }
                  function removeSpaces(string){
                    return string.split(' ').join('');
                  }
                  
             </script>    
</head>
<body>
<div align="center" onload="Captcha();">
<form  action="feed" method="post" onsubmit="return ValidCaptcha();">
<table cellpadding="4" cellspacing="0" style="width:35% position:absolute; top:50px; bottom:60px">
        <tr>
            <td> <br />
                <h1>Feedback</h1></td>
            <td>&nbsp;
                </td>
        </tr>
        <tr>
            <td colspan="2">
                
            </td>
        </tr>
        <tr>
            <td>
                Name</td>
            <td>
                <input name="Name" type="text" id="TextBox1" required/>
                *</td>
        </tr>
        <tr>
            <td>
                E-mail</td>
            <td>
                <input name="E-mail" type="text" id="TextBox2" required/>
                *</td>
        </tr>
        <tr>
            <td>
                Subject</td>
            <td>
                <input name="Sub" type="text" id="TextBox3" required />
                *</td>
        </tr>
        <tr>
            <td>
                Comments</td>
            <td>
                <textarea name="Comment" rows="2" cols="20" id="TextBox4" style="height:68px;" required>
</textarea>
                *</td>
        </tr>
        <tr>
            <td>
                Image verify</td>
            
            <td>
             <input type="text" id="mainCaptcha"/>
              <input type="button" id="refresh" value="Refresh" onclick="Captcha();" />
           </td>
            
        </tr>
        <tr>
            <td>
                Enter code</td>
            <td>
                <input name="TextBox5" type="text"  id="txtInput" autocomplete="off" style="width:70px;" required />
            </td>
        </tr>
        
        <tr>
            <td>
                <button type="submit" name="feed" value="Submit" onclick="alert(ValidCaptcha());">Submit</button>
            </td>
            <td>
                <button type="reset"   value="Reset" >reset</button></td>
        </tr>
        </table><br><br></form>
        </div>
</body>
</html>
<%@ include file="bottom.html" %> 