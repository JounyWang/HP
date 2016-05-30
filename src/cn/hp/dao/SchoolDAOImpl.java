package cn.hp.dao;

import java.sql.SQLException;
import java.util.ArrayList;
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

@Repository("schoolDAO")
@SuppressWarnings("all")
public class SchoolDAOImpl implements SchoolDAO {

	@Resource(name = "hibernateTemplate")
	HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public List<School> serach() throws Exception {
		return hibernateTemplate.executeFind(new HibernateCallback() {
			@Override
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {

				List<Students> list = null;
				String hql = "from School";
				Query q = null;
				q = session.createQuery(hql);
				list = q.list();
				return list;
			}

		});
	}

}
