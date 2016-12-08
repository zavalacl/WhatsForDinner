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
	public void addFood(String food){
	list.add(food);
	this.list = list;	
	}
	public List<String> display(){
		return list;
	}
	
	public List<String> GetRecipeTextnWeight(int i){
		List<String> ingTextnWeight = new ArrayList<String>();
		
		ingTextnWeight.add(text);
		ingTextnWeight.add(weight);
		
		return ingTextnWeight;
	}
}
