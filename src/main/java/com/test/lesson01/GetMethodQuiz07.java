package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz07")
public class GetMethodQuiz07 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		// request params
		String address = request.getParameter("address").trim();
		String card = request.getParameter("card").trim();
		int price = Integer.parseInt(request.getParameter("price").trim());
		
		PrintWriter out = response.getWriter();
		out.println("<html><head><title></title></head><body>");
		// validation check
		if (address.contains("서울시") == false) {
			out.println("배달 불가 지역입니다");
		} else if (card.contains("신한")) {
			out.println("결제 불가 카드입니다");
		} else {
			out.println(address + " <b>배달 준비중</b><br>");
			out.println("결제금액:" + price + "원");
		}
		out.println("</body></html>");
		
	}
	
}
