<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="jakarta.tags.core" prefix="c" %>
     
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js" integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq" crossorigin="anonymous"></script>  
<link rel="stylesheet" href="css/main.css">
 
<meta charset="UTF-8">
<title>Staff Details</title>
</head>
<body>
<div class=container>
<br>

<a href="home.do" class="glow-btn no-underline">
  Home
</a>


  <h2><strong style="color:MediumSeaGreen;">Name:</strong> ${staff.firstName } ${staff.firstName}</h2>
  <br>
  <p><strong style="color:MediumSeaGreen;">Title:</strong> ${staff.jobTitle}</p>
  <p><strong style="color:MediumSeaGreen;">DOB:</strong> ${staff.birthDate}</p>
  <p><strong style="color:MediumSeaGreen;">Email:</strong> ${staff.email}</p>
  <p><strong style="color:MediumSeaGreen;">Phone:</strong> ${staff.phone}</p>
  <p><strong style="color:MediumSeaGreen;">Employment Type:</strong> ${staff.employmentType}</p>
  <p><strong style="color:MediumSeaGreen;">NMLS:</strong> ${staff.nmls}</p>
  <p><strong style="color:MediumSeaGreen;">Name:</strong> ${staff.startDate}</p>
  <p><strong style="color:MediumSeaGreen;">Name:</strong> ${staff.endDate}</p>



  <br>
</div>
</body>
</html>