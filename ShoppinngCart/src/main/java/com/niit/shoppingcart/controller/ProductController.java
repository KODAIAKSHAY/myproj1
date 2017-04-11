package com.niit.shoppingcart.controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SuppilerDAO;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.Suppiler;
@Controller
public class ProductController {

	@Autowired
	ProductDAO pd;
	@Autowired
	SuppilerDAO sd;



	@RequestMapping("/Products")
	public ModelAndView display6() {
		ModelAndView m4 = new ModelAndView("Products");
		return m4;
	}
	
	@RequestMapping("addpro")
	public ModelAndView display3() 
	{

		ModelAndView mv3 = new ModelAndView("addproduct");
	

		mv3.addObject("product", new Product());
        List suppilers= sd.getAllSuppilers();
        mv3.addObject("suppilers", suppilers);
        return mv3;
	}
	@RequestMapping("/viewproducts")
	public ModelAndView display8() 
	
	{
		ModelAndView m4 = new ModelAndView("viewproducts");
		
		return m4;
	}
	@RequestMapping("/viewproductsuser")
	public ModelAndView display10() 
	{
		ModelAndView m4 = new ModelAndView("viewproductsuser");
		return m4;
	}

	@RequestMapping("storeproduct")
	public String addProduct(HttpServletRequest request, @Valid @ModelAttribute("product") Product product,BindingResult result) {
		if (result.hasErrors()) {
			return "addproduct";
		}
	
		String filename = product.getImg().getOriginalFilename();
		//System.out.println(filename);
		product.setImage(filename);

		try {
			byte[] bytes = new byte[product.getImg().getInputStream().available()];
			product.getImg().getInputStream().read(bytes);
			BufferedInputStream buffer = new BufferedInputStream(product.getImg().getInputStream());
			MultipartFile file = product.getImg();
			String path = request.getServletContext().getRealPath("/") + "/WEB-INF/resources/images";
			File rootPath = new File(path);
			if (!rootPath.exists())
				rootPath.mkdirs();
			File store = new File(rootPath.getAbsolutePath() + "/" + filename);
			//System.out.println("Image path :" + path);
			OutputStream os = new FileOutputStream(store);
			os.write(bytes);
			os.close();
		} catch (Exception e) {
			//System.out.println(e.getMessage());
		}
		pd.saveOrUpdate(product);
		return "redirect:/viewproducts";

	}
	@RequestMapping("ManageProducts")
	public ModelAndView display11() {
		ModelAndView m10 = new ModelAndView("ManageProducts");
		return m10;
	}

	@RequestMapping(value = "list", method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody String showList()
	{
		List list = pd.getAllProducts();
		Gson x = new Gson();
		String json = x.toJson(list);
		return json;
	}

	@RequestMapping("/delete")
	public ModelAndView deleteProduct(@RequestParam int id) {
		pd.delete(id);
		ModelAndView m1 = new ModelAndView("viewproducts");
		return m1;
	}
	

	@RequestMapping("viewproduct")
	public ModelAndView display12() {
		ModelAndView m6 = new ModelAndView("viewproduct");
		return m6;

	}
	@RequestMapping("viewproductuser")
	public ModelAndView display13() {
		ModelAndView m6 = new ModelAndView("viewproductuser");
		return m6;

	}
@ModelAttribute ("Product")
public ModelAndView display9(){
	
	ModelAndView m9 = new ModelAndView("Product");
	m9.addObject("product",new Product());
;	return m9;
}
	@RequestMapping(value = "viewproduct", method = RequestMethod.GET)
	public ModelAndView viewPro(@RequestParam int id, @ModelAttribute Product products) {
		Product product = pd.getSingleProduct(id);
		return new ModelAndView("viewproduct", "product", product);
	}
	@RequestMapping(value = "viewproductuser", method = RequestMethod.GET)
	public ModelAndView viewProuser(@RequestParam int id, @ModelAttribute Product products) {
		Product product = pd.getSingleProduct(id);
		return new ModelAndView("viewproductuser", "product", product);
	}
	 		 
	  		 
	 @RequestMapping(value="editproduct",method=RequestMethod.GET)
	    public String editPro(@RequestParam int id,Model model){
		 
		pd.getSingleProduct(id);
	  
	   model.addAttribute("product",new Product());
	   model.addAttribute("Product",pd.getSingleProduct(id));
	   return "editproduct";
	    }
	 @RequestMapping(value="update",method=RequestMethod.POST)
	    public String updateProduct(HttpServletRequest request,@Valid @ModelAttribute("product")Product product,BindingResult result,Model model)
	    {
		// System.out.println("affbddddddddddddddddddddddddddddadkjfbadkj");
		 if(result.hasErrors())
		 {
			// System.out.println("affbadkjfbadkj");
			  
			   model.addAttribute("product",new Product());
			   model.addAttribute("Product",pd.getSingleProduct(product.getId()));

			 return "editproduct";
		 }
		 
	    	String filename=product.getImg().getOriginalFilename();
	    	
	    	product.setImage(filename);
     	
	    	try{
	    		//System.out.println("cbdcdhc");
     		byte[] bytes=new byte[product.getImg().getInputStream().available()];
     		product.getImg().getInputStream().read(bytes);
     		BufferedInputStream buffer=new BufferedInputStream(product.getImg().getInputStream());
     		MultipartFile file=product.getImg();
     		String path=request.getServletContext().getRealPath("/")+"/WEB-INF/resources/images";
     		File rootPath=new File(path);
     		if(!rootPath.exists())
     			rootPath.mkdirs();
     		File store=new File(rootPath.getAbsolutePath()+"/"+filename);
     		//System.out.println("Image path :"+path);
     		OutputStream os=new FileOutputStream(store);
     		os.write(bytes);
     		
	    	pd.updateProduct(product);
	    	}
	    	catch(Exception e)
	    	{
	    		//System.out.println(e);
	    	}
	    	return "viewproducts";
	    }	 
}
