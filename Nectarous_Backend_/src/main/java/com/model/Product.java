package com.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@SuppressWarnings("unused")
@Entity
@Table(name="Product")


public class Product implements Serializable {


	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int pid;
	
	
	private String name;
	private String description;
	private Float price;
	private int stock;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="cid")
	private Category category;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="sid")
	private Supplier supplier;
	
	private String imgname1;
	
	private String imgname2;
	private String imgname3;
	
	@Transient
	MultipartFile pimage;
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Float getPrice() {
		return price;
	}
	public void setPrice(Float price) {
		this.price = price;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public Supplier getSupplier() {
		return supplier;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	public String getImgname1() {
		return imgname1;
	}
	public void setImgname1(String imgname1) {
		this.imgname1 = imgname1;
	}
	public String getImgname2() {
		return imgname2;
	}
	public void setImgname2(String imgname2) {
		this.imgname2 = imgname2;
	}
	public String getImgname3() {
		return imgname3;
	}
	public void setImgname3(String imgname3) {
		this.imgname3 = imgname3;
	}

		
}
