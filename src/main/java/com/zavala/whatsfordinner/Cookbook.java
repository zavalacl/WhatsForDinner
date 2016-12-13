package com.zavala.whatsfordinner;

public class Cookbook {

	private int cbID;
	private String recLabel;
	private String recImage;
	private String recIngredients;
	private String recURL;
	private String recSource;
	private int customerID;
	private int recRating;

	public Cookbook() {
		super();
	}

	/*
	 * public Cookbook(int cbID, String recLabel, String recImage, String
	 * recIngredients, String recURL, String recSource, int customerID) {
	 * super(); this.cbID = cbID; this.recLabel = recLabel; this.recImage =
	 * recImage; this.recIngredients = recIngredients; this.recURL = recURL;
	 * this.recSource = recSource; this.customerID = customerID; }
	 * 
	 */
	public int getcbID() {
		return cbID;
	}

	public Cookbook(int cbID, String recLabel, String recImage, String recIngredients, String recURL, String recSource,
			int recRating, int customerID) {
		super();
		this.cbID = cbID;
		this.recLabel = recLabel;
		this.recImage = recImage;
		this.recIngredients = recIngredients;
		this.recURL = recURL;
		this.recSource = recSource;
		this.recRating = recRating;
		this.customerID = customerID;
	}

	public void setcbID(int cbID) {
		this.cbID = cbID;
	}

	public String getRecLabel() {
		return recLabel;
	}

	public void setRecLabel(String recLabel) {
		this.recLabel = recLabel;
	}

	public String getRecImage() {
		return recImage;
	}

	public void setRecImage(String recImage) {
		this.recImage = recImage;
	}

	public String getRecIngredients() {
		return recIngredients;
	}

	public void setRecIngredients(String recIngredients) {
		this.recIngredients = recIngredients;
	}

	public String getRecURL() {
		return recURL;
	}

	public void setRecURL(String recURL) {
		this.recURL = recURL;
	}

	public int getCustomerID() {
		return customerID;
	}

	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}

	public int getRecRating() {
		return recRating;
	}

	public void setRecRating(int recRating) {
		this.recRating = recRating;
	}

	public String getRecSource() {
		return recSource;
	}

	public void setRecSource(String recSource) {
		this.recSource = recSource;
	}
}
