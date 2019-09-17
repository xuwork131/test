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
    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="js/ChenZhaoYi.js"></script>
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
<h1>wzd wow</h1>


<%--yxh开始--%>
<div class="modal fade" id="yxhModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel2">

                </h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" role="form" id="forId">
                    <%--<input type="hidden" class="form-control" name="id" id="id">--%>
                    <div class="form-group">
                        <label for="name" class="col-sm-2 control-label">用户名称</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" name="name" id="name"
                            >
                        </div>

                    </div>
                    <div class="form-group">
                        <label for="password" class="col-sm-2 control-label">用户密码</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" name="password" id="password"
                            >
                        </div>

                    </div>
                    <input type="hidden" class="form-control" id="id" name="id" >
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" id="cc">关闭
                </button>
                <input type="button" id="tiaojoa" value="添加">
            </div>
        </div>
    </div>
</div>

<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#yxhModal" id="yxh" >yuxuhao</button>
<%--yxh结束--%>


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
<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#jiaotao">
    请点击2
</button>
<!-- 模态框（Modal）焦焘 -->
<div class="modal fade" id="jiaotao" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <h1>焦焘</h1>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<!-- 模态框（Modal）焦焘 结束-->
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



<%--shenshutong--%>
<button class="btn btn-default" data-toggle="modal" data-target="#shenModal">点击</button>
<div class="modal fade" id="shenModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>

            </div>
            <div class="modal-body">
                电话：<input type="text">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<%--shenshutong--%>


<br/>
<br/>
<%--gggggggggggggggggggggggggggg--%>
<img src="${pageContext.request.contextPath}/img/[HYGBN`C1POOL6KY81PJP8U.gif" style="width:65px;height: 55px ">
<h4>胶囊式导航中的激活状态</h4>
<ul class="nav nav-pills">
    <li class="active">
        <a href="#">谁买s
            <span class="badge">小米w</span>
        </a>

    <li>
        <a href="#">窝窝头s</a>

    <li>
        <a href="#">菠菜
            <span class="badge">贱卖s</span>
        </a>

</ul>

<%--xxxxxxxxxxxxxxxxxxxxxxxxxxx--%>
<!-- wsc开始 -->
<!-- 按钮触发模态框 -->
<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModalwsc">
    ADD
</button>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModalwsc" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabelwsc">
                    添加用户
                </h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label for="name1" class="col-sm-2 control-label">姓名</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" id="name1"
                               name="name" placeholder="请输入名字">
                    </div>
                    <div class="col-sm-3">
                        <span class="help-block" id="msg"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="name1" class="col-sm-2 control-label">密码</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" id="code"
                               name="code" placeholder="请输入密码">
                    </div>

                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary">
                    提交更改
                </button>
            </div>
        </div>
    </div>
</div>
<!-- wsc结束 -->

</body>

<%--郝家乐开始--%>
<%--音乐循环播放--%>
<video autoplay="autoplay" id = "video" hidden="true" playsinline webkit-playsinline>
    <source type="video/mp4" src="${pageContext.request.contextPath}/js/1.mp3" />
    <preference name="AllowInlineMediaPlayback" value="true" />
</video>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary">
                    提交更改
                </button>
            </div>
        </div>
    </div>
</div>
<!-- wsc结束 -->
<!--zzzzzzzzzzzzzzzzzzzz-->
<button type="button" class="btn btn-primary" data-toggle="collapse"
        data-target="#demo">
       点击展示
</button>

<div id="demo" class="collapse in">
    内容
</div>
<!--zzzzzzzzzzzzzzzzzzzzzzzzzz-->
</body>


<script>
    var video = document.getElementById("video");
    video.loop = false;
    video.addEventListener('ended', function() {
        video.currentTime=0.1; video.play(); }, false);
    video.play();
</script>
<%--郝家乐结束--%>
<%--pppppppppppppppppppppp--%>
<a href="Https://www.baidu.com">潘超</a>
<%--cccccccccccccccccccccc--%>
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
