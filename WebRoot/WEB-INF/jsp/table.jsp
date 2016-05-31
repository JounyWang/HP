<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<script src="assets/js/jquery.min.js"></script>
<script type="text/javascript">
	function selected() {
		var loc = null;
		var search = document.getElementById("search").value;
		if (document.getElementById("studentsName").selected == true) {
			loc = location.href = "toIndex?category=studentsName&search="
					+ search + "";
		} else if (document.getElementById("studentsSchool").selected == true) {
			loc = location.href = "toIndex?category=studentsSchool&search="
					+ search + "";
		} else if (document.getElementById("studentsSex").selected == true) {
			loc = location.href = "toIndex?category=studentsSex&search="
					+ search + "";
		} else if (document.getElementById("studentsFx").selected == true) {
			loc = location.href = "toIndex?category=studentsFx&search="
					+ search + "";
		}
		return loc;

	}
	function nextPage() {
		var url = selected() + "&currentPage=" + "${pu.page.nextPage}";
		location.href = url;
	}
	function prePage() {
		var url = selected() + "&currentPage=" + "${pu.page.prePage}";
		location.href = url;
	}
	function endPage() {
		var url = selected() + "&currentPage=" + "${pu.page.endPage}";
		location.href = url;
	}
	function indexPage() {
		var url = selected() + "&currentPage=1";
		location.href = url;
	}
	window.onload = function() {
		var cg = "${category}";
		if (cg == "studentsName") {
			document.getElementById("select_id").selectedIndex = 0;
		} else if (cg == "studentsSex") {
			document.getElementById("select_id").selectedIndex = 2;
		} else if (cg == "studentsSchool") {
			document.getElementById("studentsSchool").selected = true;
		} else if (cg == "studentsFx") {
			document.getElementById("select_id").selectedIndex = 3;
		}
	}
</script>

