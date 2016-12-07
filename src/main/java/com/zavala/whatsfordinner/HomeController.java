package com.zavala.whatsfordinner;

import java.util.List;
//import java.text.DateFormat;
//import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

//import org.springframework.asm.commons.GeneratorAdapter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import com.google.gson.Gson;

@Controller
public class HomeController {

	@RequestMapping(value = "/groceryList", method = RequestMethod.GET)
	public String list(Model model) {
		List<String> recipeIngredients = DAO.buildGroceryList();
		model.addAttribute("recipeIng", recipeIngredients);
		return "groceryList";
	}

	@RequestMapping(value = "/added", method = RequestMethod.GET)
	// public String added(Model model, HttpServletRequest request,
	// @RequestParam(value="add") String add){
	public String added(Model model, HttpServletRequest request) {

		String[] groceryList = request.getParameterValues("missingIngredient");
		model.addAttribute("addedIng", groceryList);
		// model.addAttribute("addedIng", DAO.addIngredient(add));
		return "added";
	}

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	SecretInfoForAPI authInfo = new SecretInfoForAPI();

	Ingredients ing = new Ingredients();
	String id = authInfo.getAppId();
	String key = authInfo.getApiKey();

	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpServletRequest request) {

		logger.info("Welcome back, ninja!");

		String url = "https://api.edamam.com/search?q=" + "cheese" + "&app_id=" + id + "&app_key=" + key
				+ "&from=0&to=10&calories=gte%20591,%20lte%20722&health=alcohol-free";

		try {
			URL urlObj = new URL(url);

			HttpURLConnection connect = (HttpURLConnection) urlObj.openConnection();
			connect.setRequestMethod("GET");
			int connectCode = connect.getResponseCode();
			if (connectCode == 200) {
				BufferedReader in = new BufferedReader(new InputStreamReader(connect.getInputStream()));
				String inputLine;
				StringBuffer response = new StringBuffer();

				while ((inputLine = in.readLine()) != null) {
					response.append(inputLine);
				}

				in.close();

				Gson gson = new Gson();
				RecipesReturned recipesReturned = gson.fromJson(response.toString(), RecipesReturned.class);
				model.addAttribute("WhatIsTheLabel", recipesReturned.getHits().get(0).getRecipe().getLabel());

			} else {
				System.out.println("error: " + connectCode);
			}

		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "home";
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String home(Model model, @RequestParam("food") String food) {

		ing.addFood(food);
		model.addAttribute("ing", ing);

		String url = "https://api.edamam.com/search?q=" + food + "&app_id=" + id + "&app_key=" + key
				+ "&from=0&to=10&calories=gte%20591,%20lte%20722&health=alcohol-free";

		try {
			URL urlObj = new URL(url);

			HttpURLConnection connect = (HttpURLConnection) urlObj.openConnection();
			connect.setRequestMethod("GET");
			int connectCode = connect.getResponseCode();
			if (connectCode == 200) {
				BufferedReader in = new BufferedReader(new InputStreamReader(connect.getInputStream()));
				String inputLine;
				StringBuffer response = new StringBuffer();

				while ((inputLine = in.readLine()) != null) {
					response.append(inputLine);
				}

				in.close();

				Gson gson = new Gson();
				RecipesReturned recipesReturned = gson.fromJson(response.toString(), RecipesReturned.class);
				model.addAttribute("WhatIsTheLabel0", recipesReturned.getHits().get(0).getRecipe().getLabel());
				model.addAttribute("WhatIsTheLabel1", recipesReturned.getHits().get(1).getRecipe().getLabel());
				model.addAttribute("WhatIsTheLabel2", recipesReturned.getHits().get(2).getRecipe().getLabel());

			} else {
				System.out.println("error: " + connectCode);
			}

		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return "home";

	}

	/*
	 * @RequestMapping(value = "/recipeSearchJC", method = RequestMethod.GET)
	 * 
	 * public String recipeSearchJC(Locale locale, Model model,
	 * HttpServletRequest request, @RequestParam("food") String food) {
	 * 
	 * logger.info("Welcome back, ninja!");
	 * 
	 * String url = "https://api.edamam.com/search?q=chicken&app_id=" + id +
	 * "&app_key=" + key +
	 * "&from=0&to=10&calories=gte%20591,%20lte%20722&health=alcohol-free";
	 * 
	 * ing.addFood(food); model.addAttribute("ing", ing);
	 * 
	 * try { URL urlObj = new URL(url);
	 * 
	 * HttpURLConnection connect = (HttpURLConnection) urlObj.openConnection();
	 * connect.setRequestMethod("GET"); int connectCode =
	 * connect.getResponseCode(); if (connectCode == 200) { BufferedReader in =
	 * new BufferedReader(new InputStreamReader(connect.getInputStream()));
	 * String inputLine; StringBuffer response = new StringBuffer();
	 * 
	 * while ((inputLine = in.readLine()) != null) { response.append(inputLine);
	 * }
	 * 
	 * in.close();
	 * 
	 * Gson gson = new Gson(); RecipesReturned recipesReturned =
	 * gson.fromJson(response.toString(), RecipesReturned.class);
	 * 
	 * model.addAttribute("WhatIsTheLabel",
	 * recipesReturned.getHits().get(0).getRecipe().getLabel());
	 * 
	 * } else { System.out.println("error: " + connectCode); }
	 * 
	 * } catch (MalformedURLException e) { e.printStackTrace(); } catch
	 * (IOException e) { e.printStackTrace(); } return "recipeSearchJC"; }
	 */

}