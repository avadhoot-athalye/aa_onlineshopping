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

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}
		
		
}
