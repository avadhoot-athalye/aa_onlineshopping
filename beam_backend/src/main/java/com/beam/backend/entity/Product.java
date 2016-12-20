package com.beam.backend.entity;

public class Product {

		/*
		 * Fields Declaration
		 */
	
		private int id;
		private String name;
		
		/*
		 * constructors
		 */
		public Product() {
			this(0, null);
		}
		
		public Product(int id, String name) {
			
			super();
			this.id = id;
			this.name = name;
		}
}
