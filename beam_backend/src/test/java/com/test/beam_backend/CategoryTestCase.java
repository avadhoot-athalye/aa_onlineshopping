package com.test.beam_backend;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.beam.backend.dao.CategoryDAO;
import com.beam.backend.entity.Category;

import junit.framework.Assert;

public class CategoryTestCase {
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	Category category;
	
	@Autowired
	AnnotationConfigApplicationContext context;
	
	
	
	public CategoryTestCase() {
		super();
		context = new AnnotationConfigApplicationContext();
		context.scan("com.beam.backend");
		context.refresh();
		categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
		category = (Category) context.getBean("category");
	}

	/*
	 * Test Case to add category
	 */
//	@Test
//	public void addCategoryTest(){
//		category.setCategory_id(1);
//		category.setCategory_name("New releases");
//		category.setCategory_description("new games will come here");
//		
//		Assert.assertEquals(true, categoryDAO.addCategory(category));
//	}

	/*
	 * Test case to delete category
	 */
//	@Test
//	public void deleteCategoryTest() {
//		category = categoryDAO.getCategory(1);
//		Assert.assertEquals(true, categoryDAO.deleteCategory(category));
//	}

	/*
	 * Test case to update category
	 */
//	@Test
//	public void updateCategoryTest() {
//		category = categoryDAO.getCategory(1);
//		category.setCategory_name("Most Popular");
//		Assert.assertEquals(true, categoryDAO.updateCategory(category));
//	}
	
	/*
	 * Test case to get list of all categories
	 */
	@Test
	public void getAllCategoriesTest() {
		
		int size = categoryDAO.list().size();
		Assert.assertEquals(1, size);
	}
}
