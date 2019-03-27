<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<title>Our Love Story</title>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<style type="text/css">
		@font-face {
			font-family: digit;
			src: url('digital-7_mono.ttf') format("truetype");
		}
	</style>
	<link href="../css/heart/default.css" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="../js/heart/jquery.js"></script>
	<script type="text/javascript" src="../js/heart/garden.js"></script>
    <script type="text/javascript" src="../js/heart/functions.js"></script>
</head>

<body>
	<div id="mainDiv">
		<div id="content">
			<div id="code">
				<span class="comments">我的爱人</span><br />
				<span class="space"/><span class="comments">我会牵着你的手，走到我们满头白发的那一天</span><br />
				<span class="space"/><span class="comments">我会守护你生命里的精彩，并陪伴你一路精彩下去。</span><br />
				<span class="space"/><span class="comments">你的幸福快乐，是我一生的追求。</span><br />
				<span class="space"/>我会每一天带着笑脸，和你说早安，<br />
				<span class="space"/>我会每一晚与你道声晚安再入梦乡，<br />
				<span class="space"/>我会带你去所有你想去的地方，<br />
				<span class="space"/>陪你闹看你笑<br />
				<span class="space"/>历经你生命中所有的点点滴滴。<br />
				<span class="space"/>我期待这一生与你一起走过，<br />
				<span class="space"/>走到尽头再回头看尽一生铅华满地，<br />
				<span class="space"/>我期待与你慢慢变老，<br />
				<span class="space"/>等我们老到哪儿也去不了，<br />
				<span class="space"/>还能满载着一生的幸福快乐。<br />
				<span class="keyword">我愿意爱你直到老去，<br />
				<span class="space"/>我会为我们的未来撑起一片天空，<br />
				<span class="space"/>为我们的将来担负起一生的责任，<br />
				<span class="space"/>愿意为你去做每一件能让你开心快乐的事。<br />
				<span class="space"/>所有我们经历的点点滴滴，<br />都是我们一辈子最美的回忆。</span> <br />
				<br />
			</div>
			<div id="loveHeart">
				<canvas id="garden"></canvas>
				<div id="words">
					<div id="messages">
						青儿,我爱你！
						<div id="elapseClock"></div>
					</div>
					<div id="loveu">
						Love u forever and ever.<br/>
						<div class="signature">- tan2019</div>
					</div>
				</div>
			</div>
		</div>
	
	</div>
	<script type="text/javascript">
		var offsetX = $("#loveHeart").width() / 2;
		var offsetY = $("#loveHeart").height() / 2 - 55;
		var together = new Date();
		together.setFullYear(2019, 1, 14);
		together.setHours(0);
		together.setMinutes(0);
		together.setSeconds(0);
		together.setMilliseconds(0);
		
		if (!document.createElement('canvas').getContext) {
			var msg = document.createElement("div");
			msg.id = "errorMsg";
			msg.innerHTML = "Your browser doesn't support HTML5!<br/>Recommend use Chrome 14+/IE 9+/Firefox 7+/Safari 4+"; 
			document.body.appendChild(msg);
			$("#code").css("display", "none")
			$("#copyright").css("position", "absolute");
			$("#copyright").css("bottom", "10px");
		    document.execCommand("stop");
		} else {
			setTimeout(function () {
				startHeartAnimation();
			}, 5000);

			timeElapse(together);
			setInterval(function () {
				timeElapse(together);
			}, 500);

			adjustCodePosition();
			$("#code").typewriter();
		}
	</script>
</body>
</html>
