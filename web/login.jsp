<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>登录页面</title>
  </head>
  <body>
    <form action="${pageContext.request.contextPath}/loginServlet" method="post">
        <table>
          <tr>
            <td>用户名：<input type="text" name="username"/></td>
          </tr>
          <tr>
            <td style="float:right">密码：<input type="password" name="password"/></td>
          </tr>
        </table>
        <button type="submit">登录</button>
      <button type="submit">注册A</button>
    </form>
  </body>
</html>
