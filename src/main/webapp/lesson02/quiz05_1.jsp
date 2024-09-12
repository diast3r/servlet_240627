<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기</title>
<!-- bootstrap -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<%
		int num1 = (int)Double.parseDouble(request.getParameter("num1")); // 3.00, 4.000처럼 정수와 같은 값의 실수를 입력한 경우에 대비
		int num2 = (int)Double.parseDouble(request.getParameter("num2"));
		String operator = request.getParameter("operator");
	%>
	<div class="container">
		<div class="display-4">계산 결과</div>
		<div class="display-3">
			<%	
				double result;
				if (operator.equals("+")) {
					result = num1 + num2;
				} else if (operator.equals("-")) {
					result = num1 - num2;
				} else if (operator.equals("*")) {
					operator = "X";
					result = num1 * num2;
				} else {
					result = (double)num1 / num2;
				}
				out.print(num1 + " " + operator + " " + num2 + " = ");
				
				
			%><span class="text-info"><%= (Math.round(result * 10000) / 10000.0) %></span>
		</div>
	</div>
	
</body>
</html>