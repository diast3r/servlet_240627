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
	1부터 10까지의 합:<%= getSum(10) %><br>
	
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
	점수 평균:<%= average %><br>
	
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
	점수:<%= count * 20 %>점<br>
	
	<!-- 4. 나이 구하기 -->
	<%
		String birthDay = "20010820";
		int age = 2024 - Integer.parseInt(birthDay.substring(0, 4));
	%>
	
	
	
</body>
</html>