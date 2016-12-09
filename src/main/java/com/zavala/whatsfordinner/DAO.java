package com.zavala.whatsfordinner;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.jasypt.util.password.StrongPasswordEncryptor;
import org.hibernate.query.Query;

public class DAO {
	private static SessionFactory factory;

	private static void setupFactory() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {
			;
		}

		Configuration configuration = new Configuration();
		configuration.configure("hibernate.cfg.xml");
		configuration.addResource("customer.hbm.xml");
		ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
				.applySettings(configuration.getProperties()).build();
		factory = configuration.buildSessionFactory(serviceRegistry);
	}

	public static int addCustomer(Customer c) {
		StrongPasswordEncryptor passwordEncryptor = new StrongPasswordEncryptor();
		String encrypted = passwordEncryptor.encryptPassword(c.getPassword());
		c.setPassword(encrypted);
		if (factory == null)
			setupFactory();
		Session hibernateSession = factory.openSession();
		hibernateSession.getTransaction().begin();
		int i = (Integer) hibernateSession.save(c);
		hibernateSession.getTransaction().commit();
		hibernateSession.close();
		return i;
	}

	public static List<Customer> getAllCustomers() {
		if (factory == null)
			setupFactory();
		Session hibernateSession = factory.openSession();
		hibernateSession.getTransaction().begin();

		List<Customer> customers = hibernateSession.createQuery("FROM Customer").list();
		hibernateSession.getTransaction().commit();
		hibernateSession.close();
		return customers;
	}

	public static Customer checkLogIn(String email, String password) {

		if (factory == null)
			setupFactory();

		 Session hibernateSession = factory.openSession();
		 
		 Query<Customer> sql = hibernateSession.createQuery("FROM Customer WHERE email=:email", Customer.class) ;
		 sql.setParameter("email", email);
		 Customer cust = null;
		try {
		 cust = sql.getSingleResult();  
		} catch(NoResultException e){
			return null;
		}
		 try {
			 hibernateSession.close();  
		 } catch (Exception e) {
			 System.out.println("DEBUG: Error caught: " + e);
		 }
		 try {
		 StrongPasswordEncryptor passwordEncryptor = new StrongPasswordEncryptor();
		 if (passwordEncryptor.checkPassword(password, cust.getPassword())) {
			 return cust; 
		 } else {
			 return null;
		 }
		 }
		 catch (NullPointerException e){
			 return null;
		 }
		 
	}

	public static List<String> buildGroceryList() {
		List<String> recipeIngredients = new ArrayList<String>();
		return recipeIngredients;
	}

	public static List<String> addIngredient(String a) {
		List<String> groceryList = new ArrayList<String>();
		groceryList.add(a);

		return groceryList;

	}
}
