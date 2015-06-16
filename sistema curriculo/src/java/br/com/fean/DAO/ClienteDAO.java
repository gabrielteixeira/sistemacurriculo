/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fean.DAO;

import br.com.fean.modelo.Cliente;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Rafael
 */
public class ClienteDAO {
    
    public boolean cadastrarCliente(Cliente cliente){
        boolean retorno = false;
        Conexao conn = new Conexao();
        try {
            Statement stmt = (Statement) conn.getConn().createStatement();
            stmt.execute("INSERT INTO cliente (nome,email,sexo,ddd,telefone,endereco,cidade,estado,bairro) VALUES ('"+cliente.getNome()+"','"+cliente.getEmail()+"','"+cliente.getSexo()+"','"+cliente.getDdd()+"','"+cliente.getTelefone()+"','"+cliente.getEndereco()+"','"+cliente.getCidade()+"','"+cliente.getEstado()+"','"+cliente.getBairro()+"')");
            retorno = true;
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            conn.fecharConexao();
        }
        return retorno;
    }   
    
    public List<Cliente> listaCliente(){
        List<Cliente> clientes = new ArrayList<Cliente>();
        Conexao conn = new Conexao();
        try {
            Statement stmt = (Statement) conn.getConn().createStatement();
            ResultSet rs = stmt.executeQuery("Select * from cliente");
            while(rs.next()){
                Cliente cliente = new Cliente(
                        rs.getString("nome"),
                        rs.getString("email"),
                        rs.getString("sexo"),
                        rs.getString("ddd"),
                        rs.getString("telefone"),
                        rs.getString("endereco"),
                        rs.getString("cidade"),
                        rs.getString("estado"),
                        rs.getString("bairro"));
                clientes.add(cliente);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally{
            conn.fecharConexao();
        }
        
        return clientes;
    }
    
    public void deleteCliente(String nomeCliente){
        Conexao conn = new Conexao();
        try {
            Statement stmt = (Statement) conn.getConn().createStatement();
            stmt.execute("DELETE FROM cliente where nome = '"+nomeCliente+"'");
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            conn.fecharConexao();
        }        
    }
}
