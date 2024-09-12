<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
<!-- bootstrap -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h2>길이 변환 결과</h2>
		<%	// 집에서 다시 풀어보기(맵과 리스트 이용해서)
			int length = Integer.parseInt(request.getParameter("length"));
		%>
		<h2><%= length + " cm" %></h2>
		<hr>
		<%
			List<String> checked = new ArrayList<>() ;
			Map<String, Double> ratios = new HashMap<>();
			ratios.put("inch", 0.393701);
			ratios.put("yard", 0.01093613888889);
			ratios.put("feet", 0.032808416666669996953);
			ratios.put("meter", 0.01);
			String[] types = request.getParameterValues("type");
			
			
			
			double ratio;
			for (int i = 0; i < types.length; i++) {
				ratio = ratios.get(types[i]);
		%>
		
		<h2><%= length * ratio + " " + types[i] %></h2>
	
		<%
			}
		%>
	</div>	
	
</body>
</html>