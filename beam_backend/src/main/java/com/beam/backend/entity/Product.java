package com.beam.backend.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Product {

		@Id
		private int product_id;
		private String product_name;
		private String product_description;
		private double product_price;
		private int product_quantity;
		
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
		
		

		
}
