package cn.hp.dao;

import java.util.List;

import cn.hp.entity.Students;
import cn.hp.util.Page;

public interface StudentsDAO {
	/**
	 * 增加学生
	 * 
	 * @param stu
	 * @throws Exception
	 */
	public void addStudent(Students stu) throws Exception;

	public void del(Students stu) throws Exception;

	public void delAll(String id) throws Exception;

	public Students find(Students stu) throws Exception;

	public void update(Students stu) throws Exception;

	public int getCount(String category, String search);

	/**
	 * 显示全部学生
	 */
	public List<Students> list(final Page page, String category, String search);
}
