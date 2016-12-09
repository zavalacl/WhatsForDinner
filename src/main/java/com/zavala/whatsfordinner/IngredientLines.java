package com.zavala.whatsfordinner;

public class IngredientLines {

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

	public void setUri(String uri) {
		this.uri = uri;
	}

	public void setQuantity(float quantity) {
		this.quantity = quantity;
	}

	public void setMeasure(Measure measure) {
		this.measure = measure;
	}

	public void setWeight(float weight) {
		this.weight = weight;
	}

	public void setFood(Food food) {
		this.food = food;
	}

	public void setText(String text) {
		this.text = text;
	}
}
