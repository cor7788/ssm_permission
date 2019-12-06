<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/login" method="post">
    <label>
        用户名：<input type="text" name="username">
    </label><br>
    <label>
        密码啊：<input type="password" name="password">
    </label><br>
    <input type="submit" value="提交">
</form>
</body>
</html>
