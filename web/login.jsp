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
            <td>用户名2：<input type="text" name="username" value="孔祥鸟" /></td>
          </tr>
          <tr>
            <td style="float:right">密码：<input type="password" name="password"/></td>
          </tr>
          <tr>
            <td>真实姓名：<input type="text" name="HJL"/></td>
          </tr>
        </table>
        <button type="submit">登录</button>
      <button type="submit">注册</button>

    </form>
  </body>
</html>
