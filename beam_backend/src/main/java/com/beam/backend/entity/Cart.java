package com.beam.backend.entity;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Component
public class Cart implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1624521779348786093L;
	
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="cart_id")
	@JsonIgnore
	private int id;
	
	@Column(name="cart_grand_total")
	private double grandTotal;
	
	@OneToOne
	@JoinColumn(name="user_id")
	@JsonIgnore
	private User user;
	
	
	@OneToMany(mappedBy = "cart", fetch = FetchType.EAGER)
	@JsonBackReference
	private Set<CartItems> cartItems;
	
	@Column(name="Number_Of_Items")
	private int numberOfItems;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public double getGrandTotal() {
		return grandTotal;
	}

	public void setGrandTotal(double grandTotal) {
		this.grandTotal = grandTotal;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getNumberOfItems() {
		return numberOfItems;
	}

	public void setNumberOfItems(int numberOfItems) {
		this.numberOfItems = numberOfItems;
	}

	public Set<CartItems> getCartItems() {
		return cartItems;
	}

	public void setCartItems(Set<CartItems> cartItems) {
		this.cartItems = cartItems;
	}

	
}
