package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex04")
public class GetMethodEx04 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		// request param
		// param name 가져올 때는 직접 치지 말고 복사하면서 한 번 더 확인하자.
		String userId = request.getParameter("userId");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		
		PrintWriter out = response.getWriter();
		out.println("<html><head><title>회원 정보</title></head><body>");
		out.println("<table border=1 style=\"border-collapse:collapse\"");
		out.println("<tr><th>아이디</th><td>" + userId + "</td></tr>");
		out.println("<tr><th>이름</th><td>" + name + "</td></tr>");
		out.println("<tr><th>생년월일</th><td>" + birth + "</td></tr>");
		out.println("<tr><th>이메일</th><td>" + email + "</td></tr>");
		out.println("</table>");
		out.println("</body></html>");
		
	}
}
