package com.zavala.whatsfordinner;

public class Ingredient {

	private String uri;
	private float quantity;
	private Measure measure;
	private float weight;
	private Food food;
	private String text;

	public String getUri() {
		return uri;
	}

	public float getQuantity() {
		return quantity;
	}

	public Measure getMeasure() {
		return measure;
	}

	public float getWeight() {
		return weight;
	}

	public Food getFood() {
		return food;
	}

	public String getText() {
		return text;
	}

	public String toString() {
		String letext = text;
		String newText = letext.replace(",", "");
	 
		return newText;
	}

}
