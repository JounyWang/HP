package cn.hp.entity;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

/**
 * School entity. @author MyEclipse Persistence Tools
 */

public class School implements java.io.Serializable {

	// Fields

	private Integer schoolId;
	private String schoolName;
	private String schoolLocation;
	private String schoolType;
	private Set departments = new HashSet(0);

	// Constructors

	/** default constructor */
	public School() {
	}

	/** minimal constructor */
	public School(String schoolName) {
		this.schoolName = schoolName;
	}

	/** full constructor */
	public School(String schoolName, String schoolLocation, String schoolType,
			Set departments) {
		this.schoolName = schoolName;
		this.schoolLocation = schoolLocation;
		this.schoolType = schoolType;
		this.departments = departments;
	}

	// Property accessors

	public String getSchoolName() {
		return this.schoolName;
	}

	public Integer getSchoolId() {
		return schoolId;
	}

	public void setSchoolId(Integer schoolId) {
		this.schoolId = schoolId;
	}

	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}

	public String getSchoolLocation() {
		return this.schoolLocation;
	}

	public void setSchoolLocation(String schoolLocation) {
		this.schoolLocation = schoolLocation;
	}

	public String getSchoolType() {
		return this.schoolType;
	}

	public void setSchoolType(String schoolType) {
		this.schoolType = schoolType;
	}

	public Set getDepartments() {
		return this.departments;
	}

	public void setDepartments(Set departments) {
		this.departments = departments;
	}

}