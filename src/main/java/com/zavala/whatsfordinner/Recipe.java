package com.zavala.whatsfordinner;

//import java.util.ArrayList;
//import java.util.List;

//import java.util.List;

public class Recipe {

	private String uri;
	private String label;
	private String image; 
	private String source;
	private String url;
	private int yield;
	private String dietLabels;
	private String healthLabels;
	private String cautions;
	private String ingredientLines;
	private String ingredients;
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
	public String getIngredients() {
		return ingredients;
	}
	public String getCalories() {
		return calories;
	}
	public String getTotalNutrients() {
		return totalNutrients;
	}
	

	public String getUri() {
		return uri;
	}

	public String getLabel() {
		return label;
	}	
	
	public void setUri(String uri) {
		this.uri = uri;
	}

	public void setLabel(String label) {
		this.label = label;
	}
	
	/*public List<String> GetAllInfoForRecipeCJ(int i){
		List<String> recipeResult = new ArrayList<String>();
		
		recipeResult.add("model.addAttribute(\"WhatIsTheLabel\"" + i + "recipesReturned.getHits().get(" +i +").getRecipe().getLabel())");
		recipeResult.add("model.addAttribute(\"WhatIsTheLabel\"" + i + "recipesReturned.getHits().get(" +i +").getRecipe().getImage())");
		recipeResult.add("model.addAttribute(\"WhatIsTheLabel\"" + i + "recipesReturned.getHits().get(" +i +").getRecipe().getImage())");
		recipeResult.add("model.addAttribute(\"WhatIsTheLabel\"" + i + "recipesReturned.getHits().get(" +i +").getRecipe().getImage())");
		recipeResult.add("model.addAttribute(\"WhatIsTheLabel\"" + i + "recipesReturned.getHits().get(" +i +").getRecipe().getImage())");	
		
		return recipeResult;	
	}*/

}