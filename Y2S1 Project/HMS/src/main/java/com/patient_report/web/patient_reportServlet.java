package com.patient_report.web;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.patient_report.dao.patient_reportDao;
import com.patient_report.bean.patient_report;




@WebServlet("/")
public class patient_reportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private patient_reportDao patient_reportDao;
	
	public void init() {
		patient_reportDao = new patient_reportDao();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();

		try {
			switch (action) {
			case "/new":
				showNewForm(request, response);
				break;
			case "/insert":
				insertUser(request, response);
				break;
			case "/delete":
				deleteUser(request, response);
				break;
			case "/edit":
				showEditForm(request, response);
				break;
			case "/update":
				updateUser(request, response);
				break;
			default:
				listUser(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}

	private void listUser(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<patient_report> listUser = patient_reportDao.selectallpatient_reports();
		request.setAttribute("listUser", listUser);
		RequestDispatcher dispatcher = request.getRequestDispatcher("patient_report-list.jsp");
		dispatcher.forward(request, response);
	}

	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("patient_report-form.jsp");
		dispatcher.forward(request, response);
	}

	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int repNo = Integer.parseInt(request.getParameter("repNo"));
		patient_report existingUser = patient_reportDao.selectpatient_report(repNo);
		RequestDispatcher dispatcher = request.getRequestDispatcher("patient_report-form.jsp");
		request.setAttribute("patient_report", existingUser);
		dispatcher.forward(request, response);

	}

	private void insertUser(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		String name = request.getParameter("name");
		String bloodPressure = request.getParameter("bloodPressure");
		String heartRate = request.getParameter("heartRate");
		String respiratoryRate = request.getParameter("respiratoryRate");
		String temp = request.getParameter("temp");
		patient_report newpatient_report = new patient_report(name, bloodPressure, heartRate, respiratoryRate, temp);
		patient_reportDao.insertpatient_report(newpatient_report);
		response.sendRedirect("list");
	}

	private void updateUser(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int repNo = Integer.parseInt(request.getParameter("repNo"));
		String name = request.getParameter("name");
		String bloodPressure = request.getParameter("bloodPressure");
		String heartRate = request.getParameter("heartRate");
		String respiratoryRate = request.getParameter("respiratoryRate");
		String temp = request.getParameter("temp");

		patient_report book = new patient_report(repNo, name, bloodPressure, heartRate, respiratoryRate, temp);
		patient_reportDao.updatepatient_report(book);
		response.sendRedirect("list");
	}

	private void deleteUser(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int repNo = Integer.parseInt(request.getParameter("repNo"));
		patient_reportDao.deletepatient_report(repNo);
		response.sendRedirect("list");

	}

}