package cn.hp.entity;

/**
 * Students entity. @author MyEclipse Persistence Tools
 */

public class Students implements java.io.Serializable {

	// Fields
	private Integer studentsId;
	private Major major;
	private String studentsName;
	private String studentsSex;
	private String studentsMobile;
	private String studentsEmail;
	private String studentsFx;
	private String studentsTeacher;
	private Short studentsAge;
	private String studentsQq;
	private String studentsHomeaddress;
	private String studentsIdno;
	private String studentsIfcadre;
	private String studentsIfadjust;
	private String studentsMajorcourses;
	private String studentsIfjoinactivity;
	private String studentsScholarship;
	private String studentsComputerlanguage;
	private String studentsRelatedqualifications;
	private String studentsPlan;
	private String studentsMethod;
	private String studentsConfidence;
	private String studentsCare;
	private String studentsJob;
	private String studentsPhoto;

	// Constructors

	/** default constructor */
	public Students() {
	}

	/** minimal constructor */
	public Students(Major major, String studentsName, String studentsSex,
			String studentsMobile, String studentsEmail, String studentsFx,
			String studentsTeacher, Short studentsAge, String studentsQq,
			String studentsHomeaddress, String studentsIdno,
			String studentsIfcadre, String studentsIfadjust,
			String studentsMajorcourses, String studentsIfjoinactivity,
			String studentsScholarship, String studentsComputerlanguage,
			String studentsRelatedqualifications, String studentsPlan,
			String studentsMethod, String studentsConfidence,
			String studentsCare, String studentsJob) {
		this.major = major;
		this.studentsName = studentsName;
		this.studentsSex = studentsSex;
		this.studentsMobile = studentsMobile;
		this.studentsEmail = studentsEmail;
		this.studentsFx = studentsFx;
		this.studentsTeacher = studentsTeacher;
		this.studentsAge = studentsAge;
		this.studentsQq = studentsQq;
		this.studentsHomeaddress = studentsHomeaddress;
		this.studentsIdno = studentsIdno;
		this.studentsIfcadre = studentsIfcadre;
		this.studentsIfadjust = studentsIfadjust;
		this.studentsMajorcourses = studentsMajorcourses;
		this.studentsIfjoinactivity = studentsIfjoinactivity;
		this.studentsScholarship = studentsScholarship;
		this.studentsComputerlanguage = studentsComputerlanguage;
		this.studentsRelatedqualifications = studentsRelatedqualifications;
		this.studentsPlan = studentsPlan;
		this.studentsMethod = studentsMethod;
		this.studentsConfidence = studentsConfidence;
		this.studentsCare = studentsCare;
		this.studentsJob = studentsJob;
	}

	/** full constructor */
	public Students(Major major, String studentsName, String studentsSex,
			String studentsMobile, String studentsEmail, String studentsFx,
			String studentsTeacher, Short studentsAge, String studentsQq,
			String studentsHomeaddress, String studentsIdno,
			String studentsIfcadre, String studentsIfadjust,
			String studentsMajorcourses, String studentsIfjoinactivity,
			String studentsScholarship, String studentsComputerlanguage,
			String studentsRelatedqualifications, String studentsPlan,
			String studentsMethod, String studentsConfidence,
			String studentsCare, String studentsJob, String studentsPhoto) {
		this.major = major;
		this.studentsName = studentsName;
		this.studentsSex = studentsSex;
		this.studentsMobile = studentsMobile;
		this.studentsEmail = studentsEmail;
		this.studentsFx = studentsFx;
		this.studentsTeacher = studentsTeacher;
		this.studentsAge = studentsAge;
		this.studentsQq = studentsQq;
		this.studentsHomeaddress = studentsHomeaddress;
		this.studentsIdno = studentsIdno;
		this.studentsIfcadre = studentsIfcadre;
		this.studentsIfadjust = studentsIfadjust;
		this.studentsMajorcourses = studentsMajorcourses;
		this.studentsIfjoinactivity = studentsIfjoinactivity;
		this.studentsScholarship = studentsScholarship;
		this.studentsComputerlanguage = studentsComputerlanguage;
		this.studentsRelatedqualifications = studentsRelatedqualifications;
		this.studentsPlan = studentsPlan;
		this.studentsMethod = studentsMethod;
		this.studentsConfidence = studentsConfidence;
		this.studentsCare = studentsCare;
		this.studentsJob = studentsJob;
		this.studentsPhoto = studentsPhoto;
	}

	// Property accessors

	public Integer getStudentsId() {
		return this.studentsId;
	}

	public void setStudentsId(Integer studentsId) {
		this.studentsId = studentsId;
	}

