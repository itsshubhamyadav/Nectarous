package com.model;

import java.io.Serializable;
import javax.persistence.*;

import org.springframework.stereotype.Component;

import java.util.HashSet;
import java.util.Set;

@SuppressWarnings("unused")
@Entity
@Table(name="Category")

public class Category {
	@Id
	private int cid;
	private String name;
	
	@OneToMany(targetEntity=Product.class, fetch=FetchType.EAGER , mappedBy="category")
	private Set<Product> products=new HashSet<Product>(0);
	
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Set<Product> getProducts() {
		return products;
	}
	public void setProducts(Set<Product> products) {
		this.products = products;
	}
	
	
	
	

}
