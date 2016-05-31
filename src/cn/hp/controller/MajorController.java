package cn.hp.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.hp.dao.MarjorDAO;
import cn.hp.entity.Department;
import cn.hp.entity.Major;

@Controller
public class MajorController {
	@Resource(name = "maJorDAO")
	MarjorDAO mdao;

	@RequestMapping("/toMajor")
	public void toDept(HttpServletRequest request,
			HttpServletResponse response, Department de) {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = null;
		StringBuffer subffer = new StringBuffer();
		String rtnMsg = "";
		try {
			out = response.getWriter();

			List<Major> listmj = mdao.getMarjorList(de);

			subffer.append("[");
			for (Major mj : listmj) {
				subffer.append("{");
				subffer.append("\"mid\":\"" + mj.getMajorId() + "\",");
				subffer.append("\"mname\":\"" + mj.getMajorName() + "\"");
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
