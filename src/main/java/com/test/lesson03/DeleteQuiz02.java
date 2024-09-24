package com.test.lesson03;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/quiz02_delete")
public class DeleteQuiz02 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// request parameter
		int id = Integer.valueOf(request.getParameter("id"));
		String deleteQuery = "delete from `bookmark` "
				+ "where `id` = " + id;
		
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// DB delete
		try {
			ms.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 연결 해제
		ms.disconnect();
		
		// 목록 페이지로 리다이렉트
		response.sendRedirect("/lesson03/bookmark_list.jsp");
	}
	
}
