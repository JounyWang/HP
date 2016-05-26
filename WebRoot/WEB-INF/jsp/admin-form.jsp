<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Amaze UI Admin form Examples</title>
<meta name="description" content="这是一个form页面">
<meta name="keywords" content="form">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="assets/i/favicon.png">
<link rel="apple-touch-icon-precomposed"
	href="assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="assets/css/amazeui.min.css" />
<link rel="stylesheet" href="assets/css/admin.css">
</head>
<body>
	<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->

	<header class="am-topbar am-topbar-inverse admin-header">
		<div class="am-topbar-brand">
			<strong>Amaze UI</strong> <small>后台管理模板</small>
		</div>

		<button
			class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
			data-am-collapse="{target: '#topbar-collapse'}">
			<span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>
		</button>

		<div class="am-collapse am-topbar-collapse" id="topbar-collapse">

			<ul
				class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
				<li><a href="javascript:;"><span class="am-icon-envelope-o"></span>
						收件箱 <span class="am-badge am-badge-warning">5</span></a></li>
				<li class="am-dropdown" data-am-dropdown><a
					class="am-dropdown-toggle" data-am-dropdown-toggle
					href="javascript:;"> <span class="am-icon-users"></span> 管理员 <span
						class="am-icon-caret-down"></span>
				</a>
					<ul class="am-dropdown-content">
						<li><a href="#"><span class="am-icon-user"></span> 资料</a></li>
						<li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
						<li><a href="#"><span class="am-icon-power-off"></span>
								退出</a></li>
					</ul></li>
				<li class="am-hide-sm-only"><a href="javascript:;"
					id="admin-fullscreen"><span class="am-icon-arrows-alt"></span>
						<span class="admin-fullText">开启全屏</span></a></li>
			</ul>
		</div>
	</header>

	<div class="am-cf admin-main">
		<!-- sidebar start -->
		<div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
			<div class="am-offcanvas-bar admin-offcanvas-bar">
				<ul class="am-list admin-sidebar-list">
					<li><a href="admin-index.html"><span class="am-icon-home"></span>
							首页</a></li>
					<li class="admin-parent"><a class="am-cf"
						data-am-collapse="{target: '#collapse-nav'}"><span
							class="am-icon-file"></span> 页面模块 <span
							class="am-icon-angle-right am-fr am-margin-right"></span></a>
						<ul class="am-list am-collapse admin-sidebar-sub am-in"
							id="collapse-nav">
							<li><a href="admin-user.html" class="am-cf"><span
									class="am-icon-check"></span> 个人资料<span
									class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
							<li><a href="admin-help.html"><span
									class="am-icon-puzzle-piece"></span> 帮助页</a></li>
							<li><a href="admin-gallery.html"><span
									class="am-icon-th"></span> 相册页面<span
									class="am-badge am-badge-secondary am-margin-right am-fr">24</span></a></li>
							<li><a href="admin-log.html"><span
									class="am-icon-calendar"></span> 系统日志</a></li>
							<li><a href="admin-404.html"><span class="am-icon-bug"></span>
									404</a></li>
						</ul></li>
					<li><a href="admin-table.html"><span class="am-icon-table"></span>
							表格</a></li>
					<li><a href="admin-form.html"><span
							class="am-icon-pencil-square-o"></span> 表单</a></li>
					<li><a href="#"><span class="am-icon-sign-out"></span> 注销</a></li>
				</ul>

				<div class="am-panel am-panel-default admin-sidebar-panel">
					<div class="am-panel-bd">
						<p>
							<span class="am-icon-bookmark"></span> 公告
						</p>
						<p>时光静好，与君语；细水流年，与君同。—— Amaze UI</p>
					</div>
				</div>

				<div class="am-panel am-panel-default admin-sidebar-panel">
					<div class="am-panel-bd">
						<p>
							<span class="am-icon-tag"></span> wiki
						</p>
						<p>Welcome to the Amaze UI wiki!</p>
					</div>
				</div>
			</div>
		</div>
		<!-- sidebar end -->

		<!-- content start -->
		<div class="admin-content">
			<div class="admin-content-body">
				<div class="am-cf am-padding am-padding-bottom-0">
					<div class="am-fl am-cf">
						<strong class="am-text-primary am-text-lg">表单</strong> / <small>form</small>
					</div>
				</div>

				<hr>

				<div class="am-tabs am-margin" data-am-tabs>
					<ul class="am-tabs-nav am-nav am-nav-tabs">
						<li class="am-active"><a href="#tab1">基本信息</a></li>
						<li><a href="#tab2">详细描述</a></li>
						<li><a href="#tab3">SEO 选项</a></li>
					</ul>

					<div class="am-tabs-bd">

						<div class="am-tab-panel am-fade am-in am-active" id="tab1">
							<form method="post" class="am-form" action="doadd">
								<div class="am-g am-margin-top"></div>
								<label for="studentsName"
									class="am-u-sm-4 am-u-md-2 am-text-right">姓名:</label>
								<div class="am-u-sm-8 am-u-md-4">
									<input type="text" name="studentsName" id="studentsName"
										value="">
								</div>
								<br /> <br /> <label for="studentsSex"
									class="am-u-sm-4 am-u-md-2 am-text-right">性别:</label>&nbsp;
								&nbsp; <input type="radio" name="studentsSex" id="studentsSex"
									checked="checked" value="男" />男&nbsp; &nbsp; <input
									type="radio" name="studentsSex" id="studentsSex" value="女" />女
								<br /> <br /> <label for="studentsMobile"
									class="am-u-sm-4 am-u-md-2 am-text-right">手机号码:</label>
								<div class="am-u-sm-8 am-u-md-4">
									<input type="text" name="studentsMobile" id="studentsMobile"
										value="">
								</div>
								<br> <br /> <label for="studentsAge"
									class="am-u-sm-4 am-u-md-2 am-text-right">年龄:</label>
								<div class="am-u-sm-8 am-u-md-4">
									<input type="text" name="studentsAge" id="studentsAge" value="">
								</div>
								<br /> <br /> <label for="studentsSchool"
									class="am-u-sm-4 am-u-md-2 am-text-right">学校:</label>
								<div class="am-u-sm-8 am-u-md-4">
									<input type="text" name="studentsSchool" id="studentsSchool"
										value="">
								</div>
								<br /> <br /> <label for="studentsDepartment"
									class="am-u-sm-4 am-u-md-2 am-text-right">院系:</label>
								<div class="am-u-sm-8 am-u-md-4">
									<input type="text" name="studentsDepartment"
										id="studentsDepartment" value="">
								</div>
								<br /> <br /> <label for="studentsMajor"
									class="am-u-sm-4 am-u-md-2 am-text-right">专业:</label>
								<div class="am-u-sm-8 am-u-md-4">
									<input type="text" name="studentsMajor" id="studentsMajor"
										value="">
								</div>
								<br> <br /> <label for="studentsEmail"
									class="am-u-sm-4 am-u-md-2 am-text-right">邮箱:</label>
								<div class="am-u-sm-8 am-u-md-4">
									<input type="email" name="studentsEmail" id="studentsEmail"
										value="">
								</div>
								<br /> <br /> <label for="studentsFx"
									class="am-u-sm-4 am-u-md-2 am-text-right">学习方向:</label>&nbsp;
								&nbsp; <input type="radio" name="studentsFx" id="studentsFx"
									value="软件测试工程师" />软件测试工程师&nbsp; &nbsp; <input type="radio"
									name="studentsFx" id="studentsFx" value=".NET开发工程师" />.NET开发工程师&nbsp;
								&nbsp; <input type="radio" name="studentsFx" id="studentsFx"
									value="软件开发工程师" />java开发工程师&nbsp; &nbsp;
							</form>

						</div>

						<div class="am-tab-panel am-fade" id="tab2">
							<form class="am-form">
								<div class="am-g am-margin-top">
									<div class="am-u-sm-4 am-u-md-2 am-text-right">文章标题</div>
									<div class="am-u-sm-8 am-u-md-4">
										<input type="text" class="am-input-sm">
									</div>
									<div class="am-hide-sm-only am-u-md-6">*必填，不可重复</div>
								</div>

								<div class="am-g am-margin-top">
									<div class="am-u-sm-4 am-u-md-2 am-text-right">文章作者</div>
									<div class="am-u-sm-8 am-u-md-4 am-u-end col-end">
										<input type="text" class="am-input-sm">
									</div>
								</div>

								<div class="am-g am-margin-top">
									<div class="am-u-sm-4 am-u-md-2 am-text-right">信息来源</div>
									<div class="am-u-sm-8 am-u-md-4">
										<input type="text" class="am-input-sm">
									</div>
									<div class="am-hide-sm-only am-u-md-6">选填</div>
								</div>

								<div class="am-g am-margin-top">
									<div class="am-u-sm-4 am-u-md-2 am-text-right">内容摘要</div>
									<div class="am-u-sm-8 am-u-md-4">
										<input type="text" class="am-input-sm">
									</div>
									<div class="am-u-sm-12 am-u-md-6">不填写则自动截取内容前255字符</div>
								</div>

								<div class="am-g am-margin-top-sm">
									<div class="am-u-sm-12 am-u-md-2 am-text-right admin-form-text">
										内容描述</div>
									<div class="am-u-sm-12 am-u-md-10">
										<textarea rows="10" placeholder="请使用富文本编辑插件"></textarea>
									</div>
								</div>

							</form>
						</div>

						<div class="am-tab-panel am-fade" id="tab3">
							<form class="am-form">
								<div class="am-g am-margin-top-sm">
									<div class="am-u-sm-4 am-u-md-2 am-text-right">SEO 标题</div>
									<div class="am-u-sm-8 am-u-md-4 am-u-end">
										<input type="text" class="am-input-sm">
									</div>
								</div>

								<div class="am-g am-margin-top-sm">
									<div class="am-u-sm-4 am-u-md-2 am-text-right">SEO 关键字</div>
									<div class="am-u-sm-8 am-u-md-4 am-u-end">
										<input type="text" class="am-input-sm">
									</div>
								</div>

								<div class="am-g am-margin-top-sm">
									<div class="am-u-sm-4 am-u-md-2 am-text-right">SEO 描述</div>
									<div class="am-u-sm-8 am-u-md-4 am-u-end">
										<textarea rows="4"></textarea>
									</div>
								</div>
							</form>
						</div>

					</div>
				</div>

				<div class="am-margin">
					<button type="button" class="am-btn am-btn-primary am-btn-xs">提交保存</button>
					<button type="button" class="am-btn am-btn-primary am-btn-xs">放弃保存</button>
				</div>
			</div>

			<footer class="admin-content-footer">
				<hr>
				<p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed
					under MIT license.</p>
			</footer>
		</div>
		<!-- content end -->

	</div>

	<a href="#"
		class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu"
		data-am-offcanvas="{target: '#admin-offcanvas'}"></a>

	<footer>
		<hr>
		<p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed under
			MIT license.</p>
	</footer>

	<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

	<!--[if (gte IE 9)|!(IE)]><!-->
	<script src="assets/js/jquery.min.js"></script>
	<!--<![endif]-->
	<script src="assets/js/amazeui.min.js"></script>
	<script src="assets/js/app.js"></script>
</body>
</html>
