/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fean.DAO;

import br.com.fean.modelo.Empresa;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Rafael
 */
public class EmpresaDAO {
    
        public boolean cadastrarCliente(Empresa empresa){
        boolean retorno = false;
        Conexao conn = new Conexao();
        try {
            Statement stmt = (Statement) conn.getConn().createStatement();
            stmt.execute("INSERT INTO empresa (NM_EMPRESA,I_CNPJ) VALUES ('"+empresa.getNome()+"','"+empresa.getCNPJ()+"')");
            retorno = true;
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            conn.fecharConexao();
        }
        return retorno;
    }   
    
    public void deleteEmpresa(String nomeEmpresa){
        Conexao conn = new Conexao();
        try {
            Statement stmt = (Statement) conn.getConn().createStatement();
            stmt.execute("DELETE FROM empresa where nome = '"+nomeEmpresa+"'");
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            conn.fecharConexao();
        }        
    }
}
