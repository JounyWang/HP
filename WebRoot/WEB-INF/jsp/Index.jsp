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

<body>
	<label for="studentsSchool" class="am-u-sm-4 am-u-md-2 am-text-right">学校:</label>
	<div class="am-u-sm-8 am-u-md-4">
		<select name="studentsSchool" id="schoolId" onchange="loadYx(this)">
			<option>---请选择学校---</option>

		</select>
	</div>
	<label for="studentsDepartment"
		class="am-u-sm-4 am-u-md-2 am-text-right">院系:</label>
	<div class="am-u-sm-8 am-u-md-4">

		<select name="studentsDepartment" id="studentsDepartment" onchange="loadZz(this)">
			<option>---请选择院系---</option>
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
