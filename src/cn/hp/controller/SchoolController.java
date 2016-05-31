package cn.hp.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.hp.dao.SchoolDAO;
import cn.hp.entity.School;

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

	@RequestMapping("/toschoolSerach")
	public String toschoolSerach(HttpServletRequest request,
			HttpServletResponse response) {
		return "Index";
	}

	/**
	 * 加载学校
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/toSchool")
	public void ajaxServlet(HttpServletRequest request,
			HttpServletResponse response) {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = null;
		StringBuffer subffer = new StringBuffer();
		String rtnMsg = "";
		try {
			out = response.getWriter();

			List<School> listsh = schdao.serach();

			subffer.append("[");
			for (School sch : listsh) {
				subffer.append("{");
				subffer.append("\"sid\":\"" + sch.getSchoolId() + "\",");
				subffer.append("\"sname\":\"" + sch.getSchoolName() + "\"");
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
