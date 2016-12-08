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
	// private enum[] dietLabels = new enum[];
	// private enum[] healthLabels = new enum;

	public List<Ingredient> getIngredients() {
		return ingredients;
	}
	
	public String getIngredientsOther() {
		String returnedI = getIngredients().toString();
		return returnedI;
	}
	
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

//	public List<IngredientLines> getIngredientLines() {
//		return ingredientLines;
//	}
//	public NutritionInfo[] getTotalNutrients() {
//		return totalNutrients;
//	}
//	public NutritionInfo[] getTotalDaily() {
//		return totalDaily;
//	}

//	public void setIngredients(List<IngredientLines> ingredientLines) {
//		this.ingredientLines = ingredientLines;
//	}

	//	public void setTotalNutrients(NutritionInfo[] totalNutrients) {
//		this.totalNutrients = totalNutrients;
//	}
//	public void setTotalDaily(NutritionInfo[] totalDaily) {
//		this.totalDaily = totalDaily;
//	}

	/*	@Override
	public String toString() {
		String s = getIngredientLines().toString();
		return s;
	}	*/
	
	/*	
	public List<String> GetAllInfoForRecipeCJ(int i){
		List<String> recipeResult = new ArrayList<String>();
		
		recipeResult.add(uri);
		recipeResult.add(label);
		recipeResult.add(image);
		recipeResult.add(source);
		recipeResult.add(url);
		//recipeResult.add(ingredients);
				
		return recipeResult;	
	} 
	*/
}