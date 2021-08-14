package com.example.calculatorofcompundinterest;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CalculateServlet", urlPatterns = "")
public class CalculateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //these shit return null
        String principalAmount = request.getParameter("principal-amount");
        String interest = request.getParameter("interest");
        String years = request.getParameter("years");
        String compoundingPeriod = request.getParameter("compounding-period");

        String error;

        if(principalAmount == null || principalAmount.isEmpty() || interest == null || interest.isEmpty() || years == null
                || years.isEmpty() || compoundingPeriod == null || compoundingPeriod.isEmpty()){
            error = "Enter all inputs for calculating";
            System.out.println("error");
            request.setAttribute("error", error);
        }
        else{
            double result = Utils.calculate(Double.parseDouble(principalAmount), Double.parseDouble(interest),
                    Integer.parseInt(years), Integer.parseInt(compoundingPeriod));
            System.out.println("ok");
            request.setAttribute("result", result);
        }

        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
