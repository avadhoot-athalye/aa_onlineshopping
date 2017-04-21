package com.beam.backend.entity;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Transient;


import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Component
public class User implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 7068214582318580460L;

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="User_id")
	@JsonIgnore
	private int id;
	
	@JsonIgnore
	private String username;
	
	@Column(name="User_firstname")
	@JsonIgnore
	private String firstname;
	
	@Column(name="User_lastname")
	@JsonIgnore
	private String lastname;
	
	@Column(name="User_emailid")
	@JsonIgnore
	private String emailid;
	
	@Column(name="User_mobileno")
	@JsonIgnore
	private String mobilenumber;
	
	@Column(name="User_password")
	@JsonIgnore
	private String password;
	
	@Transient
	@JsonIgnore
	private String confirm_password;
	
	@Column(name="User_role")
	@JsonIgnore
	private String Role;
	
	@Column(name="User_enable")
	@JsonIgnore
	private boolean enabled;
	
	@OneToOne(mappedBy = "user", cascade = CascadeType.ALL)
	private Cart cart;
	
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getMobilenumber() {
		return mobilenumber;
	}
	public void setMobilenumber(String mobilenumber) {
		this.mobilenumber = mobilenumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirm_password() {
		return confirm_password;
	}
	public void setConfirm_password(String confirm_password) {
		this.confirm_password = confirm_password;
	}
	public String getRole() {
		return Role;
	}
	public void setRole(String role) {
		Role = role;
	}
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	
	
}
