<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/main.css">

<meta charset="UTF-8">
<title>Staff Details</title>
</head>
<body>
  <div class="container">
    <br>
    <form action="deletestaff" method="POST" class="centered-form">
      <input type="hidden" name="id" value="${staff.id}" />

      <h1><strong>ARE YOU SURE YOU WANT TO DELETE THIS STAFF MEMBER?</strong></h1>
      <h3><strong>This operation cannot be undone.</strong></h3>

      <br>

      <h1><strong style="color: red;">Name:</strong>
        ${staff.firstName} ${staff.lastName}</h1>

      <br>

   
  <button type="submit" class="glow-btn delete">Delete</button>
  <a href="home.do" class="glow-btn no-underline">Cancel</a>
</form>
    <br>
  </div>
</body>
</html>