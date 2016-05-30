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
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Amaze UI Admin user Examples</title>
<meta name="description" content="这是一个 user 页面">
<meta name="keywords" content="user">
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
						<strong class="am-text-primary am-text-lg">个人资料</strong> / <small>Personal
							information</small>
					</div>
				</div>

				<hr />

				<div class="am-g">
					<div class="am-u-sm-12 am-u-md-4 am-u-md-push-8"></div>
					<div class="admin-content">
						<form method="post" class="am-form"
							action="update?studentsId=${listfd.studentsId}">
							<div class="admin-content-body">
								<div class="am-cf am-padding am-padding-bottom-0">
									<div class="am-fl am-cf">
										<strong class="am-text-primary am-text-lg">表单</strong> / <small>form</small>
									</div>
								</div>

								<hr>

								<div class="am-tabs am-margin" data-am-tabs>
									<ul class="am-tabs-nav am-nav am-nav-tabs">
										<li class="am-active"><a href="toadd#tab1">个人基本信息</a></li>
										<li><a href="toadd#tab2">个人学业信息</a></li>
										<li><a href="toadd#tab3">信息调研</a></li>
									</ul>

									<div class="am-tabs-bd">
										<div class="am-tab-panel am-fade am-in am-active" id="tab1">

											<div class="am-g am-margin-top"></div>
											<label for="studentsName"
												class="am-u-sm-4 am-u-md-2 am-text-right">姓名:</label>
											<div class="am-u-sm-8 am-u-md-4">
												<input type="text" name="studentsName" id="studentsName"
													value="${listfd.studentsName}">
											</div>


											<br /> <br /> <label for="studentsAge"
												class="am-u-sm-4 am-u-md-2 am-text-right">年龄:</label>
											<div class="am-u-sm-8 am-u-md-4">
												<input type="text" name="studentsAge" id="studentsAge"
													value="${listfd.studentsAge}">
											</div>
											<br /> <br /> <label for="studentsSex"
												class="am-u-sm-4 am-u-md-2 am-text-right">性别:</label>&nbsp;
											&nbsp; <input type="radio" name="studentsSex"
												id="studentsSex" value="男"
												<c:if test="${listfd.studentsSex=='男'}">checked="checked"</c:if> />男&nbsp;
											&nbsp; <input type="radio" name="studentsSex"
												id="studentsSex" value="女"
												<c:if test="${listfd.studentsSex=='女'}">checked="checked"</c:if> />女
											<br /> <br /> <label for="studentsMobile"
												class="am-u-sm-4 am-u-md-2 am-text-right">手机号码:</label>
											<div class="am-u-sm-8 am-u-md-4">
												<input type="text" name="studentsMobile" id="studentsMobile"
													value="${listfd.studentsMobile}">
											</div>
											<br> <br /> <label for="studentsSchool"
												class="am-u-sm-4 am-u-md-2 am-text-right">学校:</label>
											<div class="am-u-sm-8 am-u-md-4">
												<input type="text" name="studentsSchool" id="studentsSchool"
													value="${listfd.studentsSchool}">
											</div>
											<br /> <br /> <label for="studentsDepartment"
												class="am-u-sm-4 am-u-md-2 am-text-right">院系:</label>
											<div class="am-u-sm-8 am-u-md-4">
												<input type="text" name="studentsDepartment"
													id="studentsDepartment"
													value="${listfd.studentsDepartment}">
											</div>
											<br /> <br /> <label for="studentsMajor"
												class="am-u-sm-4 am-u-md-2 am-text-right">专业:</label>
											<div class="am-u-sm-8 am-u-md-4">
												<input type="text" name="studentsMajor" id="studentsMajor"
													value="${listfd.studentsMajor}">
											</div>
											<br> <br /> <label for="studentsQq"
												class="am-u-sm-4 am-u-md-2 am-text-right">常用QQ:</label>
											<div class="am-u-sm-8 am-u-md-4">
												<input type="text" name="studentsQq" id="studentsQq"
													value="${listfd.studentsQq}">
											</div>
											<br> <br /> <label for="studentsTeacher"
												class="am-u-sm-4 am-u-md-2 am-text-right">老师:</label>
											<div class="am-u-sm-8 am-u-md-4">
												<input type="text" name="studentsTeacher"
													id="studentsTeacher" value="${listfd.studentsTeacher}">
											</div>
											<br> <br /> <label for="studentsIdno"
												class="am-u-sm-4 am-u-md-2 am-text-right">身份证号码:</label>
											<div class="am-u-sm-8 am-u-md-4">
												<input type="text" name="studentsIdno" id="studentsIdno"
													value="${listfd.studentsIdno}">
											</div>
											<br> <br /> <label for="studentsEmail"
												class="am-u-sm-4 am-u-md-2 am-text-right">电子邮箱:</label>
											<div class="am-u-sm-8 am-u-md-4">
												<input type="email" name="studentsEmail" id="studentsEmail"
													value="${listfd.studentsEmail}">
											</div>
											<br /> <br /> <label for="studentsIfcadre"
												class="am-u-sm-4 am-u-md-2 am-text-right">是否学生干部:</label>&nbsp;
											&nbsp; <input type="radio" name="studentsIfcadre"
												id="studentsIfcadre"
												<c:if test="${listfd.studentsIfcadre=='是'}">checked="checked"</c:if>
												value="是" />是&nbsp; &nbsp; <input type="radio"
												name="studentsIfcadre" id="studentsIfcadre"
												<c:if test="${listfd.studentsIfcadre=='否'}">checked="checked"</c:if>
												value="否" />否 <br /> <br /> <label
												for="studentsHomeaddress"
												class="am-u-sm-4 am-u-md-2 am-text-right">家庭住址:</label>
											<div class="am-u-sm-2 am-u-md-4" style="float:left">
												<input type="text" name="studentsHomeaddress"
													id="studentsHomeaddress"
													value="${listfd.studentsHomeaddress}">
											</div>
										</div>

										<div class="am-tab-panel am-fade" id="tab2">
											<div class="am-g am-margin-top"></div>
											<label for="studentsFx"
												class="am-u-sm-4 am-u-md-2 am-text-right">HP专业方向:</label>&nbsp;
											&nbsp; <input type="radio" name="studentsFx" id="studentsFx"
												value="软件测试工程师"
												<c:if test="${listfd.studentsFx=='软件测试'}">checked="checked"</c:if> />软件测试&nbsp;
											&nbsp; <input type="radio" name="studentsFx" id="studentsFx"
												<c:if test="${listfd.studentsFx=='.NET开发'}">checked="checked"</c:if>
												value=".NET开发工程师" />.NET开发&nbsp; &nbsp; <input type="radio"
												name="studentsFx" id="studentsFx"
												<c:if test="${listfd.studentsFx=='java开发'}">checked="checked"</c:if>
												value="软件开发工程师" />java开发&nbsp; &nbsp; <br /> <br /> <label
												for="studentsIfadjust"
												class="am-u-sm-4 am-u-md-2 am-text-right">是否接受调剂:</label>&nbsp;
											&nbsp; <input type="radio" name="studentsIfadjust"
												<c:if test="${listfd.studentsIfadjust=='是'}">checked="checked"</c:if>
												id="studentsIfadjust" checked="checked" value="是" />是&nbsp;
											&nbsp; <input type="radio" name="studentsIfadjust"
												<c:if test="${listfd.studentsIfadjust=='否'}">checked="checked"</c:if>
												id="studentsIfadjust" value="否" />否 <br /> <br /> <label
												for="studentsMajorcourses"
												class="am-u-sm-4 am-u-md-2 am-text-right">主要专业课程:</label>
											<div class="am-u-sm-8 am-u-md-4">
												<input type="text" name="studentsMajorcourses"
													id="studentsMajorcourses"
													value="${listfd.studentsMajorcourses}"
													placeholder="请输入1-3门主要的专业课程">
											</div>
											<br /> <br /> <label for="studentsIfjoinactivity"
												class="am-u-sm-4 am-u-md-2 am-text-right">是否参与过计算机类活动:</label>
											<div class="am-u-sm-8 am-u-md-4">
												<input type="text" name="studentsIfjoinactivity"
													id="studentsIfjoinactivity"
													value="${listfd.studentsIfjoinactivity}"
													placeholder="无/参加过的项目或比赛" />
											</div>
											<br /> <br /> <br /> <label for="studentsScholarship"
												class="am-u-sm-4 am-u-md-2 am-text-right">是否得过奖学金:</label>&nbsp;
											&nbsp; <input type="radio" name="studentsScholarship"
												<c:if test="${listfd.studentsScholarship=='是'}">checked="checked"</c:if>
												id="studentsScholarship" checked="checked" value="是" />是&nbsp;
											&nbsp; <input type="radio" name="studentsScholarship"
												<c:if test="${listfd.studentsScholarship=='否'}">checked="checked"</c:if>
												id="studentsScholarship" value="否" />否 <br /> <br /> <label
												for="studentsRelatedqualifications"
												class="am-u-sm-4 am-u-md-2 am-text-right">计算机相关资质:</label>
											<div class="am-u-sm-8 am-u-md-4">
												<input type="text" name="studentsRelatedqualifications"
													id="studentsRelatedqualifications"
													value="${listfd.studentsRelatedqualifications}"
													placeholder="无/相关证书名字" />
											</div>
											<br /> <br /> <label for="studentsComputerlanguage"
												class="am-u-sm-4 am-u-md-2 am-text-right">计算机语言类相关课程:</label>
											<div class="am-u-sm-8 am-u-md-4" style="float:left">
												<input type="text" name="studentsComputerlanguage"
													id="studentsComputerlanguage"
													value="${listfd.studentsComputerlanguage}"
													placeholder="无/语言名称">
											</div>
										</div>

										<div class="am-tab-panel am-fade" id="tab3">
											<div class="am-g am-margin-top-sm"></div>
											<label for="studentsMethod"
												class="am-u-sm-4 am-u-md-2 am-text-right">何种方式得知HP实训:</label>&nbsp;
											&nbsp; <input type="radio" name="studentsMethod"
												<c:if test="${listfd.studentsMethod=='校内宣传'}">checked="checked"</c:if>
												id="studentsMethod" value="校内宣传" />校内宣传 &nbsp; &nbsp; <input
												type="radio" name="studentsMethod" id="studentsMethod"
												<c:if test="${listfd.studentsMethod=='学校推荐'}">checked="checked"</c:if>
												value="学校推荐" />学校推荐&nbsp; &nbsp; <input type="radio"
												<c:if test="${listfd.studentsMethod=='学长推荐'}">checked="checked"</c:if>
												name="studentsMethod" id="studentsMethod" value="学长推荐" />学长推荐&nbsp;
											&nbsp; <input type="radio" name="studentsMethod"
												<c:if test="${listfd.studentsMethod=='其他'}">checked="checked"</c:if>
												id="studentsMethod" value="其他" />其他&nbsp; &nbsp; <input
												type="radio" name="studentsMethod" id="studentsMethod"
												<c:if test="${listfd.studentsMethod=='从未听说'}">checked="checked"</c:if>
												value="从未听说" />从未听说&nbsp; &nbsp; <br /> <br /> <br /> <label
												for="studentsPlan" class="am-u-sm-4 am-u-md-2 am-text-right">大四规划:</label>&nbsp;
											&nbsp; <input type="radio" name="studentsPlan"
												<c:if test="${listfd.studentsPlan=='准备考研'}">checked="checked"</c:if>
												id="studentsPlan" value="准备考研" />准备考研 &nbsp; &nbsp; <input
												type="radio" name="studentsPlan" id="studentsPlan"
												<c:if test="${listfd.studentsPlan=='实习就业'}">checked="checked"</c:if>
												value="实习就业" />实习就业&nbsp; &nbsp; <input type="radio"
												<c:if test="${listfd.studentsPlan=='自主创业'}">checked="checked"</c:if>
												name="studentsPlan" id="studentsPlan" value="自主创业" />自主创业&nbsp;
											&nbsp; <input type="radio" name="studentsPlan"
												<c:if test="${listfd.studentsPlan=='出国深造'}">checked="checked"</c:if>
												id="studentsPlan" value="出国深造" />出国深造&nbsp; &nbsp; <input
												type="radio" name="studentsPlan" id="studentsPlan"
												<c:if test="${listfd.studentsPlan=='其他'}">checked="checked"</c:if>
												value="其他" />其他&nbsp; &nbsp; <br /> <br /> <label
												for="studentsConfidence"
												class="am-u-sm-4 am-u-md-2 am-text-right">找到满意工作的信心:</label>&nbsp;
											&nbsp; <input type="radio" name="studentsConfidence"
												<c:if test="${listfd.studentsConfidence=='没把握'}">checked="checked"</c:if>
												id="studentsConfidence" value="没把握" />没把握 &nbsp; &nbsp; <input
												type="radio" name="studentsConfidence"
												<c:if test="${listfd.studentsConfidence=='碰运气'}">checked="checked"</c:if>
												id="studentsConfidence" value="碰运气" />碰运气&nbsp; &nbsp; <input
												type="radio" name="studentsConfidence"
												<c:if test="${listfd.studentsConfidence=='有一定把握'}">checked="checked"</c:if>
												id="studentsConfidence" value="有一定把握" />有一定把握&nbsp; &nbsp;
											<input type="radio" name="studentsConfidence"
												<c:if test="${listfd.studentsConfidence=='非常有把握'}">checked="checked"</c:if>
												id="studentsConfidence" value="非常有把握" />非常有把握&nbsp; &nbsp;
											<br /> <br /> <br /> <label for="studentsCare"
												class="am-u-sm-4 am-u-md-2 am-text-right"> 参加实训的顾虑:</label>&nbsp;
											&nbsp; <input type="radio" name="studentsCare"
												<c:if test="${listfd.studentsCare=='费用'}">checked="checked"</c:if>
												id="studentsCare" value="费用" />费用 &nbsp; &nbsp; <input
												type="radio" name="studentsCare" id="studentsCare"
												<c:if test="${listfd.studentsCare=='课程'}">checked="checked"</c:if>
												value="课程" />课程&nbsp; &nbsp; <input type="radio"
												<c:if test="${listfd.studentsCare=='师资'}">checked="checked"</c:if>
												name="studentsCare" id="studentsCare" value="师资" />师资&nbsp;
											&nbsp; <input type="radio" name="studentsCare"
												<c:if test="${listfd.studentsCare=='实习创业就业'}">checked="checked"</c:if>
												id="studentsCare" value="实习创业就业" />实习创业就业&nbsp; &nbsp; <input
												type="radio" name="studentsCare" id="studentsCare"
												<c:if test="${listfd.studentsCare=='其他'}">checked="checked"</c:if>
												value="其他" />其他&nbsp; &nbsp; <br /> <br /> <label
												for="studentsJob" class="am-u-sm-4 am-u-md-2 am-text-right">
												希望从事哪类岗位:</label>&nbsp; &nbsp; <input type="radio"
												<c:if test="${listfd.studentsJob=='研发测试'}">checked="checked"</c:if>
												name="studentsJob" id="studentsJob" value="研发测试" />研发测试
											&nbsp; &nbsp; <input type="radio" name="studentsJob"
												<c:if test="${listfd.studentsJob=='商务支撑'}">checked="checked"</c:if>
												id="studentsJob" value="商务支撑" />商务支撑&nbsp; &nbsp; <input
												type="radio" name="studentsJob" id="studentsJob"
												<c:if test="${listfd.studentsJob=='工程实施'}">checked="checked"</c:if>
												value="工程实施" />工程实施&nbsp; &nbsp; <input type="radio"
												<c:if test="${listfd.studentsJob=='质量控制'}">checked="checked"</c:if>
												name="studentsJob" id="studentsJob" value="质量控制" />质量控制&nbsp;
											&nbsp; <input type="radio" name="studentsJob"
												<c:if test="${listfd.studentsJob=='项目管理'}">checked="checked"</c:if>
												id="studentsJob" value="项目管理" />项目管理&nbsp; &nbsp;
										</div>

									</div>

								</div>
							</div>
							<div class="am-margin">
								<input type="submit" class="am-btn am-btn-primary am-btn-xs"
									value="提交保存" />
								<button type="button" class="am-btn am-btn-primary am-btn-xs">放弃保存</button>
							</div>
						</form>
					</div>

					<!--  
        <div class="am-form-group">
              <div class="am-u-sm-9 am-u-sm-push-3">
                <button type="button" class="am-btn am-btn-primary" onclick="location.href='toIndex'">保存修改</button>
              </div>
            </div>
         -->
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


	<a href="#"
		class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu"
		data-am-offcanvas="{target: '#admin-offcanvas'}"></a>

	<footer>
		<hr>
		<p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed under
			MIT license.</p>
	</footer>

	<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
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
