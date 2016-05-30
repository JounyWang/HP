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
	public List<School> serach(final School school) throws Exception {

		return hibernateTemplate.executeFind(new HibernateCallback() {
			@Override
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {

				List<Department> list = null;
				String hql = "from Department d left join  school s where d.schoolId=?"
						+ " and s.schoolId=d.schoolId";
				Query q = null;
				q = session.createQuery(hql);
				System.out.println(school.getSchoolId());
				q.setParameter(0, school.getSchoolId());
				// q.setInteger("SchoolId", school.getSchoolId());
				list = q.list();
				for (Department li : list) {
					System.out.println("************" + li.getDepartmentName());
				}
				return list;
			}

		});
	}

}
