package com.patient_report.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.patient_report.dao.LoginDao;
import com.patient_report.bean.login;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        LoginDao loginDao = new LoginDao();

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        login login = new login();
        login.setUsername(username);
        login.setPassword(password);

        if (loginDao.validate(login)) {
            response.sendRedirect("adminPanel.jsp");
        } else {
            response.sendRedirect("login.jsp");
        }
    }
}