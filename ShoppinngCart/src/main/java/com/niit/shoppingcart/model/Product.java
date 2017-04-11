package com.niit.shoppingcart.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.annotations.Proxy;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table
@Component
@Proxy(lazy=false)
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private int id;
	@Size(min=2,max=20)
	private String name;

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Size(min=2,max=30)
	private String Description;
	@NotNull
	private String warranty;
	@OneToOne(cascade=CascadeType.PERSIST)
	@JoinColumn(name="suppiler")
	
	private Suppiler suppiler;
	@NotNull
	private double Price;

	
	private String image;
	@JsonIgnore
	transient private MultipartFile img;

public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	//	public String getName() {
//		return Name;
//	}
//	public void setName(String name) {
//		Name = name;
//	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public String getWarranty() {
		return warranty;
	}
	public void setWarranty(String warranty) {
		this.warranty = warranty;
	}
	public Suppiler getSuppiler() {
		return suppiler;
	}
	public void setSuppiler(Suppiler suppiler) {
		this.suppiler = suppiler;
	}
	public double getPrice() {
		return Price;
	}
	public void setPrice(double price) {
		Price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public MultipartFile getImg() {
		return img;
	}
	public void setImg(MultipartFile img) {
		this.img = img;
	}
		
}