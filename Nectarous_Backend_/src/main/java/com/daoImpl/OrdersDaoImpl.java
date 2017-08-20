package com.daoImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.ProductDao;
import com.model.Cart;
import com.model.Category;
import com.model.Orders;
import com.model.Product;
import com.model.User;

@SuppressWarnings("deprecation")
@Repository("ordersDao")
public class OrdersDaoImpl {
	@Autowired
	SessionFactory sessionFactory;
	
	public OrdersDaoImpl(SessionFactory sessionFactory)
	{
		super();
		this.sessionFactory=sessionFactory;	
	}
	
	public void insertOrders(Orders orders)
	{
		Session session= sessionFactory.openSession();
		session.beginTransaction();
		session.persist(orders);
		session.getTransaction().commit();
	}

	
}
