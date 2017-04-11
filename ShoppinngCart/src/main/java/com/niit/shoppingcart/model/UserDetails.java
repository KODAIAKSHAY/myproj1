package com.niit.shoppingcart.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;

@Entity					
@Table(name="register")
@Component
public class UserDetails {
	
			 @Id
			 @GeneratedValue(strategy=GenerationType.AUTO)
			 @Column(name="id")
		     private int id;	
			 
			 @Size(min=2,max=10)
			 @Column(name="username")
		     private String username;
			 
					 
			 @NotNull
			 
			 @Column(name="mailid")
		     public String mailid;
			 
			 @Size(min=10,max=12)
			 @Column(name="phone")
		     public String phone;
			 
			 
			 
			 @Column(name="ROLE")
			 private String role;	
			
			 @NotNull
			 @Size(min=2,max=30)
			 @Column(name="password")
		     private String password;
			 
			 @NotNull
			 @Size(min=2,max=30)
			 @Column(name="confirmpassword")
		     private String confirmpassword; 
			 
			 @NotNull
			 @Size(min=2,max=100)
			 @Column(name="apartmentNumber")
		     private String apartmentNumber; 
			 
			 @NotNull
			 @Size(min=2,max=30)
			 @Column(name="streetName")
		     private String streetName; 
			
			 @NotNull
			 @Size(min=2,max=30)
			 @Column(name="city")
		     public String city; 
			
			 @NotNull
			 @Size(min=2,max=30)
			 @Column(name="state")
		     private String state; 
			
			 @NotNull
			 @Size(min=2,max=30)
			 @Column(name="country")
		     private String country; 
			
			 @NotNull
			 @Size(min=2,max=30)
			 @Column(name="zipCode")
		     private String zipCode; 
			
			 
			private boolean status=true;


			public int getId() {
				return id;
			}


			public void setId(int id) {
				this.id = id;
			}


			public String getUsername() {
				return username;
			}


			public void setUsername(String username) {
				this.username = username;
			}


			public String getMailid() {
				return mailid;
			}


			public void setMailid(String mailid) {
				this.mailid = mailid;
			}


			public String getPhone() {
				return phone;
			}


			public void setPhone(String phone) {
				this.phone = phone;
			}


			public String getRole() {
				return role;
			}


			public void setRole(String role) {
				this.role = role;
			}


			public String getPassword() {
				return password;
			}


			public void setPassword(String password) {
				this.password = password;
			}


			public String getConfirmpassword() {
				return confirmpassword;
			}


			public void setConfirmpassword(String confirmpassword) {
				this.confirmpassword = confirmpassword;
			}


			public String getApartmentNumber() {
				return apartmentNumber;
			}


			public void setApartmentNumber(String apartmentNumber) {
				this.apartmentNumber = apartmentNumber;
			}


			public String getStreetName() {
				return streetName;
			}


			public void setStreetName(String streetName) {
				this.streetName = streetName;
			}


			public String getCity() {
				return city;
			}


			public void setCity(String city) {
				this.city = city;
			}


			public String getState() {
				return state;
			}


			public void setState(String state) {
				this.state = state;
			}


			public String getCountry() {
				return country;
			}


			public void setCountry(String country) {
				this.country = country;
			}


			public String getZipCode() {
				return zipCode;
			}


			public void setZipCode(String zipCode) {
				this.zipCode = zipCode;
			}


			public boolean isStatus() {
				return status;
			}


			public void setStatus(boolean status) {
				this.status = status;
			}
						
			
			
			
}