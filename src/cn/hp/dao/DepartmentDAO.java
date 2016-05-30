package cn.hp.dao;

import java.util.List;

import cn.hp.entity.Department;
import cn.hp.entity.School;

public interface DepartmentDAO 
{
	/**
	 * 查询专业
	 * @return
	 * @throws Exception
	 */
	public List<School> serach(School school) throws Exception;
}
