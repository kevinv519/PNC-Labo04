package com.uca.capas.domain;

import java.util.Date;

import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Future;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

public class Product {
	
	@NotBlank(message = "El nombre no debe ir vacío")
	@Size(min = 3, max = 30, message = "Longitud debe estar entre 3 y 30 caracteres")
	private String name;
	
	@NotBlank(message = "La marca no debe ir vacía")
	@Size(min = 2, max = 30, message = "Longitud debe estar entre 2 y 30 caracteres")
	private String brand;
	
	@NotBlank(message = "La descripción no debe ir vacía")
	@Size(min = 3, max = 30, message = "Longitud debe estar entre 3 y 30 caracteres")
	private String description;
	
	@NotBlank(message = "La categoría no debe ir vacía")
	@Size(min = 3, max = 30, message = "Longitud debe estar entre 3 y 30 caracteres")
	private String category;
	
	@DecimalMin(value = "0", inclusive = true, message = "El precio no puede ser negativo")
	private double price;
	
	@Future(message = "No puede ingresar un producto expirado")
	@NotNull(message = "Debe ingresar una fecha de expiración para almacenar el producto")
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date expirationDate;

	public Product(String name, String brand, String description, String category, double price, Date expirationDate) {
		super();
		this.name = name;
		this.brand = brand;
		this.description = description;
		this.category = category;
		this.price = price;
		this.expirationDate = expirationDate;
	}	

	public Product() {
		name = "";
		brand = "";
		description = "";
		category = "";
		price = 0.0;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Date getExpirationDate() {
		return expirationDate;
	}

	public void setExpirationDate(Date expirationDate) {
		this.expirationDate = expirationDate;
	}
	
	
}
