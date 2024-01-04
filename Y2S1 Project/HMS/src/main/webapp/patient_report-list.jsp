<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Patient Report</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: 00A9FF">
			<div>
				<a href="nurDash.jsp" class="navbar-brand"> Dashboard
					 </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">All Patient Reports</a></li>
			</ul>
		</nav>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Patient Reports</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new" class="btn btn-success" style = "background-color: 1450A3; border-color: 1450A3;">Add
					New Patient Report</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Report Number</th>
						<th>Name</th>
						<th>Blood Pressure (mmHg)</th>
						<th>Heart Rate (BPM)</th>
						<th>Respiratory Rate (BPM)</th>
						<th>Temperature (°C)</th>
						<th>Operation</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="patient_report" items="${listUser}">

						<tr>
							<td><c:out value="${patient_report.repNo}" /></td>
							<td><c:out value="${patient_report.name}" /></td>
							<td><c:out value="${patient_report.bloodPressure}" /></td>
							<td><c:out value="${patient_report.heartRate}" /></td>
							<td><c:out value="${patient_report.respiratoryRate}" /></td>
							<td><c:out value="${patient_report.temp}" /></td>
							<td><a href="edit?repNo=<c:out value='${patient_report.repNo}' />"><button class="editBtn" style = "background-color: green; color: white; border: none; width: 50px; height: 30px; border-radius: 5px; border-color: green">Edit</button></a>
								&nbsp;&nbsp; <a
								href="delete?repNo=<c:out value='${patient_report.repNo}' />"><button class="delBtn" style = "background-color: C70039; color: white; border: none; width: 60px; height: 30px; border-radius: 5px; border-color: C70039">Delete</button></a></td>
						</tr>
					</c:forEach>
		
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>