package org.conselho.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.conselho.models.Denuncia;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class DenunciaDAO {

	@PersistenceContext
	EntityManager manager;
	
	
	public void salvar(Denuncia denuncia){
		manager.persist(denuncia);
	}


	public Denuncia buscarPorId(int denunciaId) {
		return manager.find(Denuncia.class, denunciaId);
	}


	public List<Denuncia> lista() {
		return manager.createQuery("from Denuncia", Denuncia.class).getResultList();
	}
	
}
