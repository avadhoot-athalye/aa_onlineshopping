package com.beam.backend.webflow;

import java.io.Serializable;

public class UserBean implements Serializable{

	private static final long serialVersionUID = 4657462015039726030L;
	private String username;
	private String password;
	private String confirm_password;
	private String email;
	private boolean termsAndConditions;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public boolean isTermsAndConditions() {
		return termsAndConditions;
	}
	public void setTermsAndConditions(boolean termsAndConditions) {
		this.termsAndConditions = termsAndConditions;
	}
	
	
	
}
