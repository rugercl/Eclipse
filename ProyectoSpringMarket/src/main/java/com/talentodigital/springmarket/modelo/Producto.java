package com.talentodigital.springmarket.modelo;

import javax.validation.constraints.NotNull;

public class Producto {
	
	private String categoria;
	private String fabricante;
		
	@NotNull (message="Debe incorporar un Valor Valido")
	private int codigo;
	private int valor;
	private int stock;

	
	@NotNull
	private String descripcion;
	
	
	
	public Producto() {
		super();
	}

	public Producto(int codigo, String descripcion, int valor, int stock, String categoria, String fabricante) {
		this.codigo = codigo;
		this.descripcion = descripcion;
		this.valor = valor;
		this.stock = stock;
		this.categoria = categoria;
		this.fabricante = fabricante;
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public int getValor() {
		return valor;
	}

	public void setValor(int valor) {
		this.valor = valor;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	public String getFabricante() {
		return fabricante;
	}

	public void setFabricante(String fabricante) {
		this.fabricante = fabricante;
	}
	
	
	
	
}
