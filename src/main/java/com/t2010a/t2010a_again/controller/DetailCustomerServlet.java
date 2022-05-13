package com.t2010a.t2010a_again.controller;

import com.t2010a.t2010a_again.entity.Customer;
import com.t2010a.t2010a_again.model.CustomerModel;
import com.t2010a.t2010a_again.model.MySqlCustomerModel;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DetailCustomerServlet extends HttpServlet {
    private CustomerModel customerModel;

    public DetailCustomerServlet() {
        this.customerModel = new MySqlCustomerModel();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String rollNumber = req.getParameter("id");

        Customer customer = customerModel.findById(rollNumber);

        if (customer == null) {
            req.setAttribute("message", "Data not found!");
            req.getRequestDispatcher("/admin/error/404.jsp").forward(req, resp);
        } else {
            req.setAttribute("customer", customer);
            req.getRequestDispatcher("/admin/customers/detail.jsp").forward(req, resp);
        }
    }
}