<base href="<%=basePath%>">

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>惠普洛阳人才及产业基地</title>
<meta name="description" content="这是一个 table 页面">
<meta name="keywords" content="table">
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
			<strong><a href="toIndex">惠普-洛阳</a></strong> <small>实训后台管理</small>
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
						<li><a href="toIndex"><span class="am-icon-user"></span>
								资料</a></li>
						<li><a href="toIndex"><span class="am-icon-cog"></span>
								设置</a></li>
						<li><a href="toIndex"><span class="am-icon-power-off"></span>
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
					<li><a href="href="toIndex""><span class="am-icon-home"></span>
							首页</a></li>
					<li class="admin-parent"><a class="am-cf"
						data-am-collapse="{target: '#collapse-nav'}"><span
							class="am-icon-file"></span> 系统模块 <span
							class="am-icon-angle-right am-fr am-margin-right"></span></a>
						<ul class="am-list am-collapse admin-sidebar-sub am-in"
							id="collapse-nav">
							<li><a href="toIndex" class="am-cf"><span
									class="am-icon-check"></span> 修改密码<span
									class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
							<!--<li><a href="admin-help.html"><span class="am-icon-puzzle-piece"></span> 帮助页</a></li>
            <li><a href="admin-gallery.html"><span class="am-icon-th"></span> 相册页面<span class="am-badge am-badge-secondary am-margin-right am-fr">24</span></a></li>
            <li><a href="admin-log.html"><span class="am-icon-calendar"></span> 系统日志</a></li>
            <li><a href="admin-404.html"><span class="am-icon-bug"></span> 404</a></li>-->
						</ul></li>

					<li class="admin-parent"><a href="toIndex" class="am-cf"
						data-am-collapse="{target: '#collapse-nav'}"><span
							class="am-icon-file"></span> 院校模块 <span
							class="am-icon-angle-right am-fr am-margin-right"></span></a>
						<ul class="am-list am-collapse admin-sidebar-sub am-in"
							id="collapse-nav">
							<li><a href="toIndex" class="am-cf"><span
									class="am-icon-table"></span> 报名学生信息<span
									class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
							<!--<li><a href="admin-help.html"><span class="am-icon-puzzle-piece"></span> 帮助页</a></li>
            <li><a href="admin-gallery.html"><span class="am-icon-th"></span> 相册页面<span class="am-badge am-badge-secondary am-margin-right am-fr">24</span></a></li>
            <li><a href="admin-log.html"><span class="am-icon-calendar"></span> 系统日志</a></li>
            <li><a href="admin-404.html"><span class="am-icon-bug"></span> 404</a></li>-->
						</ul></li>


					<li><a href="toIndex"><span
							class="am-icon-pencil-square-o"></span> 作业提交</a></li>
					<li><a href="toIndex"><span
							class="am-icon-pencil-square-o"></span> 档案填写</a></li>
					<li><a href="toIndex"><span
							class="am-icon-pencil-square-o"></span> 统计报表</a></li>
					<li><a href="toIndex"><span class="am-icon-sign-out"></span>
							注销</a></li>
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
						<strong class="am-text-primary am-text-lg">报名学生信息</strong>
					</div>
				</div>

				<hr>

				<div class="am-g">
					<div class="am-u-sm-12 am-u-md-6">
						<div class="am-btn-toolbar">
							<div class="am-btn-group am-btn-group-xs">
								<button type="button" onclick="location.href='toadd'"
									class="am-btn am-btn-default">
									<span class="am-icon-plus"></span> 添加学生
								</button>
								<button type="button" onclick="location.href='toIndex'"
									class="am-btn am-btn-default">
									<span class="am-icon-archive"></span> 查看全部
								</button>
							</div>
						</div>
					</div>
					<div class="am-u-sm-12 am-u-md-3">
						<div class="am-form-group">
							<select id="select_id">
								<option id="studentsName" value="studentsName">姓名</option>
								<option id="studentsSchool" value="studentsSchool">学校</option>
								<option id="studentsSex" value="studentsSex">性别</option>
								<option id="studentsFx" value="studentsFx">学习方向</option>

							</select>
						</div>
					</div>
					<div class="am-u-sm-12 am-u-md-3">
						<div class="am-input-group am-input-group-sm">
							<input type="text" class="am-form-field" id="search"
								value="${search}"> <span class="am-input-group-btn">
								<button class="am-btn am-btn-default" type="button"
									onclick="selected()">搜索</button>
							</span>
						</div>
					</div>
				</div>

				<div class="am-g">
					<div class="am-u-sm-12">
						<form class="am-form">
							<table
								class="am-table am-table-striped am-table-hover table-main">
								<thead>
									<tr>
										<th class="table-check"><input type="checkbox" /></th>
										<th class="table-id">ID</th>
										<th class="table-title">姓名</th>
										<th class="table-type">性别</th>
										<th class="table-type">学校</th>
										<th class="table-author am-hide-sm-only">专业</th>
										<th class="table-date am-hide-sm-only">学习方向</th>
										<th class="table-date am-hide-sm-only">手机号码</th>
										<th class="table-set">操作</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="Ss" items="${pu.list}" varStatus="i">
										<tr>
											<!-- <c:if test="checkbox='true'">name="id"></c:if>> -->
											<td><input type="checkbox" value="${Ss.studentsId}" /></td>
											<td>${Ss.studentsId}</td>
											<td class="am-hide-sm-only">${Ss.studentsName}</td>
											<td class="am-hide-sm-only">${Ss.studentsSex}</td>
											<td class="am-hide-sm-only">${Ss.getMajor().getDepartment().getSchool().getSchoolName()}</td>
											<td class="am-hide-sm-only">${Ss.getMajor().getMajorName()}</td>
											<td class="am-hide-sm-only">${Ss.studentsFx}</td>
											<td class="am-hide-sm-only">${Ss.studentsMobile}</td>
											<td>
												<div class="am-btn-toolbar">
													<div class="am-btn-group am-btn-group-xs">
														<button type="button"
															class="am-btn am-btn-default am-btn-xs am-text-secondary"
															onclick="location.href='find?studentsId=${Ss.studentsId}'">
															<span class="am-icon-pencil-square-o"></span>修改&nbsp;/&nbsp;查看
														</button>

														<button type="button"
															class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"
															onclick="location.href='todelete?studentsId=${Ss.studentsId}'">
															<span class="am-icon-trash-o"></span> 删除
														</button>
													</div>
												</div>
											</td>
										</tr>
									</c:forEach>
									<!--
                <td class="am-hide-sm-only">测试1号</td>
                <td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
                -->



								</tbody>
							</table>
							<div class="am-cf">
								共 <strong style="color: red">${recordNum}</strong> 名学生
								<div class="am-fr">
									<ul class="am-pagination">
										<!-- 	<li><a href="toIndex?currentPage=${pu.page.currentPage}">第${pu.page.nextPage-1}页</a></li> -->
										<li><input type="button" onclick="indexPage()" value="首页"></li>
										<li><input type="button" onclick="prePage()" value="前一页"></li>
										<li><input type="button" onclick="nextPage()" value="后一页"></li>
										<li><input type="button" onclick="endPage()" value="末页"></li>
									</ul>
								</div>
							</div>
							<hr />
							<p>注：.....</p>
						</form>
					</div>

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
	<!--<![endif]-->
	<script src="assets/js/amazeui.min.js"></script>
	<script src="assets/js/app.js"></script>
</body>

</html>
