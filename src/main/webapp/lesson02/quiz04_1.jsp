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
	
	<% // 학원 풀이	
		int length = Integer.parseInt(request.getParameter("length"));
		String[] types = request.getParameterValues("type");
	%>
	<div>
		<h1>길이 변환 결과</h1>
		<h3><%= length %>cm</h3>
		
		<h2>
			<%
			if (types != null) {
				for (int i = 0; i < types.length; i++) {
					if (types[i].equals("inch")) {
						double inch = length * 0.393701;
						out.println(inch + "in<br>");
					} else if (types[i].equals("yard")) {
						double yard = length * 0.01093613888889;
						out.println(yard + "yd<br>");
					} else if (types[i].equals("feet")) {
						double feet = length * 0.032808416666669996953;
						out.println(feet + "in<br>");
					} else if (types[i].equals("meter")) {
						double meter = length * 0.01;
						out.println(meter + "m");
					}
					
				}
			}
			%>
		</h2>
	</div>
		
		
		
	<%	// 집에서 다시 풀어보기(Map, 리스트 등 이용해서)
		/*
		System.out.println(request.getParameter("length"));
		//int length = Integer.parseInt(request.getParameter("length"));
		Map<String, Boolean> checked = new HashMap<>();
		Map<String, Double> ratio = new HashMap<>();
		ratio.put("inch", 0.393701);
		ratio.put("yard", 0.01093613888889);
		ratio.put("feet", 0.032808416666669996953);
		ratio.put("meter", 0.01);
		
		String[] type = request.getParameterValues("type");
		
		
		if (type != null) {
			for (int i = 0; i < type.length; i++) {
				checked.put(type[i], true);
			}
		}
		
		Iterator<String> keys = checked.keySet().iterator();
		while (keys.hasNext()) {
			String key = keys.next();
			if (checked.get(key) == true) {
				//String convertedStr = (length * ratio.get(key)) + key;
				//out.println(convertedStr);
			}
			
		}
		// List<Boolean> checked = new ArrayList<>(Arrays.asList());
		*/
		
	%>
</body>
</html>