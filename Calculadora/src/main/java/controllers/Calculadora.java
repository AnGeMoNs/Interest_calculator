/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Calculadora extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        double capital = Double.parseDouble(request.getParameter("capital"));
        double interestAnual = Double.parseDouble(request.getParameter("interestAnual"));
        int years = Integer.parseInt(request.getParameter("years"));
        double interesSimple = calculateSimpleInterest(capital, interestAnual, years);

        request.setAttribute("capital", capital);
        request.setAttribute("interestAnual", interestAnual);
        request.setAttribute("years", years);
        request.setAttribute("interesSimple", interesSimple);
        request.getRequestDispatcher("/Resultado.jsp").forward(request, response);
    }

    private double calculateSimpleInterest(double capital, double interestAnual, int years) {
        return capital * (interestAnual / 100) * years;
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}

