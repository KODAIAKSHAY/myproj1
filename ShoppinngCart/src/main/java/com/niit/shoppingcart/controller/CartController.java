package com.niit.shoppingcart.controller;


import java.util.List;

import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.Transaction;

import org.h2.mvstore.db.TransactionStore.Change;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.shoppingcart.dao.CartDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.model.CartItem;
import com.niit.shoppingcart.model.Product;



@Controller
public class CartController 
{
	@Autowired
	 CartItem cartItem;
	@Autowired
	ProductDAO pd;
	@Autowired
	CartDAO cartdao;
	
     
	@RequestMapping(value="viewCart",method=RequestMethod.GET)
	public  String cart1(HttpSession session,HttpServletResponse response,HttpServletRequest request,Model model)
	{
		//System.out.println("ssssssssssssssssssss");
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 String username = auth.getName();
			session = request.getSession(true);
			session.setAttribute("loggedInUser", username);
			List<CartItem> list=cartdao.getAllItems(username);
			//System.out.println(username+"im main page");
			model.addAttribute("cart",new CartItem());
		
		return "viewcart";
	}
	
	@ModelAttribute
	public CartItem mmmmmm()
	{
		return new CartItem();
	}
	   
	
	 @RequestMapping(value="viewcart",method=RequestMethod.GET)
		public String vcHello(@RequestParam int id,HttpSession session,HttpServletResponse response,HttpServletRequest request)
		{  
		// System.out.println("sssssssssssssdfdfdfsssssss");
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 String username = auth.getName();
			session = request.getSession(true);
			session.setAttribute("loggedInUser", username);
		
			
		 
	    Product product=pd.getSingleProduct(id);
	    CartItem cartItem=new CartItem();
	    
	   
	   
	   	List<CartItem> list=cartdao.getAllItems(username);
	   	for(CartItem l: list)
	   	{
//	   		System.out.println("id"+l.getId());
//	   		System.out.println("name"+l.getName());
//	   		System.out.println("price"+l.getPrice());
//	   		System.out.println("quantity"+l.getQuantity());
//	   		System.out.println("username"+l.getUsername());
//	   		System.out.println("cartid"+l.getCartItemId());
	   	}
	   
	   //	System.out.println("List size......."+list.size());
	   	for(CartItem l: list)
	   	{
	   	 
	   	  if(id==l.getId())
	   	  {
	   
	    cartItem.setId(l.getId());
	    cartItem.setName(l.getName());
	    cartItem.setPrice(l.getPrice());
	    cartItem.setUsername(username);
//	    System.out.println("1 "+cartItem.getQuantity());
//	    System.out.println("2-l "+l.getQuantity());
	    
	   cartItem.setQuantity(1+l.getQuantity());
	   cartItem.setCartItemId(l.getCartItemId());
	    
	//System.out.println("1 "+cartItem.getQuantity());
	//System.out.println("2-l   "+l.getQuantity());
	    cartItem.setPrice(product.getPrice()*cartItem.getQuantity());
//	    System.out.println("cartid"+cartItem.getCartItemId());
//	    System.out.println(cartItem.getQuantity());
	    
	    cartdao.update(cartItem);
      
    
	    
	    return "redirect:/viewCart";
	   	}
	   	}
	  // 	System.out.println("aaaaaaaaaaaaaaaaaaaaaa");
	   	cartItem.setId(product.getId());
	    cartItem.setName(product.getName());
	    cartItem.setPrice(product.getPrice());
	    cartItem.setUsername(username);
	    cartItem.setQuantity(cartItem.getQuantity()+1);
	   
	    cartItem.setPrice(product.getPrice()*cartItem.getQuantity());
	   
	    cartdao.add(cartItem); 
		  
	    return "redirect:/viewCart";
	    }
		  
	 @RequestMapping(value="/listone",method=RequestMethod.GET,produces="application/json")
	    public @ResponseBody String showListOne(HttpSession session,HttpServletResponse response,HttpServletRequest request){
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 String username = auth.getName();
			session = request.getSession(true);
			session.setAttribute("loggedInUser", username);
			
	    	List blist=cartdao.getAllItems(username);
	    	//System.out.println(username+"in listone page");
	    	Gson x=new Gson();
	    	String json=x.toJson(blist);
	    	return json;
	    }

	 @RequestMapping("/deleteItemCart")
	    public String deleteProduct(@RequestParam int id,Model model)
	    {
		// System.out.println("2221aaasaaa");
		CartItem cartItem= cartdao.getsinglecartitem(id);
//		 System.out.println(id+"jajaja");
//		 System.out.println(cartItem.getCartItemId());
//		 System.out.println(cartItem.getQuantity());
//		 System.out.println(cartItem.getUsername());
//		 System.out.println(cartItem.getId());
		Product product= pd.getSingleProduct(cartItem.getId());
		 
		 if(cartItem.getQuantity()>1)
		 {
			 cartItem.setQuantity(cartItem.getQuantity()-1);
			 cartItem.setPrice(product.getPrice()*cartItem.getQuantity());
			 cartdao.update(cartItem);
			
		 }
		 else
		 {
			
         cartdao.delete(id);
        
       
		 }
         
	    return "redirect:/viewCart";
	    }
	 @RequestMapping("/removeAll")
	 public String removeAllItem(HttpSession session,HttpServletResponse response,HttpServletRequest request)
	 {
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 String username = auth.getName();

			session = request.getSession(true);
			session.setAttribute("loggedInUser", username);
		 
		 cartdao.removeAll(username);
		 return "redirect:/viewCart";
	 }
//	 @RequestMapping("/alert")
//	 public ModelAndView dis()
//	 {
//		  return new ModelAndView("alert");
//	 }
//	 @RequestMapping("/Enduser")
//	 public String disp()
//	 {
//		 
//		 return "redirect:/product";
//	 }
//	 @RequestMapping(value="/checkOut",method=RequestMethod.GET)
//	    public void createOrder()
//		{
//			
//			//System.out.println("Hello mahesh  ");
//			
//			
//	    }

	
	 
	 
}
