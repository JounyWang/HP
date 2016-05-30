package cn.hp.dao;

import java.util.List;

import cn.hp.entity.School;

public interface SchoolDAO {
	/**
	 * 查询学校的信息
	 * @param sch
	 * @return
	 * @throws Exception
	 */
	public List<School> serach() throws Exception;
}
