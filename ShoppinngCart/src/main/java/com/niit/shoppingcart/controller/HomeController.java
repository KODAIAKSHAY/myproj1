package com.niit.shoppingcart.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.niit.shoppingcart.dao.SuppilerDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.Suppiler;
import com.niit.shoppingcart.model.User;

import javassist.compiler.ast.NewExpr;


@Controller
public class HomeController 
{

	@Autowired
	UserDAO userDAOImpl;
	
	@Autowired
	User user;
	
	@Autowired
	SuppilerDAO sd;
	
	
	
	@RequestMapping("/")
	
 public String homePage()
 {
		
	 return "home";
 }
	
	@RequestMapping("/home")
	public ModelAndView  showhomePage()
	{
		ModelAndView mv=new ModelAndView("home");
		return mv;
	}
	@RequestMapping("/contact")
	public  String contact(Model model)
	{
		
		return  "contactus";
	}

	@RequestMapping("/about")
	public String about(Model model)
	{
		return "Aboutus";
	}
}
 