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
	
	int counterHelper = 0;

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
	
	@RequestMapping(value ="/login", method = RequestMethod.GET)
	public String addCustomer(Model model, HttpServletRequest request){
		Customer cust = new Customer();
		cust.setFirstName(request.getParameter("firstName"));
		cust.setLastName(request.getParameter("lastName"));
		cust.setEmail(request.getParameter("email"));
		cust.setPassword(request.getParameter("pwd1"));
		int customerID = DAO.addCustomer(cust);
		
		List<Customer> customers = DAO.getAllCustomers();
		model.addAttribute("customers",customers);
		
		return "listtd";
	}

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	SecretInfoForAPI authInfo = new SecretInfoForAPI();

	Ingredients ing = new Ingredients();
	String id = authInfo.getAppId();
	String key = authInfo.getApiKey();
	String userInput = "";

	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpServletRequest request) {

		logger.info("Welcome back, ninja!");

		return "home";
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String home(Model model, @RequestParam("food") String food) {

		ing.addFood(food);
		model.addAttribute("ing", ing);
		userInput += food +",";

		String cleanUserInput = userInput.replaceAll("[\\s,-]", ","); 
		
		String url = "https://api.edamam.com/search?q=" + cleanUserInput + "&app_id=" + id + "&app_key=" + key
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
				
<<<<<<< HEAD
				for(int i = 0; i < recipesReturned.getHits().size(); i++){
					
					//model.addAttribute("WhatIsTheLabel0", recipesReturned.getHits().get(i).getRecipe().getLabel());
					model.addAttribute("WhatIsTheLabel" + i, recipesReturned.getHits().get(i).getRecipe().GetAllInfoForRecipeCJ(i));
					
				}
				
=======
				for (int i = 0; i < recipesReturned.getHits().size(); i++) {

				counterHelper = i; 
				
				model.addAttribute("WhatIsTheLabel"+i, recipesReturned.getHits().get(i).getRecipe().getLabel());
				model.addAttribute("WhatIsTheImage"+i, recipesReturned.getHits().get(i).getRecipe().getImage());
				model.addAttribute("WhatIsTheSource"+i, recipesReturned.getHits().get(i).getRecipe().getSource());
//				model.addAttribute("WhatIsTheIngs"+i, recipesReturned.getHits().get(i).getRecipe().getIngredients());

				}

>>>>>>> 591aea63bb83282431f4dec18be349135165b969
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
	@RequestMapping(value = "/signIn", method = RequestMethod.GET)
	public String findCustomer(Model model, HttpServletRequest request) {
		List<Customer> customers = DAO.getAllCustomers();
		Customer custo = new Customer();
		for(Customer c : customers){
			if (c.getEmail().equalsIgnoreCase(request.getParameter("eml")) && c.getPassword().equalsIgnoreCase(request.getParameter("pass"))){
				custo = c;
			}
		}
		if (custo.getFirstName() == null){
			String retry = "Please Enter a Valid Profile";
			model.addAttribute("retry", retry);
			return "signIn";
		}
		String name = custo.getFirstName();
		model.addAttribute("name", name);
		return "listtd";
	}

}