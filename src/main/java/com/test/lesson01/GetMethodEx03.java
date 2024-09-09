package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet {
	
	/*
	 * ex03-plain코드와 ex03-json 코드 둘 중 하나만 주석 해제해서 쓰기
	 * 
	 */
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
//		response.setContentType("text/plain"); // ex03-plain
		response.setContentType("text/json"); // ex03-json
		
		// Request Parameter
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		// 만약 클라이언트에서 age 파라미터를 리퀘스트에 포함 안 시켰으면 parseInt에서 오류 발생.
		
		PrintWriter out = response.getWriter();
		
		// ex03-plain
//		out.println("결과");
//		out.println("사용자 아이디:" + userId);
//		out.println("이름:" + name);
//		out.println("나이:" + age);
		
		// ex03-json
		// json으로 => {"user_id":"didwnsgh", "name":"양준호", "age":50}
		// 큰따옴표의 리터럴 출력 => \"
		out.print("{\"user_id\":\"" + userId + "\", \"name\":\"" 
				+ name + "\", \"age\":\"" + age + "\"}");
	}
}
