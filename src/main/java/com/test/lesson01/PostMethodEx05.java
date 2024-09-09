package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex05")
public class PostMethodEx05 extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// post는 request에 대한 인코딩을 설정하지 않으면 깨짐.
		// 앞으로는 필터를 설정할 것이므로 인코딩설정 코드 안 적을 것임.
//		request.setCharacterEncoding("utf-8");
//		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		String userId = request.getParameter("userId");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		
		PrintWriter out = response.getWriter();
		out.println("<html><head><title>회원 정보</title></head><body>");
		out.println("<table border=1>");
		out.println("<tr><th>아이디</th><td>" + userId + "</td></tr>");
		out.println("<tr><th>이름</th><td>" + name + "</td></tr>");
		out.println("<tr><th>생년월일</th><td>" + birth + "</td></tr>");
		out.println("<tr><th>이메일</th><td>" + email + "</td></tr>");
		out.println("</table>");
		out.println("</body></html>");
		
	}

}
