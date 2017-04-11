package com.niit.shoppingcart.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.niit.shoppingcart.model.CartItem;

@Component
public interface CartDAO {
	public void add(CartItem cartItem);
	public void update(CartItem cartItem);
	public List getAllItems(String username);
	public List getAllItems();
	public void delete(int id);
	public void removeAll(String username);
	public CartItem getsinglecartitem(int id);

	

}
