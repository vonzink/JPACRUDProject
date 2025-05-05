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
		<form action="staffupdate" method="POST">
			<input type="hidden" name="id" value="${staff.id}" />
			<table class="table table-striped table-hover outer-table">
				<tr>
					<td colspan="2" class="text-center">
						<h1>Mountain State Financial Group</h1>
						<h4>Edit Staff</h4>
					</td>
				</tr>
				<tr>
					<td><strong style="color: MediumSeaGreen;">First
							Name:</strong></td>
					<td><input type="text" name="firstName"
						value="${staff.firstName}" required /></td>
				</tr>
				<tr>
					<td><strong style="color: MediumSeaGreen;">Last Name:</strong></td>
					<td><input type="text" name="lastName"
						value="${staff.lastName}" required /></td>
				</tr>
				<tr>
					<td><strong style="color: MediumSeaGreen;">Title:</strong></td>
					<td><input type="text" name="jobTitle"
						value="${staff.jobTitle}" /></td>
				</tr>
				<tr>
					<td><strong style="color: MediumSeaGreen;">DOB:</strong></td>
					<td><input type="date" name="birthDate"
						value="${staff.birthDate}" /></td>
				</tr>
				<tr>
					<td><strong style="color: MediumSeaGreen;">Email:</strong></td>
					<td><input type="email" name="email" value="${staff.email}" /></td>
				</tr>
				<tr>
					<td><strong style="color: MediumSeaGreen;">Phone:</strong></td>
					<td><input type="text" name="phone" value="${staff.phone}" /></td>
				</tr>
				<tr>
					<td><strong style="color: MediumSeaGreen;">Employment
							Type:</strong></td>
					<td><input type="text" name="employmentType"
						value="${staff.employmentType}" /></td>
				</tr>
				<tr>
					<td><strong style="color: MediumSeaGreen;">NMLS:</strong></td>
					<td><input type="text" name="nmls" value="${staff.nmls}" /></td>
				</tr>
				<tr>
					<td><strong style="color: MediumSeaGreen;">Start
							Date:</strong></td>
					<td><input type="date" name="startDate"
						value="${staff.startDate}" /></td>
				</tr>
				<tr>
					<td><strong style="color: MediumSeaGreen;">End Date:</strong></td>
					<td><input type="date" name="endDate" value="${staff.endDate}" /></td>
				</tr>
				<tr>
					<td><strong style="color: MediumSeaGreen;">Headshot:</strong></td>
					<td><input type="text" name="headshot"
						value="${staff.headshot}"> <img
						src="${pageContext.request.contextPath}/documents/${staff.headshot}"
						style="height: 100px;"></td>
				</tr>
				<br>
			</table>

			<button type="submit" class="glow-btn">Submit Changes</button>
			<br> <br> <br>

			<div>
				<a href="delete?id=${staff.id}" class="glow-btn delete no-underline">Delete</a>
				<a href="home.do" class="glow-btn no-underline">Cancel</a> <a
					href="home.do" class="glow-btn no-underline">Home</a>
			</div>
		</form>


		<br>
		<div class=spacing></div>
</body>
</html>