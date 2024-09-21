package com.test.lesson03;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/deleteBookmark")
public class Quiz02 extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) {
//		response.setContentType("text/html");
		String id = request.getParameter("id");
		String deleteQuery = "delete from `bookmark` "
				+ "where `id` = " + id;
		
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		try {
			ms.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		ms.disconnect();
		
		try {
			response.sendRedirect("/lesson03/quiz02.jsp");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
