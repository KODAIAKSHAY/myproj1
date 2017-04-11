package com.niit.shoppingcart.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.User;
import com.niit.shoppingcart.model.UserDetails;

@Controller
public class UserController {

	@Autowired
	UserDAO registerdao;
	
	

	
	

	@RequestMapping("login")
	public ModelAndView display1() {
		ModelAndView mv1 = new ModelAndView("login");
		return mv1;
	}

	@RequestMapping("ak")
	public ModelAndView display289() {
		ModelAndView mv1 = new ModelAndView("viewproducts");
		return mv1;
	}

	
	
	@RequestMapping("kkk")
	public ModelAndView display33() {
		ModelAndView mv1 = new ModelAndView("admin");
		return mv1;
	}


	@RequestMapping("as")
	public ModelAndView display29() {
		ModelAndView mv1 = new ModelAndView("viewsuppiler");
		return mv1;
	}
	
	
	
	
	
	@RequestMapping(value = "/fail2login", method = RequestMethod.GET)
	public ModelAndView loginerror(ModelMap model) {
		return new ModelAndView("login", "error", true);
	}
	
	@RequestMapping("register")
	public ModelAndView display2() {

		ModelAndView mv2 = new ModelAndView("register");
		return mv2;
	}

	@RequestMapping(value = "/storeUser", method = RequestMethod.POST)
	public String addUser(@Valid @ModelAttribute("UserDetails") UserDetails registeruser,BindingResult result) 
	{
		if (result.hasErrors()) {
			return "register";
		}
		registerdao.save(registeruser);
		User loginuser = new User();
		loginuser.setId(registeruser.getId());
		loginuser.setUsername(registeruser.getUsername());
		loginuser.setPassword(registeruser.getPassword());
		loginuser.setApartmentNumber(registeruser.getApartmentNumber());
		loginuser.setCity(registeruser.getCity());
		loginuser.setCountry(registeruser.getCountry());
		loginuser.setMailid(registeruser.getMailid());
		loginuser.setPassword(registeruser.getPassword());
		loginuser.setState(registeruser.getState());
		loginuser.setStreetName(registeruser.getStreetName());
		loginuser.setPhone(registeruser.getPhone());
		loginuser.setZipCode(registeruser.getZipCode());
		loginuser.setStatus(registeruser.isStatus());
		registerdao.save(loginuser);
		return "register";
	}
	
  
	@ModelAttribute("UserDetails")
	public UserDetails registerUser() {
		return new UserDetails();

	}
	
	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public ModelAndView checkUserOne(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {
	 if (request.isUserInRole("ROLE_ADMIN")) {
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			String str = auth.getName(); // get username
			session = request.getSession(true);
			session.setAttribute("loggedInUser", str);
			//session.invalidate();
			//session.setMaxInactiveInterval(20);
			ModelAndView m1 = new ModelAndView("Admin");
			return m1;
		}
	 
	 
	 else if(request.isUserInRole("ROLE_USER"))
		{
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			String str = auth.getName();
			session = request.getSession(true);
			session.setAttribute("loggedInUser", str);
//			session.invalidate();
//			session.setMaxInactiveInterval(5);
			ModelAndView m2 = new ModelAndView("viewproducts");
			return m2;
		}
		
		else
		{
			//System.out.println("home");
		ModelAndView mv=new ModelAndView("home");
		return mv;
		}

		
	}

	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public ModelAndView display32() {

		ModelAndView mv2 = new ModelAndView("home");
		return mv2;
	}

}

