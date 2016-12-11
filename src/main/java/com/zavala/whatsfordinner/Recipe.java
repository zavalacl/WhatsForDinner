package com.zavala.whatsfordinner;

import java.util.List;

public class Recipe {

	private String uri;
	private String label;
	private String image;
	private String source;
	private String url;
	private int yield;
	private String summary;
	private float calories;
	private float totalWeight;
//	private List<IngredientLines> ingredientLines;
	private List<Ingredient> ingredients;

//	private Ingredient[] ingredients;
//	private NutritionInfo[] totalNutrients;
//	private NutritionInfo[] totalDaily;
//	private enum[] dietLabels = new enum[];
//	private enum[] healthLabels = new enum;

	public List<Ingredient> getIngredients() {
		return ingredients;
	}
	
	/*public String getIngredientsOther() {
		String returnedI = getIngredients().toString();
		System.out.println("world");
		return returnedI;
	}*/
	
	public String getUri() {
		return uri;
	}
	public String getLabel() {
		return label;
	}
	public String getImage() {
		return image;
	}
	public String getSource() {
		return source;
	}
	public String getUrl() {
		return url;
	}
	public int getYield() {
		return yield;
	}
	public String getSummary() {
		return summary;
	}
	public float getCalories() {
		return calories;
	}
	public float getTotalWeight() {
		return totalWeight;
	}
	
}