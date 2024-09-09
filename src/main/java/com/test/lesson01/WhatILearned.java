package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/what-i-learned")
public class WhatILearned extends HttpServlet {	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
//		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		out.println("<html><head><title>배운 것들</title></head><body>");
		// 로그인 섹션
		out.println("<h3>marondal.com 로그인</h3>");
		out.println("<div>");
		out.println("<form method=\"post\" action=\"http://marondal.com/sign/process\" target=\"_blank\">");
		out.println("아이디<input name=\"username\" placeholder=\"아이디\" type=\"text\"><br>");
		out.println("비밀번호<input name=\"password\" placeholder=\"비밀번호\" type=\"password\"><br>");
		out.println("<button type=\"submit\">로그인</button>");
		out.println("<a href=\"http://marondal.com/sign/forget_password\">Forgot Password?</a>");
		out.println("</form>");
		out.println("</div>");
		
		// 강의 섹션
		out.println("<div style=\"display:flex\">");
		
		/* lesson01 */
		out.println("<div>");
		out.println("<ul>");
		out.println("<h1><a href=\"http://marondal.com/lesson/example_list?lessonId=10261&lectureId=10007&lectureListId=10084\">lesson01</a></h1>");
		
		// lesson01-Day01
		out.println("<h2>Day01</h2>");
		out.println("<a href=\"/lesson01/lectureMemo/Day01.txt\" target=\"_blank\">Memo</a><br>");
		out.println("<a href=\"/lesson01/lectureMemo/img/사이트에 연결할 수 없음.png\" target=\"_blank\">화면 캡처</a>");
		out.println("<li><a href=\"/hello\">Hello world!</a></li>");
		
		// lesson01-Day02
		out.println("<h2>Day02</h2>");
		out.println("<li><a href=\"/lesson01/ex01\">/lesson01/ex01</a></li>");
		out.println("<ul>");
		out.println("<li><a href=\"/lesson01/quiz01\">/lesson01/quiz01</a></li>");
		out.println("<li><a href=\"/lesson01/quiz02\">/lesson01/quiz02</a></li>");
		out.println("</ul>");
		
		out.println("<li><a href=\"/lesson01/ex02\">/lesson01/ex02</a></li>");
		out.println("<ul>");
		out.println("<li><a href=\"/lesson01/quiz03\">/lesson01/quiz03</a></li>");
		out.println("<li><a href=\"/lesson01/quiz04\">/lesson01/quiz04</a></li>");
		out.println("</ul>");
		
		
		out.println("<h2>Day03</h2>");
		out.println("<a href=\"/lesson01/lectureMemo/Day03.txt\" target=\"_blank\">Memo</a>");
		out.println("<li><a href=\"/lesson01/ex03.html\">/lesson01/ex03.html</a></li>");
		out.println("<ul>");
		out.println("<li><a href=\"/lesson01/quiz05.html\">/lesson01/quiz05.html</a></li>");
		out.println("<li><a href=\"/lesson01/quiz06.html\">/lesson01/quiz06.html</a></li>");
		out.println("</ul>");
		
		
		out.println("<h2>Day04</h2>");
		out.println("<a href=\"/lesson01/lectureMemo/Day04.txt\" target=\"_blank\">Memo</a>");
		out.println("<li><a href=\"/lesson01/ex04.html\">/lesson01/ex04.html</a></li>");
		out.println("<ul>");
		out.println("<li><a href=\"/lesson01/quiz07.html\">/lesson01/quiz07.html</a></li>");
		out.println("<li><a href=\"/lesson01/quiz08.html\">/lesson01/quiz08.html</a>(과제)</li>");
		out.println("<li><a href=\"/lesson01/quiz09.html\">/lesson01/quiz09.html</a>(과제)</li>");
		out.println("</ul>");
		out.println("<li><a href=\"/lesson01/ex05.html\">/lesson01/ex05.html</a></li>");
		
		out.println("<h2>Day05</h2>");
		out.println("<a href=\"/lesson01/lectureMemo/Day05.txt\" target=\"_blank\">Memo</a>");
		out.println("<li>/lesson01/quiz08.html</li>");
		out.println("<li>/lesson01/quiz09.html</li>");
		out.println("<li>/lesson01/quiz010.html</li>");
//		out.println("<li><a href=\"/lesson01/quiz010\">/lesson01/quiz10</a></li>");
		
		out.println("<ul>");
		out.println("</div>");
		
		/* 형상관리(Github) */
		out.println("<div>");
		out.println("<ul>");
		out.println("<h1><a href=\"http://marondal.com/lesson/material?lessonId=10261&lectureId=10007&lectureListId=10083\">형상관리</a></h1>");
		
		// 형상관리-Day05
		out.println("<h2>Day05</h2>");
		out.println("Day05.txt<br>");
		out.println("화면 캡처");
		out.println("</ul>");
		out.println("</div>");
		
		/* lesson02 */
		out.println("<div>");
		out.println("<ul>");
		out.println("<h1><a href=\"http://marondal.com/lesson/example_list?lessonId=10261&lectureId=10007&lectureListId=10093\">lesson02</a></h1>");
		
		// lesson02-Day06
//		out.println("<h2>Day06</h2>");
		out.println("<a href=\"/lesson01/lectureMemo/Day03.txt\" target=\"_blank\">Day05.txt</a>");
		out.println("<li>/lesson01/quiz09.html</li>");
		out.println("<li>/lesson01/quiz010.html</li>");
		
		out.println("</ul>");
		out.println("</div>");
		
		out.println("</body></html>");
		
		
	}
}
