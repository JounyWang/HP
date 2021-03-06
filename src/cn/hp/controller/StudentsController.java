package cn.hp.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.portlet.bind.annotation.ResourceMapping;

import cn.hp.dao.StudentsDAO;
import cn.hp.entity.Students;

@Controller
public class StudentsController {
	@Resource(name = "studentsDAO")
	StudentsDAO studao;

	public StudentsDAO getStudao() {
		ContextLoaderListener ccc;
		return studao;
	}

	public void setStudao(StudentsDAO studao) {
		this.studao = studao;
	}

	@RequestMapping("/toadd")
	public String toadd() {
		return "admin-form";
	}

	@RequestMapping("/doadd")
	public String doadd(Students stu, HttpServletRequest request) {

		HttpSession session = request.getSession();
		// System.out.println(stu.getMajor().getMajorId());
		System.out.println(request.getParameter("********************"
				+ "studentsMajor"));
		try {
			studao.addStudent(stu);
			return "redirect:toIndex";
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("REGSTATE", "添加失败");
			return "redirect:toadd";
		}

	}
}
