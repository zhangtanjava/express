<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width,user-scalable=no">
<!--嘿嘿，禁止缩放-->
<link rel="apple-touch-icon-precomposed" href="../../images/happyheart/1.png">
<meta name="format-detection" content="telephone=no">
<title>我喜欢你</title>
<style type="text/css">
body {
	text-align: center;
	margin: 0px;
	padding: 0px;
	font-size: 25px;
	color: #FFF;
	font-family: "微软雅黑";
	background: #f3961c;
}

div {
	text-align: left;
}

.tittle {
	width: 100%;
	background: #f3961c;
	top: 0px;
	height: 100%;
	z-index: 0;
	position: absolute;
	position: fixed !important;
	display: none;
	cursor: default;
}

.big {
	font-family: "微软雅黑";
	color: #FFF;
	font-size: 35px;
}

.tishi {
	position: absolute;
	position: fixed !important;
	z-index: 99;
	bottom: 10px;
	width: 100%;
	text-align: center;
}

.tishiContent {
	border: 1px solid #FFF;
	font-size: 18px;
	padding: 5px;
	cursor: pointer;
	border-radius: 5px;
}
</style>
<script type="text/javascript" src="../../js/happyheart/jquery.min.js"></script>
<script>
// if(localStorage["index"]=="1"){
// 	window.location="index2.html";
// }

$(document).ready(function(e) {
	$(document).scrollTop(300); /*移动滚动条到最下方*/
	timer=setInterval("$.change()",6000);
	t=1;
	$("#t-"+t).fadeIn();
	
	$(document).click(
	function(){
		/*如果用户点击了，就取消自动播放*/
		clearInterval(timer);
		$.change();
		}
	);
	
	/*切换*/
	$.change=function(){
		t++;
		if(t<=$(".tittle").length){
		$(".tittle").slideUp(1500).fadeOut();
		$("#t-"+t).slideDown(1500).fadeIn();
		}else{
			localStorage["index"]="1";
			window.location="happyheart2.jsp";
			}
		}
});
</script>

</head>

<body>
	<center>
		<div class="tittle" id="t-1" style="display: none;">
			<table width="100%" border="0" height="100%">
				<tbody><tr>
					<td align="center"> <span class="big">表白系统</span>正在初始化</td>
				</tr>
			</tbody></table>
		</div>

		<div class="tittle" id="t-2" style="display: block;">
			<table width="100%" border="0" height="100%">
				<tbody><tr>
					<td align="center"><span class="big">在这个特殊的</span>地方</td>
				</tr>
			</tbody></table>
		</div>

		<div class="tittle" id="t-3" style="">
			<table width="100%" border="0" height="100%">
				<tbody><tr>
					<td align="center">我想对<span class="big">某人说</span></td>
				</tr>
			</tbody></table>
		</div>
	</center>

	<div class="tittle" id="t-4" style="">
		<table width="100%" border="0" height="100%">
			<tbody><tr>
				<td align="center"><br><span其实我 class="big">暗恋你很久了</span其实我></td>
			</tr>
		</tbody></table>
	</div>

	<div class="tittle" id="t-5" style="">
		<table width="100%" border="0" height="100%">
			<tbody><tr>
				<td align="center"><br>下面是我对你的<span class="big">表白内容</span></td>
			</tr>
		</tbody></table>
	</div>
	
	<div align="center" class="tishi">
		<span class="tishiContent">轻触屏幕继续</span>
	</div>



</body></html>