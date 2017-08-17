package com.daoImpl;


import com.dao.CategoryDao;
import com.model.Cart;
import com.model.Category;
import com.model.Product;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@SuppressWarnings("deprecation")
@Repository("cartDao")
public class CartDaoImpl {
	@Autowired
	SessionFactory sessionFactory;
	
	public CartDaoImpl(SessionFactory sessionFactory)
	{
		super();
		this.sessionFactory=sessionFactory;	
	}
	
	public void insertCategory(Cart cart)
	{
		Session session= sessionFactory.openSession();
		session.beginTransaction();
		session.persist(cart);
		session.getTransaction().commit();
	}
	
	public List<Cart> findCartById(String userId)
	{
		Session session=sessionFactory.openSession();
		List<Cart> cr=null;
		try {
			session.beginTransaction();
			cr=(List<Cart>)session.createQuery("from Cart where userMailId=: email").setString("email",userId).list();
			session.getTransaction().commit();
		}
		catch(HibernateException ex){
			ex.printStackTrace();
			session.getTransaction().rollback();
			
		}
		return cr;
	}
	
	public Cart getCartById(int cartId,String userEmail)
	{
		Session session=sessionFactory.openSession();
		Cart cr=null;
		session.beginTransaction();
		cr=(Cart) session.createQuery("from Cart where userMailId= :email and cartProductId= :id")
				.setString("email",userEmail).setInteger("id", cartId).uniqueResult();   
		session.getTransaction().commit();
		return cr;
	}
	
	public void deleteCart(int cartId) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Cart cart=(Cart)session.get(Cart.class,cartId);
		session.delete(cart);
		session.getTransaction().commit();
		
	}
	
	public void insert(Cart cr) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.saveOrUpdate(cr);
		session.getTransaction().commit();
		
	}

	
	public void update(Cart cr) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.update(cr);
		session.getTransaction().commit();
		
	}

}
