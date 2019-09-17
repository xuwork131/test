<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>鸡你太美</title>
  </head>
  <link rel="stylesheet" href="css/TheMe.css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <link rel="stylesheet" href="https://heerey525.github.io/layui-v2.4.3/layui-v2.4.5/css/layui.css"  media="all">
  <script type="text/javascript">
      jQuery(window).load(function(){
          $("#status").delay(100).fadeOut('slow');
          $("#placholder").delay(500).fadeOut('slow');
          $("body").delay(500).css({"overflow":"visible"});
      })
  </script>
  <body>
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
  <script src="https://heerey525.github.io/layui-v2.4.3/layui-v2.4.5/layui.js" charset="utf-8"></script>
  <script>
      layui.use('element', function() {
          var $ = layui.jquery
              , element = layui.element;

          //触发事件
          var active = {
              setPercent: function(){
                  //设置50%进度
                  element.progress('demo', '50%')
              }
              ,loading: function(othis){
                  var DISABLED = 'layui-btn-disabled';
                  if(othis.hasClass(DISABLED)) return;

                  //模拟loading
                  var n = 0, timer = setInterval(function(){
                      n = n + Math.random()*10|0;
                      if(n>100){
                          n = 100;
                          clearInterval(timer);
                          othis.removeClass(DISABLED);
                      }
                      element.progress('demo', n+'%');
                  }, 300+Math.random()*1000);

                  othis.addClass(DISABLED);
              }
          };

          $('.site-demo-active').on('click', function(){
              var othis = $(this), type = $(this).data('type');
              active[type] ? active[type].call(this, othis) : '';
          });
      });
  </script>







    <form action="${pageContext.request.contextPath}/loginServlet" method="post">
        <table>
          <tr>
            <td>用户名：<input type="text" name="username" value="窝窝头，一块钱四个。"/></td>
</head>
<link rel="stylesheet" href="css/TheMe.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
    jQuery(window).load(function () {
        $("#status").delay(1000).fadeOut('slow');
        $("#placholder").delay(1500).fadeOut('slow');
        $("body").delay(1500).css({"overflow": "visible"});
    })
</script>
<body>
<div id="placholder">
    <div id="status">
        <ul class="spinner">
            <li class="recnt1"></li>
            <li class="recnt2"></li>
            <li class="recnt3"></li>
            <li class="recnt4"></li>
            <li class="recnt5"></li>
        </ul>
    </div>
</div>
<form action="${pageContext.request.contextPath}/loginServlet" method="post">
    <table>
        <tr>
            <td>用户名：<input type="text" name="username" placeholder="请输入姓名"/></td>
            <td>项目报错:<input value="baocuo"/></td>
        </tr>
        <tr>
            <td style="float:right">密码：<input type="password" name="password" placeholder="请输入密码"/></td>
        </tr>
        <tr>
            <td>真实姓名：<input type="text" name="HJL"/></td>
          </tr>
        </table>
        <button type="submit">登录</button>
    </form>
  </body>

        </tr>
    </table>
</form>
</body>
</html>
