package com.beam.backend.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;

@Entity
@Component
public class User implements Serializable{
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="User_id")
	private int id;
	
	private String username;
	
	@Column(name="User_firstname")
	private String firstname;
	
	@Column(name="User_lastname")
	private String lastname;
	
	@Column(name="User_emailid")
	private String emailid;
	
	@Column(name="User_mobileno")
	private String mobilenumber;
	
	@Column(name="User_password")
	private String password;
	
	@Transient
	private String confirm_password;
	
	@Column(name="User_role")
	private String Role;
	
	@Column(name="User_enable")
	private boolean enabled;
	
	
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
	
	/*
	 * For debugging purpose
	 * */
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", firstname=" + firstname + ", lastname=" + lastname
				+ ", emailid=" + emailid + ", mobilenumber=" + mobilenumber + ", password=" + password
				+ ", confirm_password=" + confirm_password + ", Role=" + Role + ", enabled=" + enabled + "]";
	}

	
	
}
