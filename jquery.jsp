<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	.content{
	width : 400px;
	color : #ccc;
	background : #000;	 
	}
</style>
<script src="../resource/js/jquery-3.5.1.js"></script>
<script>
//	$(document).ready(function(){
//		$("button").click(function(){
//			$("p").hide();
//		});
		$("#oh").click(function(){
			$("p").show();
		});
		$("#invert").click(function(){
			//과제1
		});
		$("button.h").click(function(){
			$("div.content").fadeOut("slow");
		});
		$("button.s").click(function(){
			$("div.content").fadeIn("slow");
		});

</script>

<body>
		<p>메시지 : 제이쿼리를 공부하고 있습니다.</p>
		<button>메시지 삭제</button>
		<button id="oh">메시지 보이기</button>
		<button id="invert">메시지 숨기기/보이기</button>
		<hr>
		<button class="h">메세제 숨기기</button>
		<button class="s">메세제 보이기</button>
		<div class="content">
			천천히 사라지고<br>
			나타나고
		</div>

</body>
</html>