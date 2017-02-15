package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Carculation;

/**
 * Servlet implementation class Calculation_Controller
 */
public class Calculation_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Calculation_Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Carculation carculation = new Carculation();
		String r = "";
		double result = 0;
		double num1 = Double.parseDouble(request.getParameter("num1"));
		double num2 = Double.parseDouble(request.getParameter("num2"));
		String symbol = request.getParameter("symbol");

		if (symbol.equals("+")) {
			result = carculation.sum(num1, num2);
			r = carculation.deleteZero(result);
			request.setAttribute("result", r);
			request.getRequestDispatcher("index.jsp").forward(request, response);

		} else if (symbol.equals("*")) {
			result = carculation.multiply(num1, num2);
			r = carculation.deleteZero(result);
			request.setAttribute("result", r);
			request.getRequestDispatcher("index.jsp").forward(request, response);

		} else if (symbol.equals("-")) {
			result = carculation.subtraction(num1, num2);
			r = carculation.deleteZero(result);
			request.setAttribute("result", r);
			request.getRequestDispatcher("index.jsp").forward(request, response);

		} else if (symbol.equals("/")) {
			result = carculation.division(num1, num2);
			r = carculation.deleteZero(result);
			request.setAttribute("result", r);
			request.getRequestDispatcher("index.jsp").forward(request, response);

		}else if(symbol.equals("r")){
			result = carculation.raiz(num2);
			r = carculation.deleteZero(result);
			request.setAttribute("result", r);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		
		}else if(symbol.equals("%")){
			result = carculation.percent(num1, num2);
			r = carculation.deleteZero(result);
			request.setAttribute("result", r);
			request.getRequestDispatcher("index.jsp").forward(request, response);
			
		}else{
			String error = "Error....";
			request.setAttribute("error", error);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}

	
	

}
