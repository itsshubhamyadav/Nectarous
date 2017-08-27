package com.config;

import java.util.Properties;
import javax.sql.DataSource;


import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.daoImpl.CartDaoImpl;
import com.daoImpl.CategoryDaoImpl;
import com.daoImpl.OrdersDaoImpl;
import com.daoImpl.ProductDaoImpl;
import com.daoImpl.SupplierDaoImpl;
import com.daoImpl.UserDaoImpl;
import com.model.Cart;
import com.model.Category;
import com.model.Orders;
import com.model.Product;
import com.model.Supplier;
import com.model.User;


@Configuration
@ComponentScan("com.*")
@EnableTransactionManagement
public class hibernateConfig{

@Autowired
@Bean(name="dataSource")
public DataSource getH2DataSource()
{
	
System.out.println("Data Source Method");
DriverManagerDataSource dataSource = new DriverManagerDataSource();
dataSource.setDriverClassName("org.h2.Driver");
dataSource.setUrl("jdbc:h2:tcp://localhost/~/test");
dataSource.setUsername("sa");
dataSource.setPassword("");

System.out.println("Data Source Created");
return dataSource;
}

private Properties getHibernateProperties() {
Properties properties = new Properties();
properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
properties.put("hibernate.hbm2ddl.auto", "update");
properties.put("hibernate.show_sql", "true");
return properties;
}

@Autowired
@Bean(name = "sessionFactory")
public SessionFactory getSessionFactory(DataSource dataSource) {
LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
sessionBuilder.addProperties(getHibernateProperties());
sessionBuilder.addAnnotatedClass(User.class);
sessionBuilder.addAnnotatedClass(Category.class);
sessionBuilder.addAnnotatedClass(Product.class);
sessionBuilder.addAnnotatedClass(Supplier.class);
sessionBuilder.addAnnotatedClass(Orders.class);
sessionBuilder.addAnnotatedClass(Cart.class);
//sessionBuilder.scanPackages("com.model");
System.out.println("sessionFactory");
return sessionBuilder.buildSessionFactory();
}




@Autowired
@Bean(name="userDaoImpl")
public UserDaoImpl getUserDAO(SessionFactory sessionFactory)
{
	System.out.println("UserDaoImpl");
return new UserDaoImpl(sessionFactory);
}

@Autowired
@Bean(name="categoryDaoImpl")
public CategoryDaoImpl getCategoryDAO(SessionFactory sessionFactory)
{
	System.out.println("CategoryDaoImpl");
return new CategoryDaoImpl(sessionFactory);
}

@Autowired
@Bean(name="supplierDaoImpl")
public SupplierDaoImpl getSupplierDAO(SessionFactory sessionFactory)
{
	System.out.println("SupplierDaoImpl");
return new SupplierDaoImpl(sessionFactory);
}

@Autowired
@Bean(name="productDaoImpl")
public ProductDaoImpl getProductDAO(SessionFactory sessionFactory)
{
	System.out.println("ProductDaoImpl");
return new ProductDaoImpl(sessionFactory);
}

@Autowired
@Bean(name="ordersDaoImpl")
public OrdersDaoImpl getOrdersDAO(SessionFactory sessionFactory)
{
	System.out.println("OrdersDaoImpl");
return new OrdersDaoImpl(sessionFactory);
}

@Autowired
@Bean(name="cartDaoImpl")
public CartDaoImpl getCartDAO(SessionFactory sessionFactory)
{
	System.out.println("CartDaoImpl");
return new CartDaoImpl(sessionFactory);
}

@Autowired
@Bean(name = "transactionManager")
public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);

return transactionManager;
}

}