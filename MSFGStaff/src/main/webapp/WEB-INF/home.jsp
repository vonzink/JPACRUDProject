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
<title>Home</title>
</head>
<body>
	<div class=container>
		<br>

		<div class="centered-form">
			<form action="staff.do" method="GET" class="centered-form">
				<label for="staffId">Staff ID:</label> <input type="text"
					name="staffId" id="staffId" class="form-control spacing" required />
				<input type="submit" class="glow-btn spacing"
					value="Get Staff by ID" />
			</form>
		</div>

		<br>
		<div class="centered-form">
			<form action="home.do" method="GET">
				<input type="hidden" name="showStaff" value="${!showStaff}" /> <input
					type="submit" class="glow-btn spacing"
					value="${showStaff ? 'Hide Staff' : 'Show Staff'}" />
			</form>
		</div>
		<br>
		<c:if test="${showStaff}">
			<table class="table table-striped table-hover outer-table">
				<thead class="table-dark">
					<tr>
						<th style="background-color: DarkGreen;"><a
							href="sortStaff?sort=name&showStaff=true"
							class="underline text-white"> Name</a></th>
						<th style="background-color: DarkGreen;"><a
							href="sortStaffTitle?sort=name&showStaff=true"
							class="underline text-white"> Title</a></th>
						<th style="background-color: DarkGreen;"><a
							href="sortStaffId?sort=name&showStaff=true"
							class="underline text-white"> ID</a></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="staff" items="${staff}">
						<tr>
							<td><a class="no-underline"
								href="staff.do?staffId=${staff.id}"
								style="color: MediumSeaGreen"> ${staff.firstName}
									${staff.lastName} </a></td>
							<td>${staff.jobTitle}</td>
							<td>${staff.id}</td>
						</tr>
						<tr>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="centered-form">
				<a href="staffform" class="glow-btn no-underline">Add</a>
			</div>
		</c:if>

	</div>
</body>
</html>