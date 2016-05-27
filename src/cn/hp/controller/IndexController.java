package cn.hp.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.hp.dao.StudentsDAO;
import cn.hp.entity.Students;

@Controller
@SuppressWarnings("all")
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

	// 显示报名学生信息
	@RequestMapping("/toIndex")
	public String toIndex(HttpServletRequest request) {
		HttpSession session = request.getSession();

		List<Students> listss = studao.listStudents();

		session.setAttribute("listss", listss);
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

	// 显示详细信息
	public String find(HttpServletRequest request) {
		HttpSession session = request.getSession();
		List<Students> listfd = studao.listStudents();

		session.setAttribute("listfd", listfd);
		return "admin-user";
	}

	// 删除学生信息
	@RequestMapping("/todelete")
	public String todelete(Students stu, HttpServletRequest request) {
		HttpSession session = request.getSession();

		try {
			studao.del(stu);
			System.out.println(stu);
			return "admin-user";
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:toadd";
		}
	}
}
