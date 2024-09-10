package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz10")
public class PostMethodQuiz10 extends HttpServlet{
	
	public final Map<String, String> userMap = new HashMap<>() {
		{
			put("id", "marobiana");
			put("password", "qwerty1234");
			put("name", "신보람");
		}
	};
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		PrintWriter out = response.getWriter();
		out.println("<html><head><title></title></head><body></body></html>");
		if (!id.equals(userMap.get("id"))) {
			out.println("id가 일치하지 않습니다.");
		} else if (!password.equals(userMap.get("password"))) {
			out.println("password가 일치하지 않습니다.");
		} else {
			out.println(userMap.get("name") + "님 환영합니다!");
			out.println("</body></html>");
		}
	}
}
