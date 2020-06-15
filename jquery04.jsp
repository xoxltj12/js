<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>누르면 박스가 줄어요</title>
<script src="../resource/js/jquery-3.5.1.js"></script>
<style>
	div{
		width: 100px;
		height: 100px;
		float: left;
		margin: 5px;
		background: yellow;
	}
	.box{
		background: red;
	}
	.csspic{
		height: 430px;
		text-align: center;
	}
	.csspic img{
		width: 250px;
		position: relative;
	}
</style>
<script>
$(document).ready(function(){
	var xWidth = 100;
	var yheight = 100;
	
	$("div").click(function(){
		$(this).width(xWidth).addClass("box");
		$(this).height(yheight).addClass("box");
		xWidth = xWidth - 10;
		yWidth = yheight - 10;
	});
	
	$("button.b1").click(function(){
		$("img").animate({
			left : 100px;
			width : '100px'
			height : '100px'
		});
	});
	$("button.b2").click(function(){
		$("img").animate({
			width : '200px',
			height : '200px'
		});
	});
	$("button.b3").click(function(){
		$("img").animate({
			width : '300px',
			height : '300px'
		});
	});	
	$("button.b4").click(function(){
		$("img").attr("src","../image/mainBackground.jpg")
		var str = "<h1>이미지가 바뀝니다.</h1>;"
		str += "다음내용<br>"
		str += "다음내용<br>"
		$("#te").html(str);		
	});
	
});	

</script>
</head>
<body>
<p class="csspic">
	이미지 크기 변경 애니메이트<br>
	<button class="b1">가로100픽셀</button>
	<button class="b2">가로200픽셀</button>
	<button class="b3">가로300픽셀</button><br><br>
	<button class="b4">이미지변경</button>
	
	
	<br><br>
	<img src="../image/introBackground.png">
</p>



<hr>
	<div>박스1</div>
	<div>박스2</div>
	<div>박스3</div>
	<div>박스4</div>
	<div>박스5</div>

</body>
</html>