package com.test.lesson01.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/*") // => 모든 주소에 대해 필터링할 것임.
public class CharacterEncodingFilter implements Filter { // import 시에 javax.servlet.Filter 선택.
	// extends가 아니라 implements임.
	// 클래스명에 뜨는 에러 눌러서 Override 추가하기
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		// 필터를 통과할 때 인코딩
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		chain.doFilter(request, response); // 이거 빼먹으면 적용 안 됨.
	}

}
