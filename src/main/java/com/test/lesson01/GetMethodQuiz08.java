package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz08")
public class GetMethodQuiz08 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		out.println("<html><head><title>검색 결과</title></head><body>");

		// request params
		String keyword = request.getParameter("keyword").trim();
		
		// validation check
//		if (keyword == "") {
//			out.println("<script>alert(\"공백을 입력하지 마세요.\");</script>");
//			return;
//		}
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요.",
		        "동해맛집과 백두맛집이 마르고 닳도록 하느님이 보우하사 우리맛집 만세"));
		
		/* 그냥 출력 */
//		for (int i = 0; i < list.size(); i++) {
//			String text = list.get(i);
//			if (text.contains(keyword)) {
//				out.println(text + "<br>");
//			}
//			
//		}
		
		/* 검색어를 굵은 글씨로 강조해 출력 */
		for (int i = 0; i < list.size(); i++) {
			String text = list.get(i);
			if (text.contains(keyword)) { // keyword를 포함하면 출력.
				// 1) replace()로 출력
				out.print(text.replace(keyword, "<b>" + keyword + "</b>") + "<br>");
				
				// 2) split()으로 출력
//				String[] words = text.split(keyword);
//				for (int j = 0; j < (words.length - 1); j++) {
//					out.print(words[j]);
//					out.print("<b>" + keyword + "</b>");
//				}
//				out.print(words[(words.length - 1)] + "<br>");
				
				// 3) substring()으로 출력
//				int index = text.indexOf(keyword); // keyword가 검색된 위치.
//				int printedIndex = 0; // 어디까지 출력했는지
//				while (index >= 0) {
//					out.print(text.substring(printedIndex, index));
//					out.print("<b>" + text.substring(index, index + keyword.length()) + "</b>");
//					printedIndex = index + keyword.length();
//					index = text.indexOf(keyword, index + 1);
//				}
//				out.println(text.substring(printedIndex, text.length()) + "<br>");
			}
		}
		
		out.println("</body></html>");
		
		
	}
}
