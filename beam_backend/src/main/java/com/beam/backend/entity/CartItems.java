package com.beam.backend.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import org.springframework.stereotype.Component;

@Entity
@Component
public class CartItems implements Serializable{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 936926929683071430L;

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="item_id")
	private int id;
	
	@ManyToOne
	@JoinColumn(name="cart_id")
	private Cart cart;
	
	@OneToOne
	@JoinColumn(name="product_id")
	private Product product;
	
	private int quantity;
	
	private double price;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
	
	
}
