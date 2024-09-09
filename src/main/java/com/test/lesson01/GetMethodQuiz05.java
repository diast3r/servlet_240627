package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz05")
public class GetMethodQuiz05 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		// request param
		// 중단점 설정하고 디버깅해보자.
		int number = Integer.valueOf(request.getParameter("number")); // number: request parameter의 이름.
		
		PrintWriter out = response.getWriter();
		out.println("<html><head>");
		out.println("<title>구구단 " + number + "단</title>");
		out.println("</head><body>");
		out.println("<ul>");
		for (int i = 1; i <= 9; i++) {
			out.println("<li>" + number + " X " + i + " = " + (number * i) + "</li>");
		}
		out.println("</ul>");
		out.println("</body></html>");
	}
}
