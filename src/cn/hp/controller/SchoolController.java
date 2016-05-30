package cn.hp.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.hp.dao.SchoolDAO;
import cn.hp.entity.School;
import cn.hp.entity.Students;

@Controller
public class SchoolController {

	@Resource(name = "schoolDAO")
	SchoolDAO schdao;

	public SchoolDAO getSchdao() {
		return schdao;
	}

	public void setSchdao(SchoolDAO schdao) {
		this.schdao = schdao;
	}

	@RequestMapping("/index")
	public String ajaxServlet(HttpServletRequest request) {
		HttpSession session = request.getSession();
		try {
			List<School> listsh = schdao.serach();
			session.setAttribute("listsh", listsh);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "Index";
	}

}
