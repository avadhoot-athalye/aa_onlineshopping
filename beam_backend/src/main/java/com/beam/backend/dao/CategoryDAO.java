package com.beam.backend.dao;

import java.util.List;

import com.beam.backend.entity.Category;

public interface CategoryDAO {

	List<Category> list();
	Category getCategory(int id);
	boolean addCategory(Category category);
	boolean updateCategory(Category category);
	boolean deleteCategory(Category category);
}
