<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="${pageContext.request.contextPath}/css/freamwork.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/menu.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/button.css" rel="stylesheet" type="text/css" />
<title>首页</title>
<script type="text/javascript" src="<%=path%>/js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="<%=path%>/js/app.js"></script>
<script type="text/javascript">

	$(document).ready(
			function() {
				$(".leftsidebar_box dt").css({
					"background-color" : "#3992d0"
				});
				$(".leftsidebar_box dt img").attr("src", "images/left/select_xl01.png");
				$(".leftsidebar_box dd").hide();
				$(".leftsidebar_box dt")
						.click(
								function() {
									$(".leftsidebar_box dt").css({
										"background-color" : "#3992d0"
									})
									$(this).css({
										"background-color" : "#317eb4"
									});
									$(this).parent().find('dd').removeClass(
											"menu_chioce");
									$(".leftsidebar_box dt img").attr("src",
											"images/left/select_xl01.png");
									$(this).parent().find('img').attr("src",
											"images/left/select_xl.png");
									$(".menu_chioce").slideUp();
									$(this).parent().find('dd').slideToggle();
									$(this).parent().find('dd').addClass(
											"menu_chioce");
								});

				$(".leftsidebar_box dd a").click(function() {
					$(".Content-Main").createPage($(this).attr("nodecode"));
				});

			});
</script>
</head>
<body>
	<div class="Container">
		<div class="Header"></div>
		<div class="menubar">
			<div class="menubar-Left"></div>
			<div class="menubar-Main">
			</div>
		</div>
		<div class="Content">
			<div class="main">

				<div class="leftsidebar_box">
					<div class="line"></div>
					<dl class="system_log">
						<dt>
							系统记录<img src="images/left/select_xl01.png">
						</dt>
						<dd class="first_dd">
							<a href="#" nodecode="zhaominf1">充值记录</a>
						</dd>
						<dd>
							<a href="#" nodecode="zhaominf2">短信充值记录</a>
						</dd>
						<dd>
							<a href="#" nodecode="zhaominf3">消费记录</a>
						</dd>
						<dd>
							<a href="#">操作记录</a>
						</dd>
					</dl>

					<dl class="custom">
						<dt>
							客户管理<img src="images/left/select_xl01.png">
						</dt>
						<dd class="first_dd">
							<a href="#">客户管理</a>
						</dd>
						<dd>
							<a href="#">试用/成交客户管理</a>
						</dd>
						<dd>
							<a href="#">未成交客户管理</a>
						</dd>
						<dd>
							<a href="#">即将到期客户管理</a>
						</dd>
					</dl>

					<dl class="channel">
						<dt>
							渠道管理<img src="images/left/select_xl01.png">
						</dt>
						<dd class="first_dd">
							<a href="#">渠道主页</a>
						</dd>
						<dd>
							<a href="#">渠道标准管理</a>
						</dd>
						<dd>
							<a href="#">系统通知</a>
						</dd>
						<dd>
							<a href="#">渠道商管理</a>
						</dd>
						<dd>
							<a href="#">渠道商链接</a>
						</dd>
					</dl>

					<dl class="app">
						<dt>
							APP管理<img src="images/left/select_xl01.png">
						</dt>
						<dd class="first_dd">
							<a href="#" nodecode="">App运营商管理</a>
						</dd>
						<dd>
							<a href="#">开放接口管理</a>
						</dd>
						<dd>
							<a href="#">接口类型管理</a>
						</dd>
					</dl>

					<dl class="cloud">
						<dt>
							大数据云平台<img src="images/left/select_xl01.png">
						</dt>
						<dd class="first_dd">
							<a href="#">平台运营商管理</a>
						</dd>
					</dl>

					<dl class="syetem_management">
						<dt>
							系统管理<img src="images/left/select_xl01.png">
						</dt>
						<dd class="first_dd">
							<a href="#">后台用户管理</a>
						</dd>
						<dd>
							<a href="#">角色管理</a>
						</dd>
						<dd>
							<a href="#">客户类型管理</a>
						</dd>
						<dd>
							<a href="#">栏目管理</a>
						</dd>
						<dd>
							<a href="#">微官网模板组管理</a>
						</dd>
						<dd>
							<a href="#">商城模板管理</a>
						</dd>
						<dd>
							<a href="#">微功能管理</a>
						</dd>
						<dd>
							<a href="#">修改用户密码</a>
						</dd>
					</dl>

					<dl class="source">
						<dt>
							素材库管理<img src="images/left/select_xl01.png">
						</dt>
						<dd class="first_dd">
							<a href="#">图片库</a>
						</dd>
						<dd>
							<a href="#">链接库</a>
						</dd>
						<dd>
							<a href="#">推广管理</a>
						</dd>
					</dl>

					<dl class="statistics">
						<dt>
							统计分析<img src="images/left/select_xl01.png">
						</dt>
						<dd class="first_dd">
							<a href="#">客户统计</a>
						</dd>
					</dl>


				</div>
				<div class="Content-Main">
				</div>
			</div>
		</div>
		<div class="Clear">
			<!--如何你上面用到float,下面布局开始前最好清除一下。-->
		</div>
		<div class="Footer"></div>
	</div>
</body>
</html>