package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingEx01 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException { // request, response 순서임.
		// 한글 깨짐 방지, 항상 위쪽에 적기. -> response header에 세팅
		// f12개발자도구에서 network -> header 정보에서 보면 확인할 수 있음.
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain"); // plain은 순수한 글자형식.
		
		
		PrintWriter out = response.getWriter();
		out.println("안녕하세요");
		
		Date now = new Date(); // 기본으로 현재시간. import할 때 util의 date 선택.
		out.println(now);
		
		// formatter: 날짜의 형식을 지정, 구글에서 사용법 검색
		// 예) 2024-09-04 오후 19:51:36
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd a HH:mm:ss");
		out.println(sdf.format(now));
		
	}
}
