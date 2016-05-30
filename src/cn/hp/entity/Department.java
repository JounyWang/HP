package cn.hp.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Department entity. @author MyEclipse Persistence Tools
 */

public class Department implements java.io.Serializable {

	// Fields

	private Integer departmentId;
	private School school;
	private String departmentName;
	private Set majors = new HashSet(0);

	// Constructors

	/** default constructor */
	public Department() {
	}

	/** minimal constructor */
	public Department(School school, String departmentName) {
		this.school = school;
		this.departmentName = departmentName;
	}

	/** full constructor */
	public Department(School school, String departmentName, Set majors) {
		this.school = school;
		this.departmentName = departmentName;
		this.majors = majors;
	}

	// Property accessors

	public Integer getDepartmentId() {
		return this.departmentId;
	}

	public void setDepartmentId(Integer departmentId) {
		this.departmentId = departmentId;
	}

	public School getSchool() {
		return this.school;
	}

	public void setSchool(School school) {
		this.school = school;
	}

	public String getDepartmentName() {
		return this.departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	public Set getMajors() {
		return this.majors;
	}

	public void setMajors(Set majors) {
		this.majors = majors;
	}

}