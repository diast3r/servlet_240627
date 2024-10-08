package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex02") // web.xml에 복잡하게 쓰지 않고 annotation으로 간편하게 해결할 수 있음.
public class UrlMappingEx02 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// html을 받아서 태그 그대로 출력.
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		// 1 + 2 + 3 + ... + 10 결과
		int sum = 0;
		for (int i = 1; i <= 10; i++) {
			sum += i;
		}
		out.println("<html><head><title>합계</title></head><body>");
		out.println("합계: <b>" + sum + "</b>");
		out.println("</body></html>");
	}
}
