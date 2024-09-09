package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz09")
public class PostMethodQuiz09 extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		String applicantName = request.getParameter("applicantName");
		String introduction = request.getParameter("introduction");
		
		PrintWriter out = response.getWriter();
		out.println("<html><head><title>입사지원서</title><body>");
		out.print("<p><b>" + applicantName + "</b>");
		out.println("님 지원이 완료 되었습니다.</p>");
		out.println("<h3><b>지원 내용</b></h3>");
		out.println("<p>" + introduction + "</p>");
		out.println("</body></html>");
		
		
	}
}
