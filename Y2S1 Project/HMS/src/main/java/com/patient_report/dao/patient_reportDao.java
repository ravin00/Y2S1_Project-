package com.patient_report.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;

import com.patient_report.bean.patient_report;

public class patient_reportDao {
	
	private String jdbcURL = "jdbc:mysql://localhost:3306/hms?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "1234";
	private String jdbcDriver = "com.mysql.jdbc.Driver";
	
	private static final String INSERT_PATIENT_REPORT_SQL = "INSERT INTO patient_report" + " (name, bloodPressure, heartRate, respiratoryRate, temp) VALUES "
			+ " (?, ?, ?, ?, ?);";

	private static final String SELECT_USER_BY_REPNO = "select repNo,name,bloodPressure,heartRate,respiratoryRate,temp from patient_report where repNo =?";
	private static final String SELECT_ALL_PATIENT_REPORTS = "select * from patient_report";
	private static final String DELETE_PATIENT_REPORT_SQL = "delete from patient_report where repNo = ?;";
	private static final String UPDATE_PATIENT_REPORT_SQL = "update patient_report set name = ?,bloodPressure= ?,heartRate =?,respiratoryRate =?,temp =? where repNo = ?;";
	
	public patient_reportDao() {
		
	}

	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName(jdbcDriver);
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return connection;
	}
	
	//insert patient_report
	public void insertpatient_report(patient_report patient_report) throws SQLException {
		System.out.println(INSERT_PATIENT_REPORT_SQL);
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_PATIENT_REPORT_SQL)){
			preparedStatement.setString(1, patient_report.getName());
			preparedStatement.setString(2, patient_report.getBloodPressure());
			preparedStatement.setString(3, patient_report.getHeartRate());
			preparedStatement.setString(4, patient_report.getRespiratoryRate());
			preparedStatement.setString(5, patient_report.getTemp());
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			printSQLException(e);
		}
	}


	
	//select patient_report by repNo
	public patient_report  selectpatient_report(int repNo) {
		patient_report patient_report = null;
		
		try(Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_REPNO);) {
			preparedStatement.setInt(1, repNo);
			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			
			while (rs.next()) {
				String name = rs.getString("name");
				String bloodPressure = rs.getString("bloodPressure");
				String heartRate = rs.getString("heartRate");
				String respiratoryRate = rs.getString("respiratoryRate");
				String temp = rs.getString("temp");
				patient_report = new patient_report(repNo, name, bloodPressure, heartRate, respiratoryRate, temp);
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return patient_report;
	}
	
	
	//select all patient_reports
	public List<patient_report> selectallpatient_reports(){
		
		List<patient_report> patient_report = new ArrayList<>();
		
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_PATIENT_REPORTS);) {
				System.out.println(preparedStatement);
				ResultSet rs = preparedStatement.executeQuery();
				
				while (rs.next()) {
					int repNo = rs.getInt("repNo");
					String name = rs.getString("name");
					String bloodPressure = rs.getString("bloodPressure");
					String heartRate = rs.getString("heartRate");
					String respiratoryRate = rs.getString("respiratoryRate");
					String temp = rs.getString("temp");
					patient_report.add(new patient_report(repNo, name, bloodPressure, heartRate, respiratoryRate, temp));
				}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return patient_report;
	}
	
	//update patient_report
	public boolean updatepatient_report(patient_report patient_report) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(UPDATE_PATIENT_REPORT_SQL);) {
			System.out.println("updated patient_report:"+statement);
			statement.setString(1, patient_report.getName());
			statement.setString(2, patient_report.getBloodPressure());
			statement.setString(3, patient_report.getHeartRate());
			statement.setString(4, patient_report.getRespiratoryRate());
			statement.setString(5, patient_report.getTemp());
			statement.setInt(6, patient_report.getRepNo());
			
			rowUpdated = statement.executeUpdate() > 0;
		}
		return rowUpdated;
	}
	
	//delete patient_report
	public boolean deletepatient_report(int repNo) throws SQLException {
		boolean rowDeleted;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(DELETE_PATIENT_REPORT_SQL);) {
			statement.setInt(1, repNo);
			rowDeleted = statement.executeUpdate() > 0;
		}
		return rowDeleted;
	}
	
	
	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
		
	}
	
	
	
	
}
