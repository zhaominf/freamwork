<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%String path=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="<%=path%>/css/freamwork.css" rel="stylesheet" type="text/css" />
<link href="<%=path%>/css/htmlstyle.css" rel="stylesheet" type="text/css" />
<title>登录</title>
<script type="text/javascript" src="<%=path%>/js/jquery-3.1.1.js"></script>
</head>
<body>
<div class="loginmain">
	<div class="logincenter">
		<div class="login">
		<div id=usercode contenteditable="true" class="input"    placeholder="用户"></div>
		<div id="password" contenteditable="true" class="passwordinput"  placeholder="密码"></div>
		</div>
	</div>
</div>
</body>
</html>