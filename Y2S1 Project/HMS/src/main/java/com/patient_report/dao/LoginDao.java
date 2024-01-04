package com.patient_report.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.patient_report.bean.login;

public class LoginDao {

    private String dbUrl = "jdbc:mysql://localhost:3306/hms";
    private String dbUname = "root";
    private String dbPassword = "1234";
    private String dbDriver = "com.mysql.jdbc.Driver";

    public void loadDriver(String dbDriver) {
        try {
            Class.forName(dbDriver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public Connection getConnection() {
        Connection con = null;
        try {
            con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return con;
    }

    public boolean validate(login login) {
        boolean status = false;

        loadDriver(dbDriver);
        Connection con = getConnection();

        if (con != null) {
            String sql = "SELECT * FROM login WHERE username = ? AND password = ?";
            PreparedStatement ps;
            try {
                ps = con.prepareStatement(sql);
                ps.setString(1, login.getUsername());
                ps.setString(2, login.getPassword());
                ResultSet rs = ps.executeQuery();
                status = rs.next();
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return status;
    }
}