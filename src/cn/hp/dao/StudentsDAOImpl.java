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

import cn.hp.entity.School;
import cn.hp.entity.Students;
import cn.hp.util.Page;

@Repository("studentsDAO")
@SuppressWarnings("all")
public class StudentsDAOImpl implements StudentsDAO {
	String hql = "";
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
	 * 显示全部报名学生
	 */
	@Override
	public List<Students> list(final Page page, final String category,
			final String search) {

		return hibernateTemplate.executeFind(new HibernateCallback() {
			@Override
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				List<Students> list = null;

				Query q = null;
				if (category == null && search == null) {
					hql = "from Students order by studentsId";
					q = s.createQuery(hql);
				} else if (category.equals("schoolName") && !search.equals("")) {
					String hql = "from Students a inner join fetch a.major b inner join fetch "
							+ "b.department c inner join fetch c.school d ";
					// String sql =
					// "select students_Id,students_name,students_sex,school_name,"
					// + "major_name,students_fx,students_mobile "
					// + " from(select *from (select *from students s,major m "
					// + "where s.STUDENTS_MAJORID=m.major_id)m,department d "
					// + "where m.department_id=d.department_id) d,school s "
					// + "where d.school_id=s.school_id";
					hql += " where d.schoolName like '%" + search + "%' ";
					// q =
					// s.createSQLQuery(sql).addEntity(Students.class).addEntity(School.class);
					q = s.createQuery(hql);
				} else {
					// hql =
					// "from Students where :category like :search order by studentsId";
					hql = "from Students where 1=1 ";
					if (!search.equals("") && !category.equals("")) {
						hql += " and " + category + " like '%" + search + "%'";
					}
					q = s.createQuery(hql);
				}
				// 设置起点
				q.setFirstResult((page.getCurrentPage() - 1)
						* page.getPageSize());
				// 设置最大显示值
				q.setMaxResults(Integer.parseInt(page.getPageSize().toString()));
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

	/**
	 * 查询单个学生详细信息
	 */
	@Override
	public Students find(Students stu) throws Exception {
		return getHibernateTemplate().get(Students.class, stu.getStudentsId());
	}

	/**
	 * 修改单个学生详细信息
	 */
	@Override
	public void update(Students stu) throws Exception {
		getHibernateTemplate().saveOrUpdate(stu);
	}

	// 查询总条数
	@Override
	public int getCount(final String category, final String search) {
		return hibernateTemplate.execute(new HibernateCallback() {
			@Override
			public Object doInHibernate(Session s) throws HibernateException,
					SQLException {
				String counthql = "";
				if ((category != null) && category.equals("schoolName")) {
					counthql = "select count(a.studentsId)  from Students a inner join   a.major b inner join   "
							+ "b.department c inner join   c.school d ";

					counthql += " where d.schoolName like '%" + search + "%' ";
				} else {
					counthql = "select count(studentsId)  " + hql;
				}
				Query q = s.createQuery(counthql);
				Integer count = Integer.parseInt(q.uniqueResult().toString());
				return count;
			}

		});
	}

	@Override
	public void delAll(String id) throws Exception {
		getHibernateTemplate().delete(
				getHibernateTemplate().get(Students.class, id));

	}
}
