package com.test.lesson03;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/addBookmark")
public class Quiz02_1 extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) {		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		String inserQuery = "insert into `bookmark` (`name`, `url`) values ('" + name + "', '" + url + "')";
		try {
			ms.update(inserQuery);
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
