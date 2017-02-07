package org.conselho.controllers;

import org.conselho.dao.AgressaoDAO;
import org.conselho.dao.DenunciaDAO;
import org.conselho.models.Denuncia;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class DenunciaController {
	
	@Autowired
	DenunciaDAO denunciaDao;
	
	@Autowired
	AgressaoDAO agressaoDao;
	
	
	@RequestMapping("/fazer-denuncia")
	public ModelAndView formDenunciar(){	
		return new ModelAndView("denuncia/fazer-form").addObject("tiposAgressao", agressaoDao.lista());
	}	
	@RequestMapping("/acompanhar-denuncia")
	public String acompanharDenuncia(){		
		return "denuncia/buscar-form";
	}
	@RequestMapping("/denuncia")
	public String denuncia(){		
		return "denuncia/denuncia";
	}
	
	@RequestMapping(value="/salvar-denuncia", method=RequestMethod.POST)
	public ModelAndView salvarDenuncia(Denuncia denuncia, RedirectAttributes redirectAttributes){		
		denunciaDao.salvar(denuncia);		
		
		redirectAttributes.addFlashAttribute("messagem-busca", "Denúncia feita com sucesso!!!");
		redirectAttributes.addFlashAttribute("denuncia", denuncia);		
		return new ModelAndView("redirect:denuncia");
	}	 
	
	
	
	@RequestMapping(value="/buscar-denuncia", method=RequestMethod.POST)
	public ModelAndView buscarDenuncia(int denunciaId, RedirectAttributes redirectAttributes){		

		Denuncia denuncia = denunciaDao.buscarPorId(denunciaId);		
	
		redirectAttributes.addFlashAttribute("denuncia", denuncia);
		
		return new ModelAndView("redirect:denuncia");
	}

	

}
