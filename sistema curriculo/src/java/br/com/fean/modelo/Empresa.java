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
    
    private String nome;
    private String cnpj;

    public Empresa() {
    }

    public Empresa(String nome, String cnpj) {
        this.nome = nome;
        this.cnpj = cnpj;
    }

    public void setCNPJ(String cnpj) {
        this.cnpj = cnpj;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
    public String getCNPJ() {
        return cnpj;
    }

    public String getNome() {
        return nome;
    }         
    
}
