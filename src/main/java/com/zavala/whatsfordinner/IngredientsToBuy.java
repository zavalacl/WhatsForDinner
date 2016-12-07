package com.zavala.whatsfordinner;

import java.util.ArrayList;
import java.util.List;

public class IngredientsToBuy {
	List<String> list = new ArrayList<String>();

	
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
}
