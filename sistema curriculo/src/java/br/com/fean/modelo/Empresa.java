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
    
    private String NM_EMPRESA;
    private String I_CNPJ;

    public Empresa() {
    }

    public Empresa(String NM_EMPRESA, String I_CNPJ) {
        this.NM_EMPRESA = NM_EMPRESA;
        this.I_CNPJ = I_CNPJ;
    }

    public void setI_CNPJ(String I_CNPJ) {
        this.I_CNPJ = I_CNPJ;
    }

    public void setNM_EMPRESA(String NM_EMPRESA) {
        this.NM_EMPRESA = NM_EMPRESA;
    }
    
    public String getI_CNPJ() {
        return I_CNPJ;
    }

    public String getNM_EMPRESA() {
        return NM_EMPRESA;
    }         
}
