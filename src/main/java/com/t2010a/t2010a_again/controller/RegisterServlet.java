package com.t2010a.t2010a_again.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/register.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String gender = req.getParameter("gender");
        String phone = req.getParameter("phone");
        String address = req.getParameter("address");

        req.setAttribute("username",username);
        req.setAttribute("password",password);
        req.setAttribute("gender",gender);
        req.setAttribute("phone",phone);
        req.setAttribute("address",address);
        req.getRequestDispatcher("/register-success.jsp").forward(req,resp);
    }
}
