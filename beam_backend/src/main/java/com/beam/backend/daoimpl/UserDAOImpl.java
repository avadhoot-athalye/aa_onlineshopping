package com.beam.backend.daoimpl;

import java.util.List;




import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.beam.backend.dao.UserDAO;
import com.beam.backend.entity.User;

@Repository ("userDAO")
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private SessionFactory sessionfactory;

	
	@Override
	@Transactional
	public List<User> list() {
		String hql = "from User";
		Query query = sessionfactory.getCurrentSession().createQuery(hql);
		return query.list();
	}

	@Override
	@Transactional
	public User getUser(int id) {
		return sessionfactory.getCurrentSession().get(User.class, id);
	}

	@Override
	@Transactional
	public User getbyUserName(String username) {
		String hql = "FROM User WHERE USERNAME = :username";
		Query query = sessionfactory.getCurrentSession().createQuery(hql);
		query.setParameter("username", username);
		List<User> listOfUser = query.getResultList();
		if(listOfUser != null && !listOfUser.isEmpty()) {
			return listOfUser.get(0);
		}
		return null;
	}
	
	@Override
	@Transactional
	public boolean deleteUser(User user) {
		try {
			sessionfactory.getCurrentSession().delete(user);
			return true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return false;
		}
		
	}

	@Override
	@Transactional
	public boolean updateUser(User user) {
		try {
			sessionfactory.getCurrentSession().update(user);
			return true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return false;
		}
	}

	@Override
	@Transactional
	public boolean addUser(User user) {
		try {
			user.setRole("customer");
			user.setEnabled(true);
			sessionfactory.getCurrentSession().save(user);
			return true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return false;
		}
	}

	@Override
	public boolean isValid(String username, String password) {
		if(username.equals("admin") && password.equals("2311")) {
			return true;
		}
		return false;
	}

	


}
