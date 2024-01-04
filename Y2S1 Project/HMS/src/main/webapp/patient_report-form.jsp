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
				<a href="https://www.xadmin.net" class="navbar-brand"> New Patient Report </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link"> All Patient Reports</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${patient_report != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${patient_report == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${patient_report != null}">
            			Edit Report
            		</c:if>
						<c:if test="${patient_report == null}">
            			Add New Report
            		</c:if>
					</h2>
				</caption>

				<c:if test="${patient_report != null}">
					<input type=" "  name="repNo" value="<c:out value='${patient_report.repNo}' />" readonly/>
				</c:if>

				<fieldset class="form-group">
					<label>Name</label> <input type="text"
						value="<c:out value='${patient_report.name}' />" class="form-control"
						name="name" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Blood Pressure (mmHg)</label> <input type="text"
						value="<c:out value='${patient_report.bloodPressure}' />" class="form-control"
						name="bloodPressure">
				</fieldset>

				<fieldset class="form-group">
					<label>Heart Rate (BPM)</label> <input type="text"
						value="<c:out value='${patient_report.heartRate}' />" class="form-control"
						name="heartRate">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Respiratory Rate (BPM)</label> <input type="text"
						value="<c:out value='${patient_report.respiratoryRate}' />" class="form-control"
						name=respiratoryRate>
				</fieldset>
				
				<fieldset class="form-group">
					<label>Temperature (°C)</label> <input type="text"
						value="<c:out value='${patient_report.temp}' />" class="form-control"
						name="temp">
				</fieldset>

				<button type="submit" class="btn btn-success" style = "background-color: green;">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>