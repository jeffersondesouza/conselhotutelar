package org.conselho.controllers;

import java.util.List;

import javax.persistence.EntityManager;

import org.conselho.dao.DenunciaDAO;
import org.conselho.models.Denuncia;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
//@RequestMapping("/denuncia")
public class DenunciaListaController {

	@Autowired
	DenunciaDAO denunciaDao;
	
	@RequestMapping(value="/denuncias", method=RequestMethod.GET)
	public ModelAndView denunciaLista(){
		ModelAndView modelAndView = new ModelAndView("denuncia/denuncia-lista");
		
		List<Denuncia> denuncias = denunciaDao.lista();
		
		
		modelAndView.addObject("denuncias",denuncias);
		return modelAndView;
	}
		

}
