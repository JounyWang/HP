package cn.hp.controller;

import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.hp.dao.StudentsDAO;
import cn.hp.entity.Students;
import cn.hp.util.Page;
import cn.hp.util.PageUtil;

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

	// 显示学生信息
	@RequestMapping("/toIndex")
	public String toIndex(HttpServletRequest request, Page page,
			String category, String search) {

		String search2 = null;
		try {
			if (search != null) {
				search2 = new String(search.getBytes("iso-8859-1"), "utf-8");
			}
			request.setCharacterEncoding("UTF-8");
			PageUtil pu = new PageUtil();
			List<Students> listss = studao.list(page, category, search2);
			int recordNum = studao.getCount(category, search2);
			pu.buildPage(page.getCurrentPage(), listss, recordNum);
			HttpSession session = request.getSession();
			session.setAttribute("category", category);
			session.setAttribute("search", search2);
			session.setAttribute("recordNum", recordNum);
			session.setAttribute("pu", pu);

		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		return "table";

	}

	// 编辑学生信息
	@RequestMapping("/update")
	public String update(Students stu, HttpServletRequest request) {
		HttpSession session = request.getSession();
		try {
			studao.update(stu);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "admin-user";
	}

	// 显示详细信息
	@RequestMapping("/find")
	public String find(Students stu, HttpServletRequest request) {
		try {
			HttpSession session = request.getSession();
			Students students = studao.find(stu);
			session.setAttribute("listfd", students);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "admin-user";
	}

	// 删除学生信息
	@RequestMapping("/todelete")
	public String todelete(Students stu, HttpServletRequest request) {
		HttpSession session = request.getSession();
		try {
			studao.del(stu);
			return "redirect:toIndex";
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:toadd";
		}
	}

	// 删除多个学生信息
	@RequestMapping("/delAll")
	public String delAll(Students stu, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String[] delAllStu = request.getParameterValues("stuId");
		try {
			for (String delId : delAllStu) {
				System.out.println("************" + delId);
				studao.delAll(delId);
			}
			return "redirect:toIndex";
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:toIndex";
		}
	}

}
