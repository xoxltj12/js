<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>퀴즈만들기</title>
</head>
<script src="../resource/js/jquery-3.5.1.js"></script>
<script>
	var n =0;
	$(document).ready(function(){
		$("div.out").mouseenter(function(){
			$("p:first",this).text("<b>마우스들어옴<b>");
//			$("p:first",this).html("<b>마우스들어옴<b>");
			$("p:last",this).text(++n);
		});
		$("div.out").mouseleave(function(){
			$("p:first",this).text("마우스나감");
			$("p:last",this).text("최종횟수 : "+n);
		});
		
		
		
		
		$("ans").hide();
		$("p.q1").click(function(){
			$("ans.q1").show();
		});
		$("ans.q1").click(function(){
			$(this).hide();		
		});
		$("p.q2").click(function(){
			$("ans.q2").show();
		});
		$("ans.q2").click(function(){
			$(this).hide();
		});
	});
</script>
<style>
	div.out{
		width: 200px;
		height: 100px;
		border: 1px solid #0000;
		text-align: center;
		background-color: yellow; 
	}
</style>
<body>
<div class="out">
	<p>마우스 이벤트</p>
	<p>0</p>



</div>





	<h2>질문1 : 대한민국의 수도는?</h2>
	<p class="q1">[정답보기]</p>
	<ans class="q1">서울입니다.</ans>
	<hr>
	<h2>질문2 : 대한민국의 국보1호는?</h2>
	<p class="q2">[정답보기]</p>
	<ans class="q2">숭례문입니다.</ans>
</body>
</html>