/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fean.DAO;

import br.com.fean.modelo.Usuario;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Rafael
 */
public class UsuarioDAO {
    
    public boolean cadastrarUsuario(Usuario usuario){
        boolean retorno = false;
        Conexao conn = new Conexao();
        try {
            Statement stmt = (Statement) conn.getConn().createStatement();
            stmt.execute("INSERT INTO usuario (nome,login,senha,perfil) VALUES ('"+usuario.getNome()+"','"+usuario.getLogin()+"','"+usuario.getSenha()+"','"+usuario.getPerfil()+"')");
            retorno = true;
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            conn.fecharConexao();
        }
        return retorno;
    }   
    
    public List<Usuario> listaUsuario(){
        List<Usuario> usuarios = new ArrayList<Usuario>();
        Conexao conn = new Conexao();
        try {
            Statement stmt = (Statement) conn.getConn().createStatement();
            ResultSet rs = stmt.executeQuery("Select * from cliente");
            while(rs.next()){
                Usuario usuario = new Usuario(
                        rs.getString("nome"),
                        rs.getString("login"),
                        rs.getString("senha"),
                        rs.getString("perfil"));
                usuarios.add(usuario);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally{
            conn.fecharConexao();
        }
        
        return usuarios;
    }
    
    public void deleteUsuario(String nomeUsuario){
        Conexao conn = new Conexao();
        try {
            Statement stmt = (Statement) conn.getConn().createStatement();
            stmt.execute("DELETE FROM usuario where nome = '"+nomeUsuario+"'");
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            conn.fecharConexao();
        }        
    }
}