	public Major getMajor() {
		return this.major;
	}

	public void setMajor(Major major) {
		this.major = major;
	}

	public String getStudentsName() {
		return this.studentsName;
	}

	public void setStudentsName(String studentsName) {
		this.studentsName = studentsName;
	}

	public String getStudentsSex() {
		return this.studentsSex;
	}

	public void setStudentsSex(String studentsSex) {
		this.studentsSex = studentsSex;
	}

	public String getStudentsMobile() {
		return this.studentsMobile;
	}

	public void setStudentsMobile(String studentsMobile) {
		this.studentsMobile = studentsMobile;
	}

	public String getStudentsEmail() {
		return this.studentsEmail;
	}

	public void setStudentsEmail(String studentsEmail) {
		this.studentsEmail = studentsEmail;
	}

	public String getStudentsFx() {
		return this.studentsFx;
	}

	public void setStudentsFx(String studentsFx) {
		this.studentsFx = studentsFx;
	}

	public String getStudentsTeacher() {
		return this.studentsTeacher;
	}

	public void setStudentsTeacher(String studentsTeacher) {
		this.studentsTeacher = studentsTeacher;
	}

	public Short getStudentsAge() {
		return this.studentsAge;
	}

	public void setStudentsAge(Short studentsAge) {
		this.studentsAge = studentsAge;
	}

	public String getStudentsQq() {
		return this.studentsQq;
	}

	public void setStudentsQq(String studentsQq) {
		this.studentsQq = studentsQq;
	}

	public String getStudentsHomeaddress() {
		return this.studentsHomeaddress;
	}

	public void setStudentsHomeaddress(String studentsHomeaddress) {
		this.studentsHomeaddress = studentsHomeaddress;
	}

	public String getStudentsIdno() {
		return this.studentsIdno;
	}

	public void setStudentsIdno(String studentsIdno) {
		this.studentsIdno = studentsIdno;
	}

	public String getStudentsIfcadre() {
		return this.studentsIfcadre;
	}

	public void setStudentsIfcadre(String studentsIfcadre) {
		this.studentsIfcadre = studentsIfcadre;
	}

	public String getStudentsIfadjust() {
		return this.studentsIfadjust;
	}

	public void setStudentsIfadjust(String studentsIfadjust) {
		this.studentsIfadjust = studentsIfadjust;
	}

	public String getStudentsMajorcourses() {
		return this.studentsMajorcourses;
	}

	public void setStudentsMajorcourses(String studentsMajorcourses) {
		this.studentsMajorcourses = studentsMajorcourses;
	}

	public String getStudentsIfjoinactivity() {
		return this.studentsIfjoinactivity;
	}

	public void setStudentsIfjoinactivity(String studentsIfjoinactivity) {
		this.studentsIfjoinactivity = studentsIfjoinactivity;
	}

	public String getStudentsScholarship() {
		return this.studentsScholarship;
	}

	public void setStudentsScholarship(String studentsScholarship) {
		this.studentsScholarship = studentsScholarship;
	}

	public String getStudentsComputerlanguage() {
		return this.studentsComputerlanguage;
	}

	public void setStudentsComputerlanguage(String studentsComputerlanguage) {
		this.studentsComputerlanguage = studentsComputerlanguage;
	}

	public String getStudentsRelatedqualifications() {
		return this.studentsRelatedqualifications;
	}

	public void setStudentsRelatedqualifications(
			String studentsRelatedqualifications) {
		this.studentsRelatedqualifications = studentsRelatedqualifications;
	}

	public String getStudentsPlan() {
		return this.studentsPlan;
	}

	public void setStudentsPlan(String studentsPlan) {
		this.studentsPlan = studentsPlan;
	}

	public String getStudentsMethod() {
		return this.studentsMethod;
	}

	public void setStudentsMethod(String studentsMethod) {
		this.studentsMethod = studentsMethod;
	}

	public String getStudentsConfidence() {
		return this.studentsConfidence;
	}

	public void setStudentsConfidence(String studentsConfidence) {
		this.studentsConfidence = studentsConfidence;
	}

	public String getStudentsCare() {
		return this.studentsCare;
	}

	public void setStudentsCare(String studentsCare) {
		this.studentsCare = studentsCare;
	}

	public String getStudentsJob() {
		return this.studentsJob;
	}

	public void setStudentsJob(String studentsJob) {
		this.studentsJob = studentsJob;
	}

	public String getStudentsPhoto() {
		return this.studentsPhoto;
	}

	public void setStudentsPhoto(String studentsPhoto) {
		this.studentsPhoto = studentsPhoto;
	}

}