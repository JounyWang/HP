package cn.hp.entity;

import java.math.BigDecimal;

/**
 * Major entity. @author MyEclipse Persistence Tools
 */

public class Major implements java.io.Serializable {

	// Fields

	private Integer majorId;
	private Department department;
	private String majorName;

	// Constructors

	/** default constructor */
	public Major() {
	}

	/** full constructor */
	public Major(Department department, String majorName) {
		this.department = department;
		this.majorName = majorName;
	}

	// Property accessors

	public Department getDepartment() {
		return this.department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public Integer getMajorId() {
		return majorId;
	}

	public void setMajorId(Integer majorId) {
		this.majorId = majorId;
	}

	public String getMajorName() {
		return this.majorName;
	}

	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}

}