package com.Nectarous_Backend_;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import static org.junit.Assert.*;

import com.daoImpl.SupplierDaoImpl;
import com.model.Supplier;

import junit.framework.TestCase;

public class CheckDao{
	
	@Autowired static AnnotationConfigApplicationContext context;
	static SupplierDaoImpl suppDao;
	@BeforeClass
	public static void intialize() {
		context=new AnnotationConfigApplicationContext();
		System.out.println("AAAA");
		context.scan("com");
		context.refresh();
		System.out.println("AAAA");
		suppDao=(SupplierDaoImpl)context.getBean("supplierDaoImpl");
		
	}
	@Test
	public void suppTestCase() {
		Supplier s=new Supplier();
		s.setSid(321);
		s.setSupplierName("Halwaai");
		suppDao.insertSupplier(s);
		assertEquals(s.getSid(),s.getSid());
	}
}
