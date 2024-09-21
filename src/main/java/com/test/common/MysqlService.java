package com.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService { // db에 접속하는 역할을 하는 객체.
	private static MysqlService mysqlService = null; 
	
	
	private static final String URL = "jdbc:mysql://localhost:3306/text_240627";
	private static final String ID = "root";
	private static final String PASSWORD = "root";
	// jdbc: Java DataBase Connectivity 약자.
	// 상수값을 지정할 때는 대문자로 작성.
	// URL : 접속할 db서버의 주소/db명.
	// ID, PASSWORD : DB서버 의 아이디. 비번
	
	private Connection conn;
	private Statement statement; // java.sql.Statement 선택.
	private ResultSet res;
	
	// 디자인패턴 - Singleton 배우기
	// singleton 패턴 : MysqlService 객체가 단 하나만 생성되도록 하는 디자인 패턴
	// new로 MysqlService 객체가 여러 개 생기는 것을 방지. 
	// static으로 메소드를 만들면 메모리 영역에 올라가 있어서 객체를 새로 만들지 않아도 사용할 수 있음.
	// 생성자를 통해서 객체를 만드는 게 아니라 getInstance 메소드를 통해 객체를 얻어냄.
	public static MysqlService getInstance() {
		if (mysqlService == null) {
			mysqlService = new MysqlService();
		}
		return mysqlService;
	}
	
	// DB connect
	// 여기서 오류가 발생하면 연결을 관리한 자기의 잘못이므로 try-catch로 처리.
	public void connect() {
		try {
			// 1. 드라이버 메모리에 로딩
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			// 2. DB 연결(connection)
			conn = DriverManager.getConnection(URL, ID, PASSWORD);
			
			// 3. statement: DB와 연결해서 쿼리를 실행하기 위한 준비
			statement = conn.createStatement();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// DB disconnect
	public void disconnect() {
		// connect의 반대 순서.
		try {
			statement.close();
			conn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	// R (read)
	// 서버로 쿼리를 보내 결과를 받아오는 역할.
	// 오류가 발생하는 것은 잘못된 쿼리를 보낸 서블릿의 잘못이므로 해당 서블릿이 처리하도록 throws로 처리.
	public ResultSet select(String query) throws SQLException {
		res = statement.executeQuery(query);
		return res;
	}
	
	
	
	// CUD (create, update, delete)
	public void update(String query) throws SQLException {
		statement.executeUpdate(query);
	}
	
}
