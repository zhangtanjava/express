<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>我们的爱情故事</title>
    
    <style type="text/css">
        @font-face {
            font-family: digit;
            src: url('digital-7_mono.ttf') format("truetype");
        }
    </style>
    <link href="../../css/happyheart/default.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="../../js/happyheart/jquery.js"></script>
    <script type="text/javascript" src="../../js/happyheart/garden.js"></script>
    <script type="text/javascript" src="../../js/happyheart/functions.js"></script>
</head>

<body>
    <div id="mainDiv">
        <div id="content" style="width: 1110px; height: 625px; margin-top: 52px; margin-left: 245px;">
            <div id="code" style="margin-top: 112.5px;">
                <span class="comments">/**</span><br>
                <span class="space"><span class="comments">*因为我是一个程序员,</span><br>
                <span class="space"><span class="comments">*所以我写一些代码来显示我对你的爱.</span><br>
                <span class="space"><span class="comments">*/</span><br>
                Boy i = <span class="keyword">new</span> Boy(<span class="string">"某人"</span>);<br>
                Girl u = <span class="keyword">new</span> Girl(<span class="string">"某人"</span>);<br>
                <span class="comments">// 2014年1月1日,你说你不爱我. </span><br>
                i.love(u);<br>
                <span class="comments">// 但是......，你说，我们还是好朋友。</span><br>
                u.sayOtherthing();<br>
                <span class="comments">// 没有原因。</span><br>
                <span class="keyword">var</span> reason=i.ask(u);<br>
                <span class="comments">// 我们并没有足够的了解对方。</span><br>
                $("body").append(reason);<br>
                <span class="comments">// 我们的关系发展毫无前途。</span><br>
                <span class="comments">// And take care of u and our love.</span><br>
                i.takeCareOf(u);<br>
                <span class="comments">// 所以我一直在等待，我有信心，你会。</span><br>
                <span class="keyword">boolean</span> isAccept = <span class="keyword">false</span>;<br>
                <span class="keyword">while</span> (isAccept) {<br>
                <span class="placeholder">i.waitFor(u);<br>
                <span class="placeholder"><span class="comments">// 我觉得是一个重要的决定</span><br>
                <span class="placeholder"><span class="comments">// 你应该忘记之前发生的不愉快的事情。</span><br>
                <span class="placeholder">isAccept = u.thinkOver();<br>
                }<br>
                <span class="comments">// 如果你接受我，我们将会生活幸福快乐的日子。</span><br>
                u.accept(i);<br>
                i.liveHappilyWith(u);<br>


            </span></span></span></span></span></span></span>_</div>
            <div id="loveHeart">
                <canvas id="garden" width="670" height="625"></canvas>
                <div id="words" style="position: absolute; top: 257px; left: 765px;">
                    <div id="messages" style="display: block;">
<center>
<script type="text/javascript"><!--
google_ad_client = "ca-pub-3712320065678109";
/* lovead */
google_ad_slot = "0650322805";
google_ad_width = 320;
google_ad_height = 50;
//-->
</script>
</center>
                        某人，我将会等着你爱我
                        <div id="elapseClock" style="display:none"></div>
                        <a href="happyheart3.jsp" id="accept">如果你接受我，请点击这里</a>
                    </div>
                    <div id="loveu" style="display: block;">
                        爱你，直到永永远远。<br>
                        <div class="signature">- Love</div>
                    </div>
                </div>
            </div>
        </div>
       
    </div>
    <script type="text/javascript">
        var offsetX = $("#loveHeart").width() / 2;
        var offsetY = $("#loveHeart").height() / 2 - 55;
        
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
                adjustWordsPosition();
                startHeartAnimation();
            }, 10000);
            
            $("#accept").click(function(){
                $(this).hide();
                $("#elapseClock").show();
                var together = new Date();
                timeElapse(together);
                setInterval(function () {
                    timeElapse(together);
                }, 500);
            })
            adjustCodePosition();
            $("#code").typewriter();
        }
    </script>
	<audio src="20140413_025646.mp3" autoplay="autoplay"></audio>

</body></html>