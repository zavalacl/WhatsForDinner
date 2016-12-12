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
	}
	public void deleteFood(String food){
		list.remove(food);
	}

	public List<String> display() {
		return list;
	}
	public void clearFood() {
		list.clear();
	}

}
