package com.zavala.whatsfordinner;

<<<<<<< HEAD
import java.util.ArrayList;
import java.util.List;
=======
import java.util.List;


//import java.util.List;
//import java.util.List;
>>>>>>> 591aea63bb83282431f4dec18be349135165b969

public class Recipe {

	private String uri;
	private String label;
	private String image; 
	private String source;
	private String url;
	private int yield;
<<<<<<< HEAD
	private String ingredients;
	private String dietLabels;
	private String healthLabels;
	private String cautions;
	private String ingredientLines;
	private String calories;
	private String totalNutrients;
=======
//	private String dietLabels;
//	private String healthLabels;
//	private String cautions;
//	private String ingredientLines;
//	private Ingredients ingredients;
//	private String calories;
//	private String totalNutrients;
>>>>>>> 591aea63bb83282431f4dec18be349135165b969
	
	public String getImage() {
		String im = image.toString();
		return im;
	}
	public String getSource() {
		String s = source.toString();
		return s;
	}
	public String getUrl() {
		String u = url.toString();
		return u;
	}
	public int getYield() {
		return yield;
	}
<<<<<<< HEAD
	
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
=======
//	public String getDietLabels() {
//		String dl = dietLabels.toString();
//		return dl;
//	}
//	public String getHealthLabels() {
//		String hl = healthLabels.toString();
//		return hl;
//	}
//	public String getCautions() {
//		String c = cautions.toString();
//		return c;
//	}
//	public String getIngredientLines() {
//		String il = ingredientLines.toString();
//		return il;
//	}
/*	public String getIngredients() {

		String returnIngredients = "";
		for (int i = 0; i <= ingredients.list.size(); i++) {
			returnIngredients += ingredients
		}
		return returnIngredients;
	}*/
/*	public String getCalories() {
		return calories.toString();
>>>>>>> 591aea63bb83282431f4dec18be349135165b969
	}
	public String getTotalNutrients() {
		return totalNutrients.toString();
	}*/
	
<<<<<<< HEAD
	public String getLabel() {
		return label;
	}	
=======
	public String getUri() {
		return uri;
	}

	public String getLabel() {
		return label;
	}	
	
/*	public void setUri(String uri) {
		this.uri = uri.toString();
	}
>>>>>>> 591aea63bb83282431f4dec18be349135165b969

	public void setLabel(String label) {
		this.label = label.toString();
	}*/
	
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