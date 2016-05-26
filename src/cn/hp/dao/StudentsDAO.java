package cn.hp.dao;

import java.util.List;

import cn.hp.entity.Students;

public interface StudentsDAO {
	/**
	 * 增加学生
	 * 
	 * @param stu
	 * @throws Exception
	 */
	public void add(Students stu) throws Exception;

	public void delete(Students stu) throws Exception;

	public void find(Students stu) throws Exception;

	public void update(Students stu) throws Exception;

	/**
	 * 显示全部学生
	 */
	public List<Students> listStudents();
}
