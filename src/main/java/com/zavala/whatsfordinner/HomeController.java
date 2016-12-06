package com.zavala.whatsfordinner;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		
		
		return "home";
	}
	Ingredients ing = new Ingredients();
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String home(Model model, @RequestParam("food") String food) {
		ing.addFood(food);
		model.addAttribute("ing", ing);
		return "home";
	}	
}
