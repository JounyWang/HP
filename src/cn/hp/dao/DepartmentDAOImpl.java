package cn.hp.dao;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import cn.hp.entity.Department;
import cn.hp.entity.School;
import cn.hp.entity.Students;

@Repository("departmentDAO")
@SuppressWarnings("all")
public class DepartmentDAOImpl implements DepartmentDAO {

	@Resource(name = "hibernateTemplate")
	HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public List<Department> serach(final School school) throws Exception {

		return hibernateTemplate.executeFind(new HibernateCallback() {
			@Override
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {

				List<Department> list = null;
				String hql = "from Department where school.schoolId=?";
				Query q = null;
				q = session.createQuery(hql);
				q.setParameter(0, school.getSchoolId());
				list = q.list();
				return list;
			}

		});
	}

}
