<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>你若不离不弃 我必生死相依</title>
<style type="text/css">
body {
    margin-left: 0px;
    margin-top: 0px;
    margin-right: 0px;
    margin-bottom: 0px;
    background-color: #FF62FF;
}
.content {
    width: 80%;
    color: #90F;
    height: 100%;
    top: 0px;
    left: 10%;
    font-size: 18px;
    line-height: 25px;
    font-family: "微软雅黑";
    margin-top: 0px;
}
body {
    color: #FFF;
    padding: 10px;
    background: #FFF url(bg.jpg) no-repeat fixed top center;
    margin-left: 0px;
    margin-top: 0px;
    margin-right: 0px;
    margin-bottom: 0px;
}
.des {
    font-size: 15px;
    color: #3C3C3C;
    /*width: 100%;*/
    text-shadow : 0px 0px 1px #fff;
    z-index:1000;                   
    right:20px;
    position:fixed !important;
    bottom:0px;
}
.des a {
    color: #3C3C3C;
    text-shadow : 0px 0px 1px #fff;
}
</style>
<script src="../../js/happyheart/jquery-1.7.1.min.js" language="javascript" type="text/javascript"></script>
<script src="../../js/happyheart/tao.js" language="javascript" type="text/javascript"></script>
<script>
$(document).ready(function(e) {
    /*禁止右键和隐藏鼠标*/
    $("body").bind("contextmenu", function() {
      return false;
    });
    
    /*定义文字最底部显示到哪儿*/
    var guangs=["　","|","　","|"];
    var guangBiao="/";
    var guangSub=0;
    var guang=setInterval("$.guang()",120);
    
    var subs=0;
    var string="某人…… ██我喜欢你██真的很喜欢很喜欢你███你知道吗…每个噩梦惊醒的夜晚...总会依赖的想起你██每当夜深人静想起你的时候……眼泪总是忍不住的往下流██每当流星划过寂静的天边……都会为你许下祝福的心愿██我依旧对你那么思念██不管你怎么样……我对你的爱永远不会改变██我只是个很普通的人……可能配不上你██如果因为我的表白而影响你的学习……那很抱歉……██我可以等你……不管3年还是5年……██████████PS.青春美好——算了吧。。再弄也是白费力气的。。她是不可能接受的。。。我想了很多。。。也许。。她从来没有想过。。也从来没有一点点的喜欢我。。。██我。。真的很差。。。████████我希望你能够答应我 <-- The End -->";
    $.intent=function(str){
        str="　　"+str;
        //var reg=new RegExp("/█{1,2}/","i"); //创建正则RegExp对象
        str=str.replace(eval("/█/gi"),"█");

        return str;
    }
    string=$.intent(string);
    
    var echo=setInterval("$.echo()",300);
    
    $.guang=function(){
          if(guangSub<guangs.length-1){
                guangSub++;
              }else{
                  guangSub=0;
                  }
            guangBiao=guangs[guangSub];
            $("#guang").html(guangBiao);
            
        }
    
    $.echo=function(){
        if(subs<string.length){
        $("#txt").html($("#txt").html()+$.repl(string.substr(subs,1)));
        if($("#guang").offset().top > document.body.scrollHeight / 2){
          window.scrollTo(0,$("#guang").offset().top);
        }
               $(".des").css("bottom","0px");
        subs++;
        }
    }
    $.repl=function(str){
        str=str.replace("\r\n","<br/>");
        str=str.replace("\n","<br/>");
        str=str.replace("█","<br/>");
        return str;
    }
});
</script>
</head>

<body>
<audio src="def.mp3" autoplay="autoplay"></audio>

<center>
<div align="left" class="content"><span id="txt"></span><span id="guang"></span>
<span></span>
</div>
</center>

<!--下面是浮动的桃心-->
<div id="bubbles" style="visibility:hidden">
<img src="../../images/happyheart/1.png">
<img src="../../images/happyheart/2.png">
<img src="../../images/happyheart/1.png">
</div>
<!---->

</body></html>