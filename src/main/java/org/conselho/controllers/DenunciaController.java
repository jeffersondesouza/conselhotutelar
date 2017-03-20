package org.conselho.controllers;

import java.lang.ProcessBuilder.Redirect;
import java.util.Arrays;
import java.util.List;

import org.conselho.dao.AgressaoDAO;
import org.conselho.dao.DenunciaDAO;
import org.conselho.dao.StatusDAO;
import org.conselho.models.Denuncia;
import org.conselho.models.StatusDenuncia;
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

	@Autowired
	StatusDAO statusDAO;

	@RequestMapping("/fazer-denuncia")
	public ModelAndView formDenunciar() {
		return new ModelAndView("denuncia/denuncia-form").addObject("tiposAgressao", agressaoDao.lista());
	}

	@RequestMapping("/acompanhar-denuncia")
	public String acompanharDenuncia() {
		return "denuncia/denuncia-buscar-form";
	}

	@RequestMapping(value = "/salvar-denuncia", method = RequestMethod.POST)
	public ModelAndView salvarDenuncia(Denuncia denuncia, RedirectAttributes redirectAttributes) {
		denunciaDao.salvar(denuncia);

		redirectAttributes.addFlashAttribute("messagem-busca", "Denúncia feita com sucesso!!!");
		redirectAttributes.addFlashAttribute("denuncia", denuncia);
		return new ModelAndView("redirect:denuncia");
	}

	@RequestMapping(value = "/buscar-denuncia", method = RequestMethod.POST)
	public ModelAndView buscarDenuncia(Integer denunciaId, RedirectAttributes redirectAttributes) {

		Denuncia denuncia = denunciaDao.buscarPorId(denunciaId);

		redirectAttributes.addFlashAttribute("denuncia", denuncia);

		return new ModelAndView("redirect:denuncia");
	}

	@RequestMapping("/denuncia")
	public ModelAndView denuncia() {
		
		
		List<StatusDenuncia> statusDenuncia = Arrays.asList(StatusDenuncia.values());
		
		
		return new ModelAndView("denuncia/denuncia").addObject("statusDenuncia",statusDenuncia);
	}

	@RequestMapping(value = "editar-status-denuncia")
	public ModelAndView editarStatusDenuncia(Integer denunciaId, StatusDenuncia novoStatus, RedirectAttributes redirectAttributes) {
		
		Denuncia denuncia = denunciaDao.buscarPorId(denunciaId);
		denuncia.setStatus(novoStatus);
		denunciaDao.salvar(denuncia);
		
		
		redirectAttributes.addFlashAttribute("denuncia", denuncia);
		
		
		return new ModelAndView("redirect:denuncia");
	}

}
