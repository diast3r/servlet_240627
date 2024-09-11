<%@page import="java.util.Iterator"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
	<!-- 1부터 n까지의 합계를 구하는 함수 -->
	<%!
		public int getSum(int N) {
		int sum = 0;
		for (int i = 1; i <= N; i++) {
			sum += i;
		}
		return sum;
	}
	%>
	1부터 50까지의 합은 <%= getSum(50) %>입니다.<br>
	
	<!-- 2. 점수들의 평균 구하기 -->
	<%
		int[] scores = {81, 90, 100, 95, 80};
		int sum = 0;
		for (int i = 0; i < scores.length; i++) { // 0 ~ 4
			sum += scores[i];
		}
		double average = (double)sum / scores.length; // 나누기할 때 자료형 잘 생각하기.
	%>
	평균 점수는 <%= average %> 입니다.<br>
	
	<!-- 3. 채점 결과 -->
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int score = 0;
		Iterator<String> iter = scoreList.iterator();
		while (iter.hasNext()) {
			String answer = iter.next();
			if (answer.equals("O")) {
				score += (100 / scoreList.size());
			}
		}
		
		for (int i = 0; i < scoreList.size(); i++) {
			if (scoreList.get(i).equals("O")) {
				score += (100 / scoreList.size());
			}
		}
	%>
	채점 결과는 <%= score %>점입니다.<br>
	
	<!-- 4. 나이 구하기 -->
	<%	
		// 1) 한국나이 계산
		String birthDay = "20010820";
		String yearStr = birthDay.substring(0, 4);
		// 스클립틀릿 안에서 바로 브라우저로 출력하는 법
		// 여기서는 out 객체를 따로 변수에 담고 import 하지 않아도 발로 사용 가능. 
		// out.print(yearStr);
		int age = 2024 - Integer.valueOf(yearStr);		
		
		
	
	
	
	
	
	
		// 2) 오늘 날짜 기준으로 '만'나이 구하기
		/*
		Calendar today = Calendar.getInstance(); // Calendar 객체는 생성자가 protected라 생성자로 객체를 만들 수 없음.
		Calendar birth = Calendar.getInstance();
		today.setTime(new Date());
		int todayYear = today.get(Calendar.YEAR);
		int todayMonth = today.get(Calendar.MONTH) + 1; // Calendar객체의 월은 0부터 시작. (0 ~ 11)
		int todayDate = today.get(Calendar.DATE);
		int birthYear = Integer.parseInt(birthDay.substring(0, 4));
		int birthMonth = Integer.parseInt(birthDay.substring(4, 6));
		int birthDate = Integer.parseInt(birthDay.substring(6, 8));
		
		int age = todayYear - birthYear - 1;		
		if (todayMonth > birthMonth) { // 생일 지났으면 나이 +1
			age++;
		} else if (todayMonth == birthMonth) {
			if (todayDate >= birthDate) {
				age++;
			}
		}
		*/
	%>
	<%= birthDay %>의 나이는 만<%= age %>세입니다.
	
</body>
</html>