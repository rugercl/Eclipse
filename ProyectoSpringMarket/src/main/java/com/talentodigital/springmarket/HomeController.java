package com.talentodigital.springmarket;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.talentodigital.springmarket.modelo.Producto;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	ArrayList<Producto> productos = new ArrayList<Producto>();
	
	@ModelAttribute("producto")
	public Producto setProducto() {
		return new Producto();
	}
	
	@RequestMapping(value = "registrarDatos", method = RequestMethod.POST)
	public ModelAndView getDatos(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView modelo = new ModelAndView();
		try
		{
			int codigo = Integer.parseInt(request.getParameter("txtCodigo"));
			String descripcion = request.getParameter("txtDescripcion");
			int valor = Integer.parseInt(request.getParameter("txtValor"));
			int stock = Integer.parseInt(request.getParameter("txtStock"));
			String categoria = request.getParameter("txtCategoria");
			String fabricante = request.getParameter("txtFabricante");


			Producto p = new Producto(codigo,descripcion,valor,stock,categoria,fabricante);
			if(buscarProducto(codigo) == null)
			{
				productos.add(p);
				modelo.addObject("mensaje","Producto Registrado...");
			}
			else
			{
				modelo.addObject("error","Producto ya esta registrado...");
			}			
			modelo.addObject("productos",productos);
			modelo.setViewName("listado");
			return modelo;
		}
		catch(Exception ex)
		{
			modelo.addObject("error","Se ha producido un error grave: " + ex.getMessage());
			modelo.setViewName("error");
			return modelo;
		}
	}
	
	@RequestMapping(value = "eliminar", method = RequestMethod.POST)
	public ModelAndView eliminarProducto(HttpServletRequest request) {
		ModelAndView modelo = new ModelAndView();
		int codigo= Integer.parseInt(request.getParameter("codigo"));
		Producto p = buscarProducto(codigo);
		if(p != null)
		{
			productos.remove(p);
			modelo.addObject("mensaje","Eliminado correctamente...");
		}
		else
		{
			modelo.addObject("error","No se puede eliminar el producto indicado...");
		}
		modelo.addObject("productos",productos);
		modelo.setViewName("listado");
		return modelo;
	}
	
	@RequestMapping(value = "modifica")
	public ModelAndView getModifica() {
		ModelAndView modelo = new ModelAndView();
		modelo.addObject("productos",productos);
		modelo.setViewName("modifica");
		return modelo;
	}
	
	@RequestMapping(value = "listado")
	public ModelAndView getListado() {
		ModelAndView modelo = new ModelAndView();
		modelo.addObject("productos",productos);
		modelo.setViewName("listado");
		return modelo;
	}
	
	@RequestMapping(value = "modificarProductos", method = RequestMethod.POST)
	public ModelAndView getModificar(HttpServletRequest request, HttpServletResponse response) {
		
		ModelAndView modelo = new ModelAndView();
		int codigo = Integer.parseInt(request.getParameter("txtCodigo"));
		String descripcion = request.getParameter("txtDescripcion");
		int valor = Integer.parseInt(request.getParameter("txtValor"));
		int stock = Integer.parseInt(request.getParameter("txtStock"));
		String categoria = request.getParameter("txtCategoria");
		String fabricante = request.getParameter("txtFabricante");
		Producto p = buscarProducto(codigo);
		if(p != null)
		{
			p.setCodigo(codigo);
			p.setDescripcion(descripcion);
			p.setValor(valor);
			p.setStock(stock);
			p.setCategoria(categoria);
			p.setFabricante(fabricante);
			modelo.addObject("productos",productos);
			modelo.addObject("mensaje","Datos modificados satisfactoriamente...");
		}
		else
		{
			modelo.addObject("productos",productos);
			modelo.addObject("error","No se logró completar la acción...");
		}
		modelo.setViewName("listado");
		return modelo;
	}
	
	@RequestMapping(value="/")
	public String getIndex() {	
		return "index";
	}
	@RequestMapping(value = "index")
	public String getInicio() {
		return "index";
	}
	
	
	@RequestMapping(value="registrar")
	public String getRegistrar() {	
		return "registrar";
	}
	
	private Producto buscarProducto(int codigo) {
		for(Producto p: productos)
		{
			if(p.getCodigo()==codigo)
			{
				return p;
			}
		}
		return null;
	}
	
	
}