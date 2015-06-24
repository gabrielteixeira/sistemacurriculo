/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fean.DAO;

import br.com.fean.modelo.Curriculo;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Rafael
 */
public class CurriculoDAO {
    /*
     public boolean cadastrarCurriculo(Curriculo curriculo){
     boolean retorno = false;
     Conexao conn = new Conexao();
     try {
     Statement stmt = (Statement) conn.getConn().createStatement();
     //stmt.execute("INSERT INTO empresa (NM_EMPRESA,I_CNPJ) VALUES ('"+empresa.getNM_EMPRESA()+"','"+empresa.getI_CNPJ()+"')");
     stmt.execute("INSERT INTO curriculo (NM_NOME,I_CPF,I_RG,NM_LOGRADOURO,NM_EMAIL,ID_NIVEL_ESCOLARIDADE,ID_EMPREGO_ATUAL,NM_COMO_NOS_ACHOU) VALUES ('"+curriculo.getNM_NOME()+"','"+curriculo.getI_CPF()+"','"+curriculo.getI_RG()+"','"+curriculo.getNM_LOGRADOURO()+"','"+curriculo.getNM_EMAIL()+"','"+curriculo.getID_NIVEL_ESCOLARIDADE()+"','"+curriculo.getID_EMPREGO_ATUAL()+"','"+curriculo.getNM_COMO_NOS_ACHOU()+"')");
     retorno = true;
     } catch (Exception e) {
     e.printStackTrace();
     }finally{
     conn.fecharConexao();
     }
     return retorno;
     }   */

    public boolean cadastrarCurriculo(Curriculo curriculo) {
        boolean retorno = false;
        Conexao conn = new Conexao();
        try {
            Statement stmt = (Statement) conn.getConn().createStatement();
            stmt.execute("INSERT INTO curriculo (NM_NOME,I_CPF,I_RG,NM_LOGRADOURO,NM_EMAIL) VALUES ('" + curriculo.getNM_NOME() + "','"+curriculo.getI_CPF()+ "','"+curriculo.getI_RG()+ "','"+curriculo.getNM_LOGRADOURO()+ "','"+curriculo.getNM_EMAIL()+"')");
            retorno = true;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            conn.fecharConexao();
        }
        return retorno;
    }

    public void deleteCurriculo(String cpf) {
        Conexao conn = new Conexao();
        try {
            Statement stmt = (Statement) conn.getConn().createStatement();
            stmt.execute("DELETE FROM curriculo where I_CPF = '" + cpf + "'");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            conn.fecharConexao();
        }
    }
}
