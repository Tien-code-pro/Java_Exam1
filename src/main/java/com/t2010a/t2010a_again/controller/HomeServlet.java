package com.t2010a.t2010a_again.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstname = request.getParameter("FirstName" );
        String lastname = request.getParameter("LastName" );
        response.getWriter().println("<h1>"+"Hello "+ firstname +" " + lastname+"</h1>");

        request.setAttribute("FirstName",firstname);
        request.setAttribute("LastName",lastname);
        request.getRequestDispatcher("/home.jsp").forward(request,response);
    }
}
