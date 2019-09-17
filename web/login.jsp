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
                <h4 class="modal-title" id="myModalLabel">
                    模态框（Modal）标题
                </h4>
            </div>
            <div class="modal-body">
                <h1>大家好 我是毕秀峰  来自1806A</h1>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary">
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
    <%--ren结束--%>
<%--zhangfeng--%>
<div class="tooltip">练习
    <span class="tooltiptext">练习</span>
</div>
<%--zhangfeng--%>
</body>
<script>
    <%--jia--%>
      window.setInterval(colorFun,3000)
      function colorFun()  {
          var color=Math.round( (Math.random()+1)*100000)
          $("body").css("background-color","#"+color)
      }
    <%-- ---------------------------------------------------------------- --%>
</script>
</html>
