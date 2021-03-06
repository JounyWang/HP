package cn.hp.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

	@RequestMapping("/toDept")
	public void toDept(HttpServletRequest request,
			HttpServletResponse response, School sch) {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = null;
		StringBuffer subffer = new StringBuffer();
		String rtnMsg = "";
		try {
			out = response.getWriter();

			List<Department> listde = depdao.serach(sch);

			subffer.append("[");
			for (Department de : listde) {
				subffer.append("{");
				subffer.append("\"did\":\"" + de.getDepartmentId() + "\",");
				subffer.append("\"dname\":\"" + de.getDepartmentName() + "\"");
				subffer.append("},");
			}
			rtnMsg = subffer.substring(0, subffer.length() - 1) + "]";
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		out.print(rtnMsg);

	}

}
