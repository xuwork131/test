<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>登录成功</title>
    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
</head>
<script type="text/javascript">
    function save(){
        var money = $("#money").val();
        var payee = $("#payee option:selected").val();
        $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/saveServlet",
            data:{"money":money,"payee":payee},
            dataType:"json",
            success:function(data){
                if(data==true){
                    alert("转账成功！");
                }else{
                    alert("转账失败！");
                }
                window.location.reload();
            },
            error:function(e){
                alert("转账失败！");
            }
        })
    }
</script>
<body>
<h2>你好，${sessionScope.user.username}</h2>
    <form id="form1" action="" method="post">
        <table>
            <tr>
                <td>当前余额：${sessionScope.user.money}</td>
            </tr>
            <tr>
                <td>转账金额：<input id="money" type="text" name="money"/></td>
            </tr>
            <tr>
                <td>收款人：
                    <select id="payee" name="payee">
                        <c:forEach items="${uList}" var="user">
                            <option value="${user.id}">${user.username}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
        </table>
        <input type="button" value="转账" onclick="save()"/>
    </form>
</body>
</html>
