package cn.hp.dao;

import java.util.List;

import cn.hp.entity.Department;
import cn.hp.entity.Major;

public interface MarjorDAO {

	public List<Major> getMarjorList(Department de);

}
