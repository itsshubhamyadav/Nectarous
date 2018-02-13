package com.daoImpl;


import com.dao.UserDao;
import com.model.Product;
import com.model.User;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository("userDao")
public class UserDaoImpl implements UserDao {
	@Autowired
	SessionFactory sessionFactory;
	
	public UserDaoImpl (SessionFactory sessionFactory) {	
		super();
		this.sessionFactory=sessionFactory;
	}
	
	public void insertUser(User user) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.saveOrUpdate(user);
		session.getTransaction().commit();
		
	}
	
	public User findById(String email)
	{
		Session session=sessionFactory.openSession();
		User p=null;
		try {
			session.beginTransaction();
			p=session.get(User.class,email);
			session.getTransaction().commit();
		}
		catch(HibernateException ex){
			ex.printStackTrace();
			session.getTransaction().rollback();
			
		}
		return p;
	}

}
