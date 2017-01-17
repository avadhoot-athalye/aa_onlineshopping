package com.beam.backend.entity;

import java.awt.List;

import com.beam.backend.dao.ProductDAO;

public class ProductListModel {

	private Product product;
	private String categoryName;
	private String supplierName;
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getSupplierName() {
		return supplierName;
	}
	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}
	
	
}
