<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<script type = "text/javascript">
          function displayNextImage() {
              x = (x === images.length - 1) ? 0 : x + 1;
              document.getElementById("img").src = images[x];
          }

          function displayPreviousImage() {
              x = (x <= 0) ? images.length - 1 : x - 1;
              document.getElementById("img").src = images[x];
          }

          function startTimer() {
              setInterval(displayNextImage, 3000);
          }

          var images = [], x = -1;
          images[0] = "./images/images(5).jpg";
          images[1] = "./images/images(27).jpg";
          images[2] = "./images/images(76).jpg";
          images[3] = "./images/images(101).jpg";
      </script>
</head>

<body onload = "startTimer()">
<img id="img" src="startpicture.jpg"/>
       <button type="button" onclick="displayPreviousImage()">Previous</button>
       <button type="button" onclick="displayNextImage()">Next</button>
</body>
</html>
