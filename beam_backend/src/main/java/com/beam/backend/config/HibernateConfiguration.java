package com.beam.backend.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;



@Configuration
@ComponentScan(basePackages = "com.beam.backend")
@EnableTransactionManagement
public class HibernateConfiguration {

	/*
	 * Database Configuration
	 */
	
	@Bean(name = "dataSource")
	public DataSource getDataSource() {
		BasicDataSource dataSource = new BasicDataSource();
		//oracle.jdbc.driver.OracleDriver
		dataSource.setDriverClassName("org.h2.Driver");
		//jdbc:oracle:thin:@localhost:1521:xe
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/beam");
		//system
		dataSource.setUsername("sa");
		dataSource.setPassword("");
		return dataSource;
	}
	
	@Bean
	public SessionFactory getSessionFactory(DataSource dataSource) {
		LocalSessionFactoryBuilder sessionFactoryBuilder = new LocalSessionFactoryBuilder(dataSource);
		sessionFactoryBuilder.addProperties(getHibernateProperties());
		sessionFactoryBuilder.scanPackages("com.beam.backend.entity");
		return sessionFactoryBuilder.buildSessionFactory();
	}


	private Properties getHibernateProperties() {
		Properties properties = new Properties();
		// org.hibernate.dialect.OracleDialect
		properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		properties.put("hibernate.show_sql", "true");
		properties.put("hibernate.format_sql", "true");
//		properties.put("hibernate.hbm2ddl.auto", "update");
		return properties;
	}
	
	@Bean
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
		
		return transactionManager;
	}
}
