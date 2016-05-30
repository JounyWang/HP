<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
</head>
</head>
<script type="text/javascript" src="assets/js/jquery.min.js"></script>

<script type="text/javascript">
	function ajaxquery() {
		var schoolId = $("#schoolId").val();
		$.ajax({
			url : "ajaxController",
			type : "post",
			data : "schoolId=" + schoolId,
			success : callback
		});
	}

	function callback(data) {
		/*$("#nametips").html(data);*/
	}
</script>

<body>
	<label for="studentsSchool" class="am-u-sm-4 am-u-md-2 am-text-right">学校:</label>
	<div class="am-u-sm-8 am-u-md-4">
		<select name="studentsSchool" id="schoolId" onchange="ajaxquery()">
			<option>---请选择学校---</option>
			<c:forEach items="${listsh}" var="listsh">
				<option value="${listsh.schoolId}" id="schoolId=${listsh.schoolId }">${listsh.schoolName}</option>
			</c:forEach>
		</select>
	</div>
	<label for="studentsDepartment"
		class="am-u-sm-4 am-u-md-2 am-text-right">院系:</label>
	<div class="am-u-sm-8 am-u-md-4">

		<select name="studentsDepartment" id="studentsDepartment">
			<option>---请选择院系---</option>
			<c:forEach items="${listde}" var="listde">
				<option value="${listde.departmentName}">${listde.departmentName}</option>
			</c:forEach>
		</select>
		<!--<input type="text" name="studentsDepartment"
				id="studentsDepartment" value="" placeholder="请输入院系"> -->
	</div>
	<label for="studentsMajor" class="am-u-sm-4 am-u-md-2 am-text-right">专业:</label>
	<div class="am-u-sm-8 am-u-md-4">

		<select name="studentsMajor" id="studentsMajor">
			<option value="0">---请选择专业---</option>
		</select>
		<!-- <input type="text" name="studentsMajor" id="studentsMajor"
					value="" placeholder="请输入专业"> -->
	</div>
</body>
</html>
