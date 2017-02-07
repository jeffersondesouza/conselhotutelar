package org.conselho.models;

public enum StatusDenuncia {
	PENDENTE("Pendente"), 
	RECEBIDA("Esta denúncia esta sendo investigada, obrigado pela colaboração!");
	
	private String messagem;
	
	private StatusDenuncia(String messagem) {
		this.messagem = messagem;
	}
	

	public String getMessagem() {
		return messagem;
	}
	
}
