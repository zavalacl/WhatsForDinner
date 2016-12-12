package com.zavala.whatsfordinner;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
//import java.sql.Blob;

import com.google.gson.Gson;

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	SecretInfoForAPI authInfo = new SecretInfoForAPI();
	IngredientsToBuy ing = new IngredientsToBuy();

	String id = authInfo.getAppId();
	String key = authInfo.getApiKey();
	String userInput = "";
	String cleanUserInput = "";
	StringBuilder filters = new StringBuilder("");
	String url = "https://api.edamam.com/search?q=" + cleanUserInput + "&app_id=" + id + "&app_key=" + key + "&from=0&to=10" + filters;
	
	@RequestMapping(value = "/addSelectedRecipe", method = RequestMethod.GET)
	public String addSelectedRecipe(Model model, @CookieValue("customerID") String cid,
			@RequestParam(value = "label") String label, @RequestParam(value = "image") String image,
			@RequestParam(value = "url") String url, @RequestParam(value = "ingredients") String ingredients) {
		model.addAttribute("recipeLabel", label);
		model.addAttribute("recipeImage", image);
		model.addAttribute("recipeURL", url);
		model.addAttribute("recipeIng", ingredients);

		int custID = Integer.parseInt(cid);
		DAO.addToCookbook(ingredients, custID);
		return "groceryList";
	}

	@RequestMapping(value = "/added", method = RequestMethod.GET)
	public String added(Model model, HttpServletRequest request) {

		String[] groceryList = request.getParameterValues("missingIngredient");
		model.addAttribute("addedIng", groceryList);
		return "added";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String addCustomer(Model model, HttpServletRequest request, HttpServletResponse response) {

		Customer cust = new Customer();
		cust.setFirstName(request.getParameter("firstName"));
		cust.setLastName(request.getParameter("lastName"));
		cust.setEmail(request.getParameter("email"));
		cust.setPassword(request.getParameter("pwd1"));
		List<Customer> customers = DAO.getAllCustomers();

		for (Customer c : customers) {
			if (c.getEmail().equalsIgnoreCase(cust.getEmail())) {
				String retry = "That account already exists";
				model.addAttribute("retry", retry);
				return "signIn";
			}
		}

		int customerID = DAO.addCustomer(cust);
		customers = DAO.getAllCustomers();
		model.addAttribute("customers", customers);
		response.addCookie(new Cookie("customerID", "" + customerID));
		return "recipeSearchJC";
	}

	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpServletRequest request) {

		logger.info("Welcome, ninja!");
		return "home";
	}
	
	@RequestMapping(value = "/displayResultList", method = RequestMethod.GET)
	public String displayResultList(Model model, HttpServletRequest request) {

			String food = request.getParameter("food");

			ing.addFood(food);
			model.addAttribute("ing", ing);
			userInput += food + ",";
			cleanUserInput = userInput.replaceAll("[\\s,-]", ",");
			
			String[] healthLabelsSelected = request.getParameterValues("health");		

			if (healthLabelsSelected != null) {
				filters.setLength(0);
				for (String health : healthLabelsSelected) {
					filters.append("&health=" + health);
				}	
			}			
			
		url = "https://api.edamam.com/search?q=" + cleanUserInput + "&app_id=" + id + "&app_key=" + key + "&from=0&to=10" + filters;

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
				List<Hits> hits = recipesReturned.getHits();
				ArrayList<Recipe> recipeList = new ArrayList<Recipe>();

				for (Hits h : hits) {
					Recipe r = h.getRecipe();
					recipeList.add(r);
					model.addAttribute("recipeList", recipeList);
				}

			} else {
				System.out.println("error: " + connectCode);
			}

		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "recipeSearchJC";
}

	@RequestMapping(value = "/signIn", method = RequestMethod.GET)
	public String findCustomer(Model model, HttpServletRequest request, HttpServletResponse response) {

		List<Customer> customers = DAO.getAllCustomers();
		Customer custo = new Customer();
		custo = DAO.checkLogIn(request.getParameter("eml"), request.getParameter("pass"));

		if (custo == null) {
			String retry = "Please Enter a Valid Profile";
			model.addAttribute("retry", retry);
			return "signIn";
		}

		String name = custo.getFirstName();
		model.addAttribute("name", name);
		response.addCookie(new Cookie("customerID", "" + custo.getCustomerID()));
		return "recipeSearchJC";
	}

	@RequestMapping(value = "/recipeSearchJC", method = RequestMethod.GET)
	public String searchNow(Locale locale, @CookieValue("customerID") String cid, Model model,
			HttpServletRequest request) {
		int custID = Integer.parseInt(cid);
		logger.info("Ready to search?");
		return "recipeSearchJC";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(@CookieValue("customerID") Cookie cid, Model model, HttpServletResponse response) {
		cid.setMaxAge(0);
		response.addCookie(cid);
		return "home";
	}

	@RequestMapping(value = "/deleteFood", method = RequestMethod.GET)
	public String deleteFood(Model model, @RequestParam("item") String item) {

		ing.deleteFood(item);
		model.addAttribute("ing", ing);
		int start = userInput.indexOf(item);
		int end = userInput.indexOf(",", start);
		StringBuffer sb = new StringBuffer(userInput);
		userInput = sb.delete(start, (end + 1)).toString().trim();
		cleanUserInput = userInput.replaceAll("[\\s,-]", ",");
		url = "https://api.edamam.com/search?q=" + cleanUserInput + "&app_id=" + id + "&app_key=" + key + "&from=0&to=10" + filters;

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

				List<Hits> hits = recipesReturned.getHits();

				ArrayList<Recipe> recipeList = new ArrayList<Recipe>();
				for (Hits h : hits) {
					Recipe r = h.getRecipe();
					recipeList.add(r);
					model.addAttribute("recipeList", recipeList);
				}

			} else {
				System.out.println("error: " + connectCode);
			}

		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return "recipeSearchJC";
	}		

/*	@RequestMapping(value = "/addFilters", method = RequestMethod.GET)
	public String addFilters(Model model, HttpServletRequest request) {

		String[] healthLabelsSelected = request.getParameterValues("health");		

		if (healthLabelsSelected != null) {
			filters.setLength(0);
			for (String health : healthLabelsSelected) {
				filters.append("&health=" + health);
			}	
		}
		return "recipeSearchJC";
	}*/	
}
