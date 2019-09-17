<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="css/TheMe.css">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.2.1/vue.min.js"></script>
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
<%-------------------崔燃开始------------------%>
<style type="text/css">

    #dongtai {
        margin: 0;
        padding: 0;
        list-style: none;
    }

    #dongta {
        width: 500px;
        padding: 0;
        height: 500px;
        position: relative;
        margin: 100px auto;
        transform-style: preserve-3d;
        animation: box 5s linear infinite;
    }

    @keyframes box {
        0% {
            transform: rotateY(0deg);
        }
        100% {
            transform: rotateY(360deg);
        }
    }

    li {
        width: 500px;
        padding: 0;
        height: 500px;
        position: absolute;
        border-radius: 50%;
    }

    .oli1 {
        box-shadow: 0px 0px 100px red;
        transform: rotateY(10deg);
    }

    .oli2 {
        box-shadow: 0px 0px 100px coral;
        transform: rotateY(20deg);
    }

    .oli3 {
        box-shadow: 0px 0px 100px chartreuse;
        transform: rotateY(30deg);
    }

    .oli4 {
        box-shadow: 0px 0px 100px aqua;
        transform: rotateY(40deg);
    }

    .oli5 {
        box-shadow: 0px 0px 100px cyan;
        transform: rotateY(50deg);
    }

    .oli6 {
        box-shadow: 0px 0px 100px cornflowerblue;
        transform: rotateY(60deg);
    }

    .oli7 {
        box-shadow: 0px 0px 100px blue;
        transform: rotateY(70deg);
    }

    .oli8 {
        box-shadow: 0px 0px 100px magenta;
        transform: rotateY(80deg);
    }

    .oli9 {
        box-shadow: 0px 0px 100px yellow;
        transform: rotateY(90deg);
    }

    .oli10 {
        box-shadow: 0px 0px 100px lightblue;
        transform: rotateY(100deg);
    }

    .oli11 {
        box-shadow: 0px 0px 100px yellowgreen;
        transform: rotateY(110deg);
    }

    .oli12 {
        box-shadow: 0px 0px 100px aqua;
        transform: rotateY(120deg);
    }

    .oli13 {
        box-shadow: 0px 0px 100px lightcoral;
        transform: rotateY(130deg);
    }

    .oli14 {
        box-shadow: 0px 0px 100px firebrick;
        transform: rotateY(140deg);
    }

    .oli15 {
        box-shadow: 0px 0px 100px teal;
        transform: rotateY(150deg);
    }

    .oli16 {
        box-shadow: 0px 0px 100px thistle;
        transform: rotateY(160deg);
    }

    .oli17 {
        box-shadow: 0px 0px 100px coral;
        transform: rotateY(170deg);
    }

    .oli18 {
        box-shadow: 0px 0px 100px cadetblue;
        transform: rotateY(180deg);
    }

    /*#dongtai {
        background-color: #000;
    }*/

</style>
<%------------崔燃结束------------------%>
<body>



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

<%--许光佑开始--%>
<div style="display: none"></div>
<%--许光佑结束--%>

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
<img src="${pageContext.request.contextPath}/img/{0AE0209E-85CF-3378-DF21-ACF7FF9B5DFC}.gif" style="width:100px;height: 100px ">
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
<%--孔祥鹏开始--%>
<div class="panel-group" id="accordion">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion"
                   href="#collapseOne">
                    孔祥鹏111
                </a>
            </h4>
        </div>
        <div id="collapseOne" class="panel-collapse collapse in">
            <div class="panel-body">
                Nihil anim keffiyeh helvetica, craft beer labore wes anderson
                cred nesciunt sapiente ea proident. Ad vegan excepteur butcher
                vice lomo.
            </div>
        </div>
    </div>
</div>

</body>

<%--郝家乐开始--%>
<%--音乐循环播放--%>
<video autoplay="autoplay" id = "video" hidden="true" playsinline webkit-playsinline>
    <source type="video/mp4" src="${pageContext.request.contextPath}/js/1.mp3" />
    <preference name="AllowInlineMediaPlayback" value="true" />
</video>




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
                    <label for="name1" class="col-sm-2 control-label">编码</label>
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
<!--崔燃开始-->
<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#cuiran">崔燃专区</button>

    <div class="modal fade" id="cuiran" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4>崔燃专区</h4>
                </div>
                <div class="modal-body">

                    <div class="form-group">
                        <div id="dongtai" style="height: 400px;width: 400px">
                            <ul id="dongta">
                                <li class="oli1"></li>
                                <li class="oli2"></li>
                                <li class="oli3"></li>
                                <li class="oli4"></li>
                                <li class="oli5"></li>
                                <li class="oli6"></li>
                                <li class="oli7"></li>
                                <li class="oli8"></li>
                                <li class="oli9"></li>
                                <li class="oli10"></li>
                                <li class="oli11"></li>
                                <li class="oli12"></li>
                                <li class="oli13"></li>
                                <li class="oli14"></li>
                                <li class="oli15"></li>
                                <li class="oli16"></li>
                                <li class="oli17"></li>
                                <li class="oli18"></li>
                            </ul>
                        </div>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                    </button>
                </div>
            </div>
        </div>
    </div>

    <!---崔燃结束-->

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

<!---lcy--->
<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#liModal">点击2</button>
<div class="modal fade" id="liModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                邮箱：<input type="text">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<!---lcy--->


<%--刘欣洋--%>
<div id="box">
    <video id="video1" controls preload="auto" width="400px" height="300px">
        <source src="${pageContext.request.contextPath}/js/cxk.mp4" type="video/mp4">
    </video>
</div>






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
<%-- 刘欣洋--%>
<script>
var videoObject = {
container: '#video1',//“#”代表容器的ID，“.”或“”代表容器的class
variable: 'player',//该属性必需设置，值等于下面的new chplayer()的对象
loaded:'loadedHandler',//监听播放器加载成功
autoplay:true,//自动播放
//video:'http://118.180.24.208:8090//file-rest/uploads/001/003/2017-12-20/ff808081604959760160735aa78e0125.mp4'//视频地址
video:'${pageContext.request.contextPath}/js/cxk.mp4'
};
var player=new ckplayer(videoObject);
function loadedHandler(){//播放器加载后会调用该函数
player.addListener('time', timeHandler); //监听播放时间,addListener是监听函数，需要传递二个参数，'time'是监听属性，这里是监听时间，timeHandler是监听接受的函数
}
function timeHandler(t){
console.log('当前播放的时间：'+t);
}
</script>

</html>
