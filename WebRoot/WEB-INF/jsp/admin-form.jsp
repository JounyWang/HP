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
<title>惠普洛阳人才及产业基地</title>
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
			<strong><a href="toIndex">惠普-洛阳</a></strong> <small>人才及产业基地欢迎您</small>
		</div>



		<div class="am-collapse am-topbar-collapse" id="topbar-collapse">

			<ul
				class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
				<li class="am-hide-sm-only"><a href="javascript:;"
					id="admin-fullscreen"><span class="am-icon-arrows-alt"></span>
						<span class="admin-fullText">开启全屏</span></a></li>
			</ul>
		</div>
	</header>

	<div class="am-cf admin-main">
		<!-- content start -->

		<div class="admin-content">
			<form method="post" class="am-form" action="doadd"
				onsubmit="return checkAll()">
				<div class="admin-content-body">
					<div class="am-cf am-padding am-padding-bottom-0">
						<div class="am-fl am-cf">
							<strong class="am-text-primary am-text-lg">填写报名信息</strong><small></small>
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
										value="" onblur="checkstudentsName()">
								</div>
								<span id=msgName style="font-size:13px; color:#0e90d2;"></span><br />
								<div class="am-g am-margin-top">
									<!-- <label for="studentsPhoto"
										class="am-u-sm-4 am-u-md-2 am-text-right">照片:</label>
										<input class="am-u-sm-8" type="file" name="studentsPhoto" id="studentsPhoto"
											value=""> -->
								</div>
								<label for="studentsAge"
									class="am-u-sm-4 am-u-md-2 am-text-right">年龄:</label>
								<div class="am-u-sm-8 am-u-md-4">
									<input type="text" name="studentsAge" id="studentsAge" value=""
										onblur="checkAge()">
								</div>
								<span id=msgAge style="font-size:13px; color:#0e90d2;"></span> <br />
								<br /> <label for="studentsSex"
									class="am-u-sm-4 am-u-md-2 am-text-right">性别:</label>&nbsp;
								&nbsp; <input type="radio" name="studentsSex" id="studentsSex"
									checked="checked" value="男" />男&nbsp; &nbsp; <input
									type="radio" name="studentsSex" id="studentsSex" value="女" />女
								<br /> <br /> <label for="studentsMobile"
									class="am-u-sm-4 am-u-md-2 am-text-right">手机号码:</label>
								<div class="am-u-sm-8 am-u-md-4">
									<input type="text" name="studentsMobile" id="studentsMobile"
										value="" onblur="checkstudentsMobile()">
								</div>
								<span id=msgPhone style="font-size:13px; color:#0e90d2;"></span>
								<br> <br /> <label for="studentsSchool"
									class="am-u-sm-4 am-u-md-2 am-text-right">学校:</label>
								<div class="am-u-sm-8 am-u-md-4">
									<select name="studentsSchool" id="schoolId"
										onchange="loadYx(this)">
									</select>
								</div>
								<br /> <br /> <label for="studentsDepartment"
									class="am-u-sm-4 am-u-md-2 am-text-right">院系:</label>
								<div class="am-u-sm-8 am-u-md-4">

									<select name="studentsDepartment" id="studentsDepartment"
										onchange="loadZz(this)">
									</select>
									<!--<input type="text" name="studentsDepartment"
				id="studentsDepartment" value="" placeholder="请输入院系"> -->
								</div>
								<br /> <br /> <label for="studentsMajor"
									class="am-u-sm-4 am-u-md-2 am-text-right">专业:</label>
								<div class="am-u-sm-8 am-u-md-4">

									<select name="major.majorId" id="studentsMajor">
									</select>
									<!-- <input type="text" name="studentsMajor" id="studentsMajor"
					value="" placeholder="请输入专业"> -->
								</div>
								<br> <br /> <label for="studentsQq"
									class="am-u-sm-4 am-u-md-2 am-text-right">常用QQ:</label>
								<div class="am-u-sm-8 am-u-md-4">
									<input type="text" name="studentsQq" id="studentsQq" value=""
										onblur="checkstudentsQq()">
								</div>
								<span id=msgQq style="font-size:13px; color:#0e90d2;"></span> <br>
								<br /> <label for="studentsTeacher"
									class="am-u-sm-4 am-u-md-2 am-text-right">惠普指导老师:</label>
								<div class="am-u-sm-8 am-u-md-4">
									<input type="text" name="studentsTeacher" id="studentsTeacher"
										value="" onblur="checkstudentsTeacher()">
								</div>
								<span id=msgTeacher style="font-size:13px; color:#0e90d2;"></span>
								<br> <br /> <label for="studentsIdno"
									class="am-u-sm-4 am-u-md-2 am-text-right">身份证号码:</label>
								<div class="am-u-sm-8 am-u-md-4">
									<input type="text" name="studentsIdno" id="studentsIdno"
										value="" onblur="checkstudentsIdno()">
								</div>
								<span id=msgIdno style="font-size:13px; color:#0e90d2;"></span>
								<br> <br /> <label for="studentsEmail"
									class="am-u-sm-4 am-u-md-2 am-text-right">电子邮箱:</label>
								<div class="am-u-sm-8 am-u-md-4">
									<input type="email" name="studentsEmail" id="studentsEmail"
										value="" onblur="checkstudentsEmail()">
								</div>
								<span id=msgEmail style="font-size:13px; color:#0e90d2;"></span>
								<br /> <br /> <label for="studentsIfcadre"
									class="am-u-sm-4 am-u-md-2 am-text-right">是否学生干部:</label>&nbsp;
								&nbsp; <input type="radio" name="studentsIfcadre"
									id="studentsIfcadre" checked="checked" value="是" />是&nbsp;
								&nbsp; <input type="radio" name="studentsIfcadre"
									id="studentsIfcadre" value="否" />否 <br /> <br /> <label
									for="studentsHomeaddress"
									class="am-u-sm-4 am-u-md-2 am-text-right">家庭住址:</label>
								<div class="am-u-sm-2 am-u-md-4" style="float:left">
									<input type="text" name="studentsHomeaddress"
										id="studentsHomeaddress" value=""
										onblur="checkstudentsHomeaddress()">
								</div>
								<span id=msgHomeaddress style="font-size:13px; color:#0e90d2;"></span>
								<br /> <br /> <label for="Code"
									class="am-u-sm-4 am-u-md-2 am-text-right">验证码：</label>
								<div class="am-u-sm-2 am-u-md-4" style="float:left">
									<input class="text" type="text" name="veryCode" id="veryCode"
										onfocus="FocusItem()" placeholder="请输入验证码"
										onblur="CheckItem();" /><span id=msgCode
										style="font-size:13px; color:#0e90d2; float:left;"></span> <img
										id="veryCode1" src="SafeCode" align="center" />&nbsp;&nbsp;&nbsp;&nbsp;<label
										style="color:red"><a href="javascript:changeCode()">看不清</a></label>
								</div>
							</div>

							<div class="am-tab-panel am-fade" id="tab2">
								<div class="am-g am-margin-top"></div>
								<label for="studentsFx"
									class="am-u-sm-4 am-u-md-2 am-text-right">HP专业方向:</label>&nbsp;
								&nbsp; <input type="radio" name="studentsFx" id="studentsFx"
									value="软件测试" checked="checked" />软件测试&nbsp; &nbsp; <input
									type="radio" name="studentsFx" id="studentsFx" value=".NET开发" />.NET开发&nbsp;
								&nbsp; <input type="radio" name="studentsFx" id="studentsFx"
									value="java开发" />java开发&nbsp; &nbsp; <br /> <br /> <label
									for="studentsIfadjust"
									class="am-u-sm-4 am-u-md-2 am-text-right">是否接受调剂:</label>&nbsp;
								&nbsp; <input type="radio" name="studentsIfadjust"
									id="studentsIfadjust" checked="checked" value="是" />是&nbsp;
								&nbsp; <input type="radio" name="studentsIfadjust"
									id="studentsIfadjust" value="否" />否 <br /> <br /> <label
									for="studentsMajorcourses"
									class="am-u-sm-4 am-u-md-2 am-text-right">主要专业课程:</label>
								<div class="am-u-sm-8 am-u-md-4">
									<input type="text" name="studentsMajorcourses"
										id="studentsMajorcourses" value="" placeholder="1-3门"
										onblur="checkstudentsMajorcourses()">
								</div>
								<span id=msgMajorcourses style="font-size:13px; color:#0e90d2;"></span>
								<br /> <br /> <label for="studentsIfjoinactivity"
									class="am-u-sm-4 am-u-md-2 am-text-right">参加的计算机类活动:</label>
								<div class="am-u-sm-8 am-u-md-4">
									<input type="text" name="studentsIfjoinactivity"
										id="studentsIfjoinactivity" placeholder="项目/比赛"
										onblur="checkstudentsIfjoinactivity()" />
								</div>
								<span id=msgIfjoinactivity
									style="font-size:13px; color:#0e90d2;"></span> <br /> <br />
								<br /> <label for="studentsScholarship"
									class="am-u-sm-4 am-u-md-2 am-text-right">是否得过奖学金:</label>&nbsp;
								&nbsp; <input type="radio" name="studentsScholarship"
									id="studentsScholarship" checked="checked" value="是" />是&nbsp;
								&nbsp; <input type="radio" name="studentsScholarship"
									id="studentsScholarship" value="否" />否 <br /> <br /> <label
									for="studentsRelatedqualifications"
									class="am-u-sm-4 am-u-md-2 am-text-right">计算机相关资质:</label>
								<div class="am-u-sm-8 am-u-md-4">
									<input type="text" name="studentsRelatedqualifications"
										id="studentsRelatedqualifications" placeholder="无/相关证书"
										onblur="checkstudentsRelatedqualifications()" />
								</div>
								<span id=msgRelatedqualifications
									style="font-size:13px; color:#0e90d2;"></span> <br /> <br />
								<label for="studentsComputerlanguage"
									class="am-u-sm-4 am-u-md-2 am-text-right">计算机语言类相关课程:</label>
								<div class="am-u-sm-8 am-u-md-4" style="float:left">
									<input type="text" name="studentsComputerlanguage"
										id="studentsComputerlanguage" value="" placeholder="无/语言名称"
										onblur="checkstudentsComputerlanguage()">
								</div>
								<span id=msgComputerlanguage
									style="font-size:13px; color:#0e90d2;"></span>
							</div>

							<div class="am-tab-panel am-fade" id="tab3">
								<div class="am-g am-margin-top-sm"></div>
								<label for="studentsMethod"
									class="am-u-sm-4 am-u-md-2 am-text-right">何种方式得知HP实训:</label>&nbsp;
								&nbsp; <input type="radio" name="studentsMethod"
									id="studentsMethod" value="校内宣传" />校内宣传 &nbsp; &nbsp; <input
									type="radio" name="studentsMethod" id="studentsMethod"
									value="学校推荐" />学校推荐&nbsp; &nbsp; <input type="radio"
									name="studentsMethod" id="studentsMethod" value="学长推荐" />学长推荐&nbsp;
								&nbsp; <input type="radio" name="studentsMethod"
									id="studentsMethod" value="其他" />其他&nbsp; &nbsp; <input
									type="radio" name="studentsMethod" id="studentsMethod"
									value="从未听说" />从未听说&nbsp; &nbsp; <br /> <br /> <br /> <label
									for="studentsPlan" class="am-u-sm-4 am-u-md-2 am-text-right">大四规划:</label>&nbsp;
								&nbsp; <input type="radio" name="studentsPlan" id="studentsPlan"
									value="准备考研" />准备考研 &nbsp; &nbsp; <input type="radio"
									name="studentsPlan" id="studentsPlan" value="实习就业" />实习就业&nbsp;
								&nbsp; <input type="radio" name="studentsPlan" id="studentsPlan"
									value="自主创业" />自主创业&nbsp; &nbsp; <input type="radio"
									name="studentsPlan" id="studentsPlan" value="出国深造" />出国深造&nbsp;
								&nbsp; <input type="radio" name="studentsPlan" id="studentsPlan"
									value="其他" />其他&nbsp; &nbsp; <br /> <br /> <label
									for="studentsConfidence"
									class="am-u-sm-4 am-u-md-2 am-text-right">对自己找到满意工作的信心:</label>&nbsp;
								&nbsp; <input type="radio" name="studentsConfidence"
									id="studentsConfidence" value="没把握" />没把握 &nbsp; &nbsp; <input
									type="radio" name="studentsConfidence" id="studentsConfidence"
									value="碰运气" />碰运气&nbsp; &nbsp; <input type="radio"
									name="studentsConfidence" id="studentsConfidence" value="有一定把握" />有一定把握&nbsp;
								&nbsp; <input type="radio" name="studentsConfidence"
									id="studentsConfidence" value="非常有把握" />非常有把握&nbsp; &nbsp; <br />
								<br /> <br /> <label for="studentsCare"
									class="am-u-sm-4 am-u-md-2 am-text-right"> 参加实训的顾虑:</label>&nbsp;
								&nbsp; <input type="radio" name="studentsCare" id="studentsCare"
									value="费用" />费用 &nbsp; &nbsp; <input type="radio"
									name="studentsCare" id="studentsCare" value="课程" />课程&nbsp;
								&nbsp; <input type="radio" name="studentsCare" id="studentsCare"
									value="师资" />师资&nbsp; &nbsp; <input type="radio"
									name="studentsCare" id="studentsCare" value="实习创业就业" />实习创业就业&nbsp;
								&nbsp; <input type="radio" name="studentsCare" id="studentsCare"
									value="其他" />其他&nbsp; &nbsp; <br /> <br /> <label
									for="studentsJob" class="am-u-sm-4 am-u-md-2 am-text-right">
									希望从事哪类岗位:</label>&nbsp; &nbsp; <input type="radio" name="studentsJob"
									id="studentsJob" value="研发测试" />研发测试 &nbsp; &nbsp; <input
									type="radio" name="studentsJob" id="studentsJob" value="商务支撑" />商务支撑&nbsp;
								&nbsp; <input type="radio" name="studentsJob" id="studentsJob"
									value="工程实施" />工程实施&nbsp; &nbsp; <input type="radio"
									name="studentsJob" id="studentsJob" value="质量控制" />质量控制&nbsp;
								&nbsp; <input type="radio" name="studentsJob" id="studentsJob"
									value="项目管理" />项目管理&nbsp; &nbsp;
							</div>
						</div>

					</div>
				</div>
				<div class="am-margin">
					<input type="submit" value="提交保存"
						class="am-btn am-btn-primary am-btn-xs" />
				</div>
			</form>
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
	<script src="assets/js/formcheck.js"></script>

	<script type="text/javascript">
		$(function() {
			$.ajax({
				url : "toSchool",
				type : "post",
				dataType : "json",
				success : rtnSchool
			});
		});
		function rtnSchool(data) {
			/*$("#nametips").html(data);*/
			var op1 = "<option value='0'>---请选择学校---</option>";
			for (var i = 0; i < data.length; i++) {
				//alert(data[i].sid+"---"+data[i].sname);
				op1 += "<option value='"+data[i].sid+"'>";
				op1 += data[i].sname;
				op1 += "</option>";
			}
			$("#schoolId").html(op1);
		}

		function loadYx(obj) {
			$.ajax({
				url : "toDept?schoolId=" + obj.value,
				type : "post",
				dataType : "json",
				success : function(data) {
					var op2 = "<option value='0'>---请选择院系---</option>";
					for (var i = 0; i < data.length; i++) {
						//alert(data[i].sid+"---"+data[i].sname);
						op2 += "<option value='"+data[i].did+"'>";
						op2 += data[i].dname;
						op2 += "</option>";
					}
					$("#studentsDepartment").html(op2);

				}
			});
		}
		function loadZz(obj) {
			$.ajax({
				url : "toMajor?departmentId=" + obj.value,
				type : "post",
				dataType : "json",
				success : function(data) {
					var op3 = "<option value='0'>---请选择专业---</option>";
					for (var i = 0; i < data.length; i++) {
						//alert(data[i].sid+"---"+data[i].sname);
						op3 += "<option value='"+data[i].mid+"'>";
						op3 += data[i].mname;
						op3 += "</option>";
					}
					$("#studentsMajor").html(op3);

				}
			});
		}
	</script>

</body>
</html>
