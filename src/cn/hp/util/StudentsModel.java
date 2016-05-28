package cn.hp.util;

import java.util.List;

import cn.hp.entity.Students;

public class StudentsModel {
	private List<Students> stuList;

	public StudentsModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public StudentsModel(List<Students> stuList) {
		super();
		this.stuList = stuList;
	}

	public List<Students> getStuList() {
		return stuList;
	}

	public void setStuList(List<Students> stuList) {
		this.stuList = stuList;
	}
}
