package com.distribuida.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
 
import com.distribuida.dao.CategoriaDAO;
import com.distribuida.entities.Categoria;

@Controller
@RequestMapping("/categorias")     //path Principal
public class CategoriaController {
	
	@Autowired	
	private CategoriaDAO categoriaDAO;
	
	@GetMapping("/findAll")      // path secundario
	public String finAll(Model  model) {
		
//		try {
		
			List<Categoria> categorias = categoriaDAO.findAll();
			
			model.addAttribute("categorias", categorias);    //EJ : Clave = KeyClientes , valor = clientes

			return "categorias-listar";  //nombre del formulario EJ.listar-clientes.html o listar-clientes.jsp
			
//		} catch (Exception e) {
//			 TODO: handle exception
//	   }
			
	}

	@GetMapping("/finOne")
	public String findOne(@RequestParam("idCategoria")@Nullable Integer idCategoria
			             ,@RequestParam("opcion")@Nullable Integer opcion
			             ,Model model
			) {
		
	//	try {
		
			if(idCategoria !=null) {
				Categoria categoria = categoriaDAO.findOne(idCategoria);
				model.addAttribute("categoria", categoria);
			}
			
			if(opcion == 1) return "add-categorias";  //Actualizacion
			else return "categorias-del";             //Eliminación
			
	//	} catch (Exception e) {
	//		// TODO: handle exception
	//	}

	}
// --------------------------------------------------Aqui ---------------------------------	
	@PostMapping("/add")
	public String add(@RequestParam("idCategoria") @Nullable Integer idCategoria
			      ,@RequestParam("categoria") @Nullable String categoria
			      ,@RequestParam("descripcion") @Nullable String descripcion
			      ,Model model
			      
			      
			      
			      
			) {
		
//		try{
		
		if(idCategoria == null) { //guardar
			Categoria categoria1 = new Categoria(0, categoria, descripcion);
			categoriaDAO.add(categoria1);
			
		}else { //actualizar
			
			Categoria categoria2 = new Categoria(idCategoria, categoria, descripcion);
			categoriaDAO.up(categoria2);
			
		}
		
		return "redirect:/categorias/findAlla";
		
//		} catch (Exception e) {
//		// TODO: handle exception
//	}
	
		
	}
	
	@GetMapping("/del")
	public String del(@RequestParam("idCategoria") @Nullable Integer idCategoria) {
		
		//try {
		
			categoriaDAO.del(idCategoria);
			
			return "redirect:/categorias/finAll";
			
	//	} catch (Exception e) {
	//		// TODO: handle exception
	//	}

	}
}






