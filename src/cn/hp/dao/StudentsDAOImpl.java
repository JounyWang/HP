package cn.hp.dao;

import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import cn.hp.entity.Students;

@Repository("studentsDAO")
@SuppressWarnings("all")
public class StudentsDAOImpl implements StudentsDAO {

	@Resource(name = "hibernateTemplate")
	HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	/**
	 * 添加报名学生
	 */
	@Override
	public void addStudent(Students stu) throws Exception {

		try {
			getHibernateTemplate().save(stu);
		} catch (Exception e) {
			throw new Exception(e);
		}

	}

	/**
	 * 修改报名学生信息
	 * 
	 * @throws Exception
	 */
	/*
	 * public List<Students> update(final Students stu) throws Exception {
	 * 
	 * return hibernateTemplate.executeFind(new HibernateCallback() {
	 * 
	 * @Override public Object doInHibernate(Session s) throws
	 * HibernateException, SQLException {
	 * 
	 * List<Students> list = null; String hql =
	 * "from Students where StudentsId =?"; Query q = s.createQuery(hql);
	 * q.setParameter(0, stu.getStudentsId()); q.setFirstResult(0);
	 * q.setMaxResults(4); list = q.list(); return list; } }); }
	 */
	/**
	 * 显示全部报名学生
	 */
	public List<Students> listStudents() {

		return hibernateTemplate.executeFind(new HibernateCallback() {

			@Override
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				List<Students> list = null;
				String hql = "from Students";
				Query q = s.createQuery(hql);
				q.setFirstResult(0);
				q.setMaxResults(4);
				list = q.list();
				return list;
			}
		});
	}

	/**
	 * 删除报名学生
	 * 
	 * @throws Exception
	 */
	@Override
	public void del(Students stu) throws Exception {
		// TODO Auto-generated method stub
		try {
			getHibernateTemplate().delete(
					getHibernateTemplate().get(Students.class,
							stu.getStudentsId()));
		} catch (Exception e) {
			throw new Exception(e);
		}
	}

	@Override
	public void find(Students stu) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(Students stu) throws Exception {
		// TODO Auto-generated method stub

	}
}
