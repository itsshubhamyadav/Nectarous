package com.model;


import com.model.User;
import java.io.Serializable;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@SuppressWarnings("unused")
@Entity
@Table(name="Orders")
public class Orders {
	@Id
	@GeneratedValue
	private int orderId;
	@ManyToOne
	@JoinColumn(name="email")
	private User user;
	
	private String payment;
	private Double total;
	
	public int getOrderId() {
		return orderId;
	}
	public void setOrederId(int orederId) {
		this.orderId = orederId;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public Double getTotal() {
		return total;
	}
	public void setTotal(Double total) {
		this.total = total;
	}
	
	

}
