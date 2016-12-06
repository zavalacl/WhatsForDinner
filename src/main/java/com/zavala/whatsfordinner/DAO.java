package com.zavala.whatsfordinner;

import java.util.ArrayList;
import java.util.List;

public class DAO {
	
	public static List<String> buildGroceryList(){
		List<String> recipeIngredients = new ArrayList<String>();
		recipeIngredients.add("chicken");
		recipeIngredients.add("flour");
		recipeIngredients.add("butter");
		recipeIngredients.add("seasoning");
		
		return recipeIngredients;
	}
	
	public static List<String> addIngredient(String a){
		List<String> groceryList = new ArrayList<String>();
		groceryList.add(a);
		
		return groceryList;
				
	}
}
