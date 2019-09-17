<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>我是1806A</title>
  </head>
  <link rel="stylesheet" href="css/TheMe.css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript">
      jQuery(window).load(function(){
          $("#status").delay(100).fadeOut('slow');
          $("#placholder").delay(500).fadeOut('slow');
          $("body").delay(500).css({"overflow":"visible"});
      })
  </script>
  <body>
    <form action="${pageContext.request.contextPath}/loginServlet" method="post">
        <table>
          <tr>
            <td>用户名：<input type="text" name="username" value="wzd"/></td>
            <td>项目报错:<input value="baocuo"/></td>
          </tr>
          <tr>
            <td>用户名2：<input type="text" name="username" value="孔祥鹏" /></td>
          </tr>
          <tr>
            <td style="float:right">密码：<input type="password" name="password"/></td>
          </tr>
          <tr>
            <td>真实姓名：<input type="text" name="HJL"/></td>
          </tr>
        </table>
        <button type="submit">登录</button>
      <a href="www.baidu.com">解云升</a>
      <a href="www.google.com">chen</a>
      <button type="submit">GX123</button>
      <button style="background-color: pink">GXGGXGX</button>
      <button type="submit">注册AZ</button>
        <button type="submit">lugan hehe56</button>
      <button type="submit">毕秀峰</button>
      <button type="submit">注册</button>
      <button type="submit">注册yf</button>
      <button type="submit">成功</button>
      <button type="submit">注册</button>
      <button type="submit">注册'''</button>
        <button type="button">lugan</button>
      <button type="submit">CCCCCCPPPPPPPP</button>
      <button type="submit">shenshutong</button>
    </form>
    <p>jia</p>
  </body>
</html>
