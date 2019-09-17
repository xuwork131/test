<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="css/TheMe.css">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://heerey525.github.io/layui-v2.4.3/layui-v2.4.5/css/layui.css"  media="all">
    <script src="https://heerey525.github.io/layui-v2.4.3/layui-v2.4.5/layui.js" charset="utf-8"></script>
</head>
<style>
    .tooltip {
        position: relative;
        display: inline-block;
        border-bottom: 1px dotted black;
    }

    .tooltip .tooltiptext {
        visibility: hidden;
        width: 120px;
        background-color: black;
        color: #fff;
        text-align: center;
        border-radius: 6px;
        padding: 5px 0;


        position: absolute;
        z-index: 1;
    }

    .tooltip:hover .tooltiptext {
        visibility: visible;
    }


</style>
<body>



<%--ycj--%>
<form action="${pageContext.request.contextPath}/loginServlet"  class="form-horizontal" method="post">
    <div class="form-group">
        <label class="col-sm-2 control-label">姓名</label>
        <div class="col-sm-10">
            <input type="text" name="name" placeholder="请输入姓名" class="form-control" style="width: 300px;"/>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">密码</label>
        <div class="col-sm-10">
            <input type="password" name="password" placeholder="请输入密码" class="form-control" style="width: 300px;"/>
        </div>
    </div>
    <div class="form-group">
        <input type="button" class="btn btn-primary" value="提交">
    </div>
</form>
<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
    请点击
</button>
<!-- 模态框（Modal）毕秀峰 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>

            </div>
            <div class="modal-body">
                <h1>大家好 我是毕秀峰  来自1806A</h1>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary" onclick="biixiuf()">
                    提交更改
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<!-- 模态框（Modal）毕秀峰 结束-->
    <%--ren开始--%>
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
        <legend>动态改变进度</legend>
    </fieldset>

    <div class="layui-progress layui-progress-big" lay-showpercent="true" lay-filter="demo">
        <div class="layui-progress-bar layui-bg-red" lay-percent="0%"></div>
    </div>

    <div class="site-demo-button" style="margin-top: 20px; margin-bottom: 0;">
        <button class="layui-btn site-demo-active" data-type="setPercent">设置50%</button>
        <button class="layui-btn site-demo-active" data-type="loading">模拟loading</button>
    </div>
<%--xuyaning--%>
    <!-- 按钮触发模态框 -->
    <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">注册</button>
    <!-- 模态框（Modal） -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title" id="myModalLabel">注册</h4>
          </div>
          <div class="modal-body">
            账号：<input type="text">


            密码：<input type="text" >
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            <button type="button" class="btn btn-primary">提交</button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal -->
    </div>
    <%--ren结束--%>
<%--zhangfeng--%>
<div class="tooltip">练习
    <span class="tooltiptext">练习</span>
</div>
<%--zhangfeng--%>




</body>

<%--郝家乐开始--%>
<%--音乐循环播放--%>
<video autoplay="autoplay" id = "video" hidden="true" playsinline webkit-playsinline>
    <source type="video/mp4" src="${pageContext.request.contextPath}/js/1.mp3" />
    <preference name="AllowInlineMediaPlayback" value="true" />
</video>
<script>
    var video = document.getElementById("video");
    video.loop = false;
    video.addEventListener('ended', function() {
        video.currentTime=0.1; video.play(); }, false);
    video.play();
</script>
<%--郝家乐结束--%>
<script>
    <%--jia--%>
      window.setInterval(colorFun,3000)
      function colorFun()  {
          var color=Math.round( (Math.random()+1)*100000)
          $("body").css("background-color","#"+color)
      }
    <%-- ---------------------------------------------------------------- --%>
    /*毕秀峰开始*/
    function biixiuf() {
        alert("请点击确定！")
        location.href="success.jsp";
    }
    /*毕秀峰结束*/
    /*ren开始*/
    layui.use('element', function(){
        var $ = layui.jquery
            ,element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块

        //触发事件
        var active = {
            setPercent: function(){
                //设置50%进度
                element.progress('demo', '50%')
            }
            ,loading: function(othis){
                var DISABLED = 'layui-btn-disabled';
                if(othis.hasClass(DISABLED)) return;

</script>

</html>
