/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fean.modelo;

/**
 *
 * @author Rafael
 */
public class Empresa {
    
    private String nomeEmpresa;
    private String cnpj;
    private String vagas;

    public Empresa() {
    }

    public Empresa(String nomeEmpresa, String cnpj, String vagas) {
        this.nomeEmpresa = nomeEmpresa;
        this.cnpj = cnpj;
        this.vagas = vagas;
    }

    public void setCNPJ(String cnpj) {
        this.cnpj = cnpj;
    }

    public void setNome(String nomeEmpresa) {
        this.nomeEmpresa = nomeEmpresa;
    }
    
    public String getCNPJ() {
        return cnpj;
    }

    public String getNome() {
        return nomeEmpresa;
    }         

    public void setVagas(String vagas) {
        this.vagas = vagas;
    }

    public String getVagas() {
        return vagas;
    }
}
