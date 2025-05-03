<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="jakarta.tags.core" prefix="c"%>
   
   <!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js" integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/main.css">
   
   
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
<div class=container>

	<form action="staff.do" method="GET">
  <label for="staffId">Staff ID:</label>
  <input 
    type="number"
    class="form-control"
    id="staffId"
    name="staffId"
    required
    min="1"
    oninvalid="this.setCustomValidity('Please enter a staff ID greater than 0')"
    oninput="this.setCustomValidity('')"
  />
  <input type="submit" class="btn btn-primary" value="Find Staff" />
</form>

	<form action="staff.do" method="GET">
 		Sort by Rating:
 		<input type="submit" class="btn btn-primary"  value="Sort" />
	</form>

<br>

<table class="table table-striped table-hover">
  <thead class="table-dark">
    <tr>
      <th class="underline" style="background-color:DarkGreen;">Title</th>
      <th style="background-color:DarkGreen;">ID</th>
      <th style="background-color:DarkGreen;">Rating</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="staff" items="${staff}">
      <tr>
        <td>
          <a class="no-underline" href="staff.do?staffId=${staff.id}">
            ${staff.firstName}
          </a>
        </td>
        <td>${staff.id}</td>
        <td>${staff.firstName}</td>
      </tr>
    </c:forEach>
  </tbody>
</table>
 </div>
</body>
</html>