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
	<div class=container>
		<br>

		<table class="table table-striped table-hover outer-table">
			<tr>
				<td colspan="2" class="text-center">
					<h1>Mountain State Financial Group</h1>
					<h4>Staff Directory</h4>
				</td>
			</tr>
			<tr>
				<td></h1>
					<strong style="color: MediumSeaGreen;">Name:</strong></td>
				<td>${staff.firstName } ${staff.lastName }</td>
			</tr>
			<tr>
				<td><strong style="color: MediumSeaGreen;">Title:</strong></td>
				<td>${staff.jobTitle}</td>
			</tr>
			<tr>
				<td><strong style="color: MediumSeaGreen;">DOB:</strong></td>
				<td>${staff.birthDate}</td>
			</tr>
			<tr>
				<td><strong style="color: MediumSeaGreen;">Email:</strong></td>
				<td>${staff.email}</td>
			</tr>
			<tr>
				<td><strong style="color: MediumSeaGreen;">Phone:</strong></td>
				<td>${staff.phone}</td>
			</tr>
			<tr>
				<td><strong style="color: MediumSeaGreen;">Employment
						Type:</strong></td>
				<td>${staff.employmentType}</td>
			</tr>
			<tr>
				<td><strong style="color: MediumSeaGreen;">NMLS:</strong></td>
				<td>${staff.nmls}</td>
			</tr>
			<tr>
				<td><strong style="color: MediumSeaGreen;">Start Date:</strong></td>
				<td>${staff.startDate}</td>
			</tr>
			<tr>
				<td><strong style="color: MediumSeaGreen;">End Date:</strong></td>
				<td>${staff.endDate}</td>
			</tr>
		</table>

		<div>
			<a href="editstaff.do?id=${staff.id}" class="glow-btn no-underline">Edit</a>
			<a href="delete?id=${staff.id}" class="glow-btn delete no-underline">Delete</a>
			<a href="home.do" class="glow-btn no-underline">Home</a>
		</div>
		<br>
	</div>
</body>
</html>