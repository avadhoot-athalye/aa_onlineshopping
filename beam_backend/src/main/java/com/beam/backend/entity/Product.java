package com.beam.backend.entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Component
public class Product {

		@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
		private int product_id;
		private String product_name;
		private String product_description;
		private double product_price;
		private int product_quantity;
		private int category_id;
	
		@Column(name="Supplier_Id")
		private int supplierId;
	
		@Transient
		private String imgurl;
		
		@Transient
		private MultipartFile image;

		
		public int getProduct_id() {
			return product_id;
		}
		public void setProduct_id(int product_id) {
			this.product_id = product_id;
		}
		public String getProduct_name() {
			return product_name;
		}
		public void setProduct_name(String product_name) {
			this.product_name = product_name;
		}
		public String getProduct_description() {
			return product_description;
		}
		public void setProduct_description(String product_description) {
			this.product_description = product_description;
		}
		public double getProduct_price() {
			return product_price;
		}
		public void setProduct_price(double product_price) {
			this.product_price = product_price;
		}
		public int getProduct_quantity() {
			return product_quantity;
		}
		public void setProduct_quantity(int product_quantity) {
			this.product_quantity = product_quantity;
		}
		public int getCategory_id() {
			return category_id;
		}
		public void setCategory_id(int category_id) {
			this.category_id = category_id;
		}
		public int getSupplierId() {
			return supplierId;
		}
		public void setSupplierId(int supplierId) {
			this.supplierId = supplierId;
		}
		public String getImgurl() {
			return imgurl;
		}
		public void setImgurl(String imgurl) {
			this.imgurl = imgurl;
		}
		public MultipartFile getImage() {
			return image;
		}
		public void setImage(MultipartFile image) {
			this.image = image;
		}
		
		

		
}
