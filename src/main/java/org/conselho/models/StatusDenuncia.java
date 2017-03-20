package org.conselho.models;

public enum StatusDenuncia {
	PENDENTE("Pendente"), 
	RECEBIDA("Denúncia sob Investigação"),
	FINALIZADA("Processo Judicial Gerado"),
	
	;
	
	private String messagem;
	
	private StatusDenuncia(String messagem) {
		this.messagem = messagem;
	}
	

	public String getMessagem() {
		return messagem;
	}
	
}
