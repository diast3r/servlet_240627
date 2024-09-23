package com.test.lesson03;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/insert_quiz03")
public class InsertQuiz03 extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		String sellerId = request.getParameter("sellerId");
		String title = request.getParameter("title");
		String price = request.getParameter("price");
		String description = request.getParameter("description");
		String pictureUrl = request.getParameter("pictureUrl");
		if (request.getParameter("pictureUrl").equals("")) {
			pictureUrl = "null"; 
		} else {
			pictureUrl = "'" + pictureUrl + "'";
		}
		
		String insertQuery = "insert into used_goods "
				+ "(`sellerId`, `title`, `price`, `description`, `pictureUrl`) "
				+ "values "
				+ "(" + sellerId + ", '" + title + "', " + price + ", '" + description + "', " + pictureUrl + ")";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		response.sendRedirect("/lesson03/quiz03.jsp");
		
		ms.disconnect();
	}
}
