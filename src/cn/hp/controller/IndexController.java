package cn.hp.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.net.ssl.HttpsURLConnection;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.hp.dao.StudentsDAO;
import cn.hp.entity.Students;

@Controller
public class IndexController {
	// 报名学生信息
	@Resource(name = "studentsDAO")
	StudentsDAO studao;

	public StudentsDAO getStudao() {
		return studao;
	}

	public void setStudao(StudentsDAO studao) {
		this.studao = studao;
	}

	// 删除学生信息
	@RequestMapping("/todele")
	public String todele(HttpServletRequest request) {
		HttpSession session = request.getSession();
		List<Students> listdl = studao.listStudents();

		session.setAttribute("listdl", listdl);
		return "table";
	}

	// 编辑学生信息
	@RequestMapping("/update")
	public String update(HttpServletRequest request) {
		HttpSession session = request.getSession();
		List<Students> listupd = studao.listStudents();

		session.setAttribute("listupd", listupd);
		return "admin-user";
	}

	@RequestMapping("/toIndex")
	public String toIndex(HttpServletRequest request) {
		HttpSession session = request.getSession();

		List<Students> listss = studao.listStudents();

		session.setAttribute("listss", listss);
		return "table";

	}
}
