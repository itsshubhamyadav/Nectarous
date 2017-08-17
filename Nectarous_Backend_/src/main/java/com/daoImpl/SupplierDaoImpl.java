package com.daoImpl;

import com.dao.SupplierDao;
import com.model.Category;
import com.model.Supplier;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@SuppressWarnings("deprecation")
@Repository("supplierDao")
public class SupplierDaoImpl implements SupplierDao {
	@Autowired
	SessionFactory sessionFactory;
	
	public SupplierDaoImpl (SessionFactory sessionFactory) {	
		super();
		this.sessionFactory=sessionFactory;
	}
	
	public void insertSupplier(Supplier supplier) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.saveOrUpdate(supplier);
		session.getTransaction().commit();
		
	}
	public List<Supplier> retrieve()
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		List<Supplier> list=session.createQuery("from Supplier").list();
		session.getTransaction().commit();
		return list;
	}
	
	public Supplier findById(int sid)
	{
		Session session=sessionFactory.openSession();
		Supplier p=null;
		try {
			session.beginTransaction();
			p=session.get(Supplier.class,sid);
			session.getTransaction().commit();
		}
		catch(HibernateException ex){
			ex.printStackTrace();
			session.getTransaction().rollback();
			
		}
		return p;
	}

}
