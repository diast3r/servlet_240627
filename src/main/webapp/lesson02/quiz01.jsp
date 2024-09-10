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
		double average;
		int sum = 0;
		for (int i = 0; i < scores.length; i++) {
			sum += scores[i];
		}
		average = (double)sum / scores.length;
	%>
	평균 점수는 <%= average %> 입니다.<br>
	
	<!-- 3. 채점 결과 -->
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int count = 0;
		for (int i = 0; i < scoreList.size(); i++) {
			if (scoreList.get(i).equals("O")) {
				count++;
			}
		}
	%>
	채점 결과는 <%= count * 20 %>점입니다.<br>
	
	<!-- 4. 나이 구하기 -->
	<%
		String birthDay = "20010820";
		// int year = Integer.parseInt(birthDay.substring(0, 4));
		// String birthDayWithHyphen = birthDay.substring(0, 4) + "-" + birthDay.substring(4, 6) + "-" + birthDay.substring(6,8);
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
	%>
	<%= birthDay %>의 나이는 <%= age %>세입니다.
	
</body>
</html>