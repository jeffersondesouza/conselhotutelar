package org.conselho.models;

import java.util.Calendar;
import java.util.TimeZone;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Denuncia {
	
	public Denuncia() {
		this.status = StatusDenuncia.PENDENTE;
		
		TimeZone timeZone = TimeZone.getTimeZone("America/Sao_Paulo");
		
		
		this.data = Calendar.getInstance(timeZone);
	}

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;

	private String agressor;

	private String endereco;

	private String numeroCasa;

	private String pontoReferencia;

	private String bairro;

	private String tipoDenuncia;

	private String descricaoDenuncia;

	private String contato;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Calendar data;
	
	

	public Calendar getData() {
		return data;
	}

	private StatusDenuncia status;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAgressor() {
		return agressor;
	}

	public void setAgressor(String agressor) {
		this.agressor = agressor;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getNumeroCasa() {
		return numeroCasa;
	}

	public void setNumeroCasa(String numeroCasa) {
		this.numeroCasa = numeroCasa;
	}

	public String getPontoReferencia() {
		return pontoReferencia;
	}

	public void setPontoReferencia(String pontoReferencia) {
		this.pontoReferencia = pontoReferencia;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getTipoDenuncia() {
		return tipoDenuncia;
	}

	public void setTipoDenuncia(String tipoDenuncia) {
		this.tipoDenuncia = tipoDenuncia;
	}

	public String getDescricaoDenuncia() {
		return descricaoDenuncia;
	}

	public void setDescricaoDenuncia(String descricaoDenuncia) {
		this.descricaoDenuncia = descricaoDenuncia;
	}

	public String getContato() {
		return contato;
	}

	public void setContato(String contato) {
		this.contato = contato;
	}

		


	public StatusDenuncia getStatus() {
		return status;
	}

	public void setStatus(StatusDenuncia status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Denuncia [id=" + id + ", agressor=" + agressor + ", endereco=" + endereco + ", numeroCasa=" + numeroCasa
				+ ", pontoReferencia=" + pontoReferencia + ", bairro=" + bairro + ", tipoDenuncia=" + tipoDenuncia
				+ ", descricaoDenuncia=" + descricaoDenuncia + ", contato=" + contato + "]";
	}
	
	

}
