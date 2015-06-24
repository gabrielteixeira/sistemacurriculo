/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.com.fean.modelo;

/**
 *
 * @author Rodolpho Curtolo
 */
public class Curriculo {
    String NM_NOME;
    String I_CPF;
    String I_RG;
    String NM_LOGRADOURO;
    String NM_EMAIL;
    Integer ID_NIVEL_ESCOLARIDADE;
    Integer ID_EMPREGO_ATUAL;
    String NM_COMO_NOS_ACHOU;
    
    public Curriculo(String NM_NOME, String I_CPF, String I_RG, String NM_LOGRADOURO, String NM_EMAIL, 
            Integer ID_NIVEL_ESCOLARIDADE, Integer ID_EMPREGO_ATUAL, String NM_COMO_NOS_ACHOU) {
        
        this.NM_NOME=NM_NOME;
        this.I_CPF=I_CPF;
        this.I_RG=I_RG;
        this.NM_LOGRADOURO=NM_LOGRADOURO;
        this.NM_EMAIL=NM_EMAIL;
        this.ID_NIVEL_ESCOLARIDADE=ID_NIVEL_ESCOLARIDADE;
        this.ID_EMPREGO_ATUAL=ID_EMPREGO_ATUAL;
        this.NM_COMO_NOS_ACHOU=NM_COMO_NOS_ACHOU;
        
    }
    
        public Curriculo(String NM_NOME, String I_CPF, String I_RG, String NM_LOGRADOURO, String NM_EMAIL) {
        
        this.NM_NOME=NM_NOME;
        this.I_CPF=I_CPF;
        this.I_RG=I_RG;
        this.NM_LOGRADOURO=NM_LOGRADOURO;
        this.NM_EMAIL=NM_EMAIL;
        
    }

    public String getNM_NOME() {
        return NM_NOME;
    }

    public void setNM_NOME(String NM_NOME) {
        this.NM_NOME = NM_NOME;
    }

    public String getI_CPF() {
        return I_CPF;
    }

    public void setI_CPF(String I_CPF) {
        this.I_CPF = I_CPF;
    }

    public String getI_RG() {
        return I_RG;
    }

    public void setI_RG(String I_RG) {
        this.I_RG = I_RG;
    }

    public String getNM_LOGRADOURO() {
        return NM_LOGRADOURO;
    }

    public void setNM_LOGRADOURO(String NM_LOGRADOURO) {
        this.NM_LOGRADOURO = NM_LOGRADOURO;
    }

    public String getNM_EMAIL() {
        return NM_EMAIL;
    }

    public void setNM_EMAIL(String NM_EMAIL) {
        this.NM_EMAIL = NM_EMAIL;
    }

    public int getID_NIVEL_ESCOLARIDADE() {
        return ID_NIVEL_ESCOLARIDADE;
    }

    public void setID_NIVEL_ESCOLARIDADE(int ID_NIVEL_ESCOLARIDADE) {
        this.ID_NIVEL_ESCOLARIDADE = ID_NIVEL_ESCOLARIDADE;
    }

    public int getID_EMPREGO_ATUAL() {
        return ID_EMPREGO_ATUAL;
    }

    public void setID_EMPREGO_ATUAL(int ID_EMPREGO_ATUAL) {
        this.ID_EMPREGO_ATUAL = ID_EMPREGO_ATUAL;
    }

    public String getNM_COMO_NOS_ACHOU() {
        return NM_COMO_NOS_ACHOU;
    }

    public void setNM_COMO_NOS_ACHOU(String NM_COMO_NOS_ACHOU) {
        this.NM_COMO_NOS_ACHOU = NM_COMO_NOS_ACHOU;
    }

    
}
