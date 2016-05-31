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

import cn.hp.entity.Department;
import cn.hp.entity.Major;

@Repository("maJorDAO")
@SuppressWarnings("all")
public class MarjorDAOImpl implements MarjorDAO {

	@Resource(name = "hibernateTemplate")
	HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public List<Major> getMarjorList(final Department de) {
		return hibernateTemplate.executeFind(new HibernateCallback() {
			@Override
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {

				List<Major> list = null;
				String hql = "from Major where department.departmentId=? ";
				Query q = null;
				q = session.createQuery(hql);
				q.setParameter(0, de.getDepartmentId());
				list = q.list();
				return list;
			}

		});
	}
}
