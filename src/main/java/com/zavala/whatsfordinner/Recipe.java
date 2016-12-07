package com.zavala.whatsfordinner;

import java.util.ArrayList;
import java.util.List;

public class Recipe {

	private String uri;
	private String label;
	private String image; 
	private String source;
	private String url;
	private int yield;
	private String ingredients;
	private String dietLabels;
	private String healthLabels;
	private String cautions;
	private String ingredientLines;
	private String calories;
	private String totalNutrients;
	
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
	
	public String getUri() {
		return uri;
	}
	
	public void setUri(String uri) {
		this.uri = uri;
	}
	public String getIngredients() {
		return ingredients;
	}

	public String getDietLabels() {
		return dietLabels;
	}
	public String getHealthLabels() {
		return healthLabels;
	}
	public String getCautions() {
		return cautions;
	}
	public String getIngredientLines() {
		return ingredientLines;
	}
	
	public String getCalories() {
		return calories;
	}
	public String getTotalNutrients() {
		return totalNutrients;
	}
	
	public String getLabel() {
		return label;
	}	

	public void setLabel(String label) {
		this.label = label;
	}
	
	public List<String> GetAllInfoForRecipeCJ(int i){
		List<String> recipeResult = new ArrayList<String>();
		
		recipeResult.add(uri);
		recipeResult.add(label);
		recipeResult.add(image);
		recipeResult.add(source);
		recipeResult.add(url);
		recipeResult.add(ingredients);
				
		return recipeResult;	
	}

}