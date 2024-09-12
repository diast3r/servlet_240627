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
	<div class="container col-5">
		<form id="form" method="post" action="/lesson02/quiz05_1.jsp">
				<h2>사칙 연산 계산기</h2>
				<div class="d-flex">
					<input type="text" name="num1" class="form-control" placeholder="정수 입력">
					<select name="operator" class="form-control col-2 ml-2">
						<option>+</option>
						<option>-</option>
						<option>*</option>
						<option>/</option>
					</select>
					<input type="text" name="num2" class="form-control ml-2" placeholder="정수 입력">
					<input type="button" value="계산하기" id="formBtn" type="button" class="btn btn-success ml-2">
				</div>
		</form>
	</div>
	
	<script>
	// 유효성 검사
	$(document).ready(function() {
		$("input[name=num1], input[name=num2]").on('input', function() {
			var num1 = $('input[name="num1"]').val();
			var num2 = $('input[name="num2"]').val();
			var isValid = true;
			if (num1.length == 0 || num2.length == 0) { // 아무것도 입력 안 한 경우
				isValid = false;
			}
			if (isNaN(num1) || isNaN(num2)) { // 숫자가 아닌 경우.
				isValid = false;
			}
			if (!Number.isInteger(+num1) || !Number.isInteger(+num2)) { // 정수가 아닌 경우. (2.0, 3.00등은 못 걸러줌)
				isValid = false;
			}
			if (!isValid) {
				$("input[type=submit]").attr("type", "button");
				return;
			}

			$("input[type=button]").attr("type", "submit");
		});
	});
		
	</script>
</body>
</html>