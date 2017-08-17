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
@Table(name="Cart")
public class Cart implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	private int cartId;
	private int cartProductId;
	@OneToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="userMailId")
	private User cartUserDetails;
	
	private Double cartPrice;
	private int cartQuantity;
	private String cartImage;
	private String cartProductName;
	
	
	
	public Cart(int cartId, int cartProductId, User cartUserDetails, Double cartPrice, int cartQuantity)
	{
		this.cartId=cartId;
		this.cartProductId=cartProductId;
		this.cartUserDetails=cartUserDetails;
		this.cartPrice=cartPrice;
		this.cartQuantity=cartQuantity;	
	}
	

	public Cart() {
		super();
	}


	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public int getCartProductId() {
		return cartProductId;
	}

	public void setCartProductId(int cartProductId) {
		this.cartProductId = cartProductId;
	}

	public User getCartUserDetails() {
		return cartUserDetails;
	}

	public void setCartUserDetails(User cartUserDetails) {
		this.cartUserDetails=cartUserDetails;
	}

	public Double getCartPrice() {
		return cartPrice;
	}

	public void setCartPrice(Double cartPrice) {
		this.cartPrice = cartPrice;
	}

	public int getCartQuantity() {
		return cartQuantity;
	}

	public void setCartQuantity(int cartQuantity) {
		this.cartQuantity = cartQuantity;
	}

	public String getCartImage() {
		return cartImage;
	}

	public void setCartImage(String cartImage) {
		this.cartImage = cartImage;
	}

	public String getCartProductName() {
		return cartProductName;
	}

	public void setCartProductName(String cartProductName) {
		this.cartProductName = cartProductName;
	}
	
		

}
