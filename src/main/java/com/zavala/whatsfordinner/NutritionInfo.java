package com.zavala.whatsfordinner;

public class NutritionInfo {

	private String uri;
	private String label;
	private float quantity;
	private String unit;

	public String getUri() {
		return uri;
	}
	public String getLabel() {
		return label;
	}
	public float getQuantity() {
		return quantity;
	}
	public String getUnit() {
		return unit;
	}
	public void setUri(String uri) {
		this.uri = uri;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public void setQuantity(float quantity) {
		this.quantity = quantity;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}

}
