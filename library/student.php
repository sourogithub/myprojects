<!DOCTYPE html>
<html>
<head>
<title>SOE LIBRARY INFORMATION SYSTEM</title>
<script src="js/validate1.js"></script>
<script>
      function validate(form)
      {
        fail  = validateLibraryId(form.libid.value)
        fail += validateName(form.stuname.value)
        fail += validateBranch(form.branch.value)
        fail += validateSemester(form.semester.value)
        fail += validateYoa(form.yearofadm.value)
        fail += validateEmail(form.email.value)
        fail += validateUserid(form.userid.value)
        fail += validatePassword(form.password.value)
        if   (fail == "")   return true
        else { alert(fail); return false }
      }
</script>
</head>



    <form method="post" action="" onsubmit="return validate(this)">
<h2>ENTER YOUR DETAILS</h2>
<p><span class="error">* required field.</span></p>
<table class="signup" border="0" cellpadding="2" cellspacing="5" bgcolor="#eeeeee">
      <th colspan="2" align="center">Signup Form</th>
<tr>    
<legend>Student Information:</legend>
</tr>
<tr>
    <td>Library Id:</td>
    <td><input type="text" name="libid" size="30">
        <span class="error">*<?php echo $libidErr ?> </span><br><br></td>
</tr>
<tr>
     <td>Name:   </td> 
     <td>   <input type="text" name="stuname" size="30">
     <span class="error">*<?php echo $stunameErr ?> </span><br><br></td>
</tr>
<tr>
     <td>Branch:     </td> 
     <td> <select name="branch" size="1" tabindex="7">
     <option selected="selected">Computer Science</option>
     <option>Electronics & Communication</option>
     <option>Electrical & Electronics</option>
     <option>Mechanical</option>
     <option>Civil</option>
     <option>Information Technology</option>
     </select>      
     <span class="error">*<?php echo $branchErr ?></span><br><br></td>
</tr>
<tr>
      <td>Semester: </td>
      <td><select name="semester" size="1" tabindex="8">
      <option selected="selected">1&2</option>
      <option>3</option>
      <option>4</option>
      <option>5</option>
      <option>6</option>
      <option>7</option>
      <option>8</option>
      </select>      
      <span class="error">*<?php echo $semesterErr ?> </span><br><br></td>
</tr>
<tr>
     <td>Year of admission:</td>
     <td> <select name="yearofadm" size="1" tabindex="8">
      <option selected="selected">2012</option>
      <option>2013</option>
      <option>2014</option>
      <option>2015</option>
      <option>2016</option>
      <option>2017</option>
      </select><span class="error">*<?php echo $yearofadmErr ?> </span><br><br> </td>
</tr>
<tr>
     <td>Email:</td> 
     <td> <input type="email"name="email" size="30">
     <span class="error">*<?php echo $emailErr ?> </span><br><br></td>
</tr>
<tr>
     <td>Userid:</td> 
     <td> <input type="text"name="userid" size="30">
     <span class="error">*<?php echo $useridErr ?></span><br><br></td>
</tr>
<tr>
     <td>Password:</td> <td> <input type="password"name="password" size="30">
     <span class="error">*<?php echo $password ?> </span><br><br></td>
</tr>
<tr><td colspan="2" align="center"><input type="submit" name="submit" value="REGISTER"></td></tr>
<tr><td colspan="2" align="center"><input type="reset" value="RESET"></td></tr>
</table>
</form>
</body>
</html>
