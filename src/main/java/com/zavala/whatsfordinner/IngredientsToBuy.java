package com.zavala.whatsfordinner;

import java.util.ArrayList;
import java.util.List;

public class IngredientsToBuy {
	List<String> list = new ArrayList<String>();

	private String text;
	private String weight;

	public String getText() {
		return text;
	}

	public String getWeight() {
		return weight;
	}

	public IngredientsToBuy() {
		super();

	}

	public void addFood(String food) {
		list.add(food);
		this.list = list;
	}
	public void deleteFood(String food){
		list.remove(food);
		this.list = list;
	}

	public List<String> display() {
		return list;
	}

}
