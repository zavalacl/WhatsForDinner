package com.zavala.whatsfordinner;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.HibernateException;
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
		configuration.addResource("cookbook.hbm.xml");
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

	// public static int addCookbook(Cookbook cb){
	// if (factory == null)
	// setupFactory();
	// Session hibernateSession = factory.openSession();
	// hibernateSession.getTransaction().begin();
	// int i = (Integer) hibernateSession.save(cb);
	// hibernateSession.getTransaction().commit();
	// hibernateSession.close();
	// return i;
	// }

	// public static void addToCookbook(int custID, String label, String image,
	// String url, String source, String ingredients) {
	// if (factory == null)
	// setupFactory();
	// Session hibernateSession = factory.openSession();
	// hibernateSession.getTransaction().begin();
	//
	//// Query<Customer> sql = hibernateSession.createQuery("UPDATE Customer SET
	// label = :label WHERE customerID = :customerID");
	//// Query<Customer> sql2 = hibernateSession.createQuery("UPDATE Customer
	// SET image = :image WHERE customerID = :customerID");
	//// Query<Customer> sql3 = hibernateSession.createQuery("UPDATE Customer
	// SET url = :url WHERE customerID = :customerID");
	//// Query<Customer> sql4 = hibernateSession.createQuery("UPDATE Customer
	// SET ingredients = :ingredients WHERE customerID = :customerID");
	//// Query<Customer> sql5 = hibernateSession.createQuery("UPDATE Customer
	// SET source = :source WHERE customerID = :customerID");
	////
	////
	//// sql.setParameter("customerID",custID);
	//// sql2.setParameter("customerID",custID);
	//// sql3.setParameter("customerID",custID);
	//// sql4.setParameter("customerID",custID);
	//// sql.setParameter("label", label);
	//// sql2.setParameter("image", image);
	//// sql3.setParameter("url", url);
	//// sql4.setParameter("ingredients", ingredients);
	//// sql5.setParameter("source", source);
	////
	//// sql.executeUpdate();
	//// sql2.executeUpdate();
	//// sql3.executeUpdate();
	//// sql4.executeUpdate();
	//// sql5.executeUpdate();
	// hibernateSession.getTransaction().commit();
	// hibernateSession.close();
	//

	// }

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
		Query<Customer> sql = hibernateSession.createQuery("FROM Customer WHERE email=:email", Customer.class);
		sql.setParameter("email", email);
		Customer cust = null;

		try {
			cust = sql.getSingleResult();
		} catch (NoResultException e) {
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
		} catch (NullPointerException e) {
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

	public static int addCookbook(Cookbook cbID) {
		if (factory == null)
			setupFactory();
		Session hibernateSession = factory.openSession();
		hibernateSession.getTransaction().begin();
		int i = (Integer) hibernateSession.save(cbID);
		hibernateSession.getTransaction().commit();
		hibernateSession.close();
		return i;
	}

	public static List<Cookbook> getCookbook(int cid) {
		if (factory == null)
			setupFactory();
		Session hibernateSession = factory.openSession();
		hibernateSession.getTransaction().begin();

		List<Cookbook> cookbook = hibernateSession.createQuery("FROM Cookbook Where customerID='" + cid + "'").list();
		hibernateSession.getTransaction().commit();
		hibernateSession.close();
		return cookbook;
	}

	public static void deleteCookBook(Integer cbID) {
		if (factory == null)
			setupFactory();
		Session session = factory.openSession();
		org.hibernate.Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Cookbook str = (Cookbook) session.get(Cookbook.class, cbID);
			session.delete(str);
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
}
