package com.patient_report.bean;

public class patient_report {
	
	private int repNo;
	private String name;
	private String bloodPressure;
	private String heartRate;
	private String respiratoryRate;
	private String temp;
	
	public patient_report(String name, String bloodPressure, String heartRate, String respiratoryRate, String temp) {
		super();
		this.name = name;
		this.bloodPressure = bloodPressure;
		this.heartRate = heartRate;
		this.respiratoryRate = respiratoryRate;
		this.temp = temp;
	}
	public patient_report(int repNo, String name, String bloodPressure, String heartRate, String respiratoryRate,
			String temp) {
		super();
		this.repNo = repNo;
		this.name = name;
		this.bloodPressure = bloodPressure;
		this.heartRate = heartRate;
		this.respiratoryRate = respiratoryRate;
		this.temp = temp;
	}
	public int getRepNo() {
		return repNo;
	}
	public void setRepNo(int repNo) {
		this.repNo = repNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBloodPressure() {
		return bloodPressure;
	}
	public void setBloodPressure(String bloodPressure) {
		this.bloodPressure = bloodPressure;
	}
	public String getHeartRate() {
		return heartRate;
	}
	public void setHeartRate(String heartRate) {
		this.heartRate = heartRate;
	}
	public String getRespiratoryRate() {
		return respiratoryRate;
	}
	public void setRespiratoryRate(String respiratoryRate) {
		this.respiratoryRate = respiratoryRate;
	}
	public String getTemp() {
		return temp;
	}
	public void setTemp(String temp) {
		this.temp = temp;
	}

}
