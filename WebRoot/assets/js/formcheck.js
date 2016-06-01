var i = 0;
function changeCode() {
	i++;
	document.getElementById("veryCode1").src = 'SafeCode?t=' + i;
}
function T(id) {
	return document.getElementById(id);
}
// 姓名非空及格式验证
// 中文姓名支持**·**形式
// 姓名中不能包含数字
function checkstudentsName() {
	var reg = /^[a-zA-Z]|([\u4e00-\u9fa5]+·?[\u4e00-\u9fa5]+)$/;
	var strName = T("studentsName").value;
	T("msgName").innerHTML = "";
	if (strName == "") {
		T("msgName").innerHTML = "用户名不能为空";
		return false;
	}
	if (reg.test(strName) == false) {
		T("msgName").innerHTML = "请输入正确的中文姓名";
		return false;
	}
	return true;
}

// 年龄范围验证
// 年龄范围应在15-69岁
function checkAge() {
	var reg = /^[2-6][0-9]|1[5-9]$/;
	var strAge = T("studentsAge").value;
	T("msgAge").innerHTML = "";
	if (strAge == "") {
		T("msgAge").innerHTML = "年龄不能为空";
		return false;
	}
	if (reg.test(strAge) == false) {
		T("msgAge").innerHTML = "请输入正确的年龄范围";
		return false;
	}
	return true;
}

// 手机号非空验证
function checkstudentsMobile() {
	var reg = /^(13[0-9]|14[0-9]|15[0-9]|17[0-9]|18[0-9])\d{8}$/;
	var strTel = T("studentsMobile").value;
	T("msgPhone").innerHTML = "";
	if (strTel == "") {
		T("msgPhone").innerHTML = "电话号码不能为空";
		return false;
	}
	if (reg.test(strTel) == false) {
		T("msgPhone").innerHTML = "手机号码格式错误！";
		return false;
	}
	return true;
}
// 指导老师非空验证
function checkstudentsTeacher() {
	var strTeacher = T("studentsTeacher").value;
	T("msgTeacher").innerHTML = "";
	if (strTeacher == "") {
		T("msgTeacher").innerHTML = "老师不能为空";
		return false;
	}
	return true;
}
// 身份证号码非空验证
function checkstudentsIdno() {
	var reg = /^(^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d$)|(^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])((\d{4})|\d{3}[Xx])$)$/;
	var strId = T("studentsIdno").value;
	T("msgIdno").innerHTML = "";
	if (strId == "") {
		T("msgIdno").innerHTML = "身份证不能为空";
		return false;
	}
	if (reg.test(strId) == false) {
		T("msgIdno").innerHTML = "身份证号码格式错误！";
	}
	return true;
}
// QQ号非空验证
function checkstudentsQq() {
	var reg = /^\d{5,12}$/;
	var strQq = T("studentsQq").value;
	T("msgQq").innerHTML = "";
	if (strQq == "") {
		T("msgQq").innerHTML = "QQ不能为空";
		return false;
	}
	if (reg.test(strQq) == false) {
		T("msgQq").innerHTML = "QQ号码格式错误！";
		return true;
	}
	return true;
}
// 邮箱非空验证
function checkstudentsEmail() {
	var reg = /^\w+@\w+.[a-zA-Z]{2,3}(.[a-zA-Z]{2,3})?$/;
	var strEmail = T("studentsEmail").value;
	T("msgEmail").innerHTML = "";
	if (strEmail == "") {
		T("msgEmail").innerHTML = "电子邮箱不能为空";
		return false;
	}
	if (reg.test(strEmail) == false) {
		T("msgEmail").innerHTML = "邮箱格式错误！";
		return false;
	}
	return true;
}
// 家庭住址非空验证
function checkstudentsHomeaddress() {
	var strHome = T("studentsHomeaddress").value;
	T("msgHomeaddress").innerHTML = "";
	if (strHome == "") {
		T("msgHomeaddress").innerHTML = "家庭住址不能为空";
		return false;
	}
	return true;
}
// 验证码非空验证
function CheckItem() {

	var strCode = T("veryCode").value;
	T("msgCode").innerHTML = "";
	if (strCode == "") {
		T("msgCode").innerHTML = "验证码不能为空";
		return false;
	}
	return true;
}
// 主要专业课程非空验证
function checkstudentsMajorcourses() {
	var strMajorcourses = T("studentsMajorcourses").value;
	T("msgMajorcourses").innerHTML = "";
	if (strMajorcourses == "") {
		T("msgMajorcourses").innerHTML = "主要专业课程不能为空";
		return false;
	}
	return true;
}
// 计算机类活动非空验证
function checkstudentsIfjoinactivity() {
	var stractivity = T("studentsIfjoinactivity").value;
	T("msgIfjoinactivity").innerHTML = "";
	if (stractivity == "") {
		T("msgIfjoinactivity").innerHTML = "计算机类活动不能为空，没有写“无”";
		return false;
	}
	return true;
}
// 计算机相关资质非空验证
function checkstudentsRelatedqualifications() {
	var strRelated = T("studentsRelatedqualifications").value;
	T("msgRelatedqualifications").innerHTML = "";
	if (strRelated == "") {
		T("msgRelatedqualifications").innerHTML = "计算机类相关资质不能为空，没有写“无”";
		return false;
	}
	return true;
}
// 计算机语言类相关课程非空验证
function checkstudentsComputerlanguage() {
	var strlanguage = T("studentsComputerlanguage").value;
	T("msgComputerlanguage").innerHTML = "";
	if (strlanguage == "") {
		T("msgComputerlanguage").innerHTML = "计算机语言类相关课程不能为空，没有写“无”";
		return false;
	}
	return true;
}

function checkAll() {
	if (checkstudentsName() && checkstudentsMobile() && checkAge()
			&& checkstudentsTeacher() && checkstudentsIdno()
			&& checkstudentsQq() && checkstudentsEmail()
			&& checkstudentsHomeaddress() && CheckItem()
			&& checkstudentsMajorcourses() && checkstudentsIfjoinactivity()
			&& checkstudentsRelatedqualifications()
			&& checkstudentsComputerlanguage()) {
		return true;
	} else {
		return false;
	}
}