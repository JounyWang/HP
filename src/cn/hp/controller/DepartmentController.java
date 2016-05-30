package cn.hp.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.hp.dao.DepartmentDAO;
import cn.hp.entity.Department;
import cn.hp.entity.School;

@Controller
public class DepartmentController {
	@Resource(name = "departmentDAO")
	DepartmentDAO depdao;

	public DepartmentDAO getDepdao() {
		return depdao;
	}

	public void setDepdao(DepartmentDAO depdao) {
		this.depdao = depdao;
	}

	@RequestMapping("/ajaxController")
	public void ajaxController(School school, HttpServletRequest request) {

		HttpSession session = request.getSession();
		try {
			List<School> listde = depdao.serach(school);
			session.setAttribute("listde", listde);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
