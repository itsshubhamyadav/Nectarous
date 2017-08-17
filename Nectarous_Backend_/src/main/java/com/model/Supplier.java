package com.model;

import java.io.Serializable;
import javax.persistence.*;
import org.springframework.stereotype.Component;

import java.util.HashSet;
import java.util.Set;

@SuppressWarnings("unused")
@Entity
@Table(name="Supplier")

public class Supplier {
		@Id
		private int sid;
		private String supplierName;
		
		@OneToMany(targetEntity=Product.class, fetch=FetchType.EAGER, mappedBy="supplier")
		private Set<Product> products=new HashSet<Product>(0);

		public int getSid() {
			return sid;
		}

		public void setSid(int sid) {
			this.sid = sid;
		}

		public String getSupplierName() {
			return supplierName;
		}

		public void setSupplierName(String supplierName) {
			this.supplierName = supplierName;
		}

		public Set<Product> getProducts() {
			return products;
		}

		public void setProducts(Set<Product> products) {
			this.products = products;
		}

		
}
