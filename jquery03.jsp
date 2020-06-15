<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CSS스타일 변경</title>
<style>
	.important{
		font-weight: bold;
		font-size: 40px;
	}
	
	.blue{
		color : blue;
	}
	.red{
		color : red;
		border: 1px solid blue;
	}
</style>
<script src="../resource/js/jquery-3.5.1.js">
</script>
<script>
	$(document).ready(function(){
		$("#add").click(function(){
			$("h1,h2,p").addClass("blue").fadeOut("slow");
			$("div").addClass("important");
		});
		
		$("#remove").click(function(){
			$("h1,h2,p").removeClass("blue").fadeIn("slow");
			$("div").removeClass("important");
		});
		
		$("#toggle").click(function(){
			$("h1,h2,p,div").toggleClass("red");
		});
		
		$("#kang").click(function(){
			$("p").css({
				"background-color":"yellow",
				"font-size":"200%"
			});
		});
	});

</script>
</head>
<body>
	<p>이재복</p>
	<div>2020년6월12일 기절함</div>
	<p>이종혁</p>
	<div>병원</div>
	<p>조준영</p>
	<div> 운 동 중 </div>
	<p>장보윤</p>
	<div>병원</div>
	<p>고은지</p>
	<div>지각!</div>
	
	<button id="kang">이름강조</button>

	
<hr>	
	<h1>스타일지정</h1>
	<h2>addClass</h2>
	<p>removeClass</p>
	<div>css()</div><br>
	<button id="add">CSS적용</button>
	<button id="remove">CSS적용 해제</button>
	<hr>
	<button id="toggle">css적용/해제</button>
	

</body>
</html>