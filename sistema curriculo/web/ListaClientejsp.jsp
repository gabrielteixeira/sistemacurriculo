<%-- 
    Document   : ListaClientejsp
    Created on : 28/11/2014, 07:46:23
    Author     : Rafael
--%>

<%@page contentType="text/html;charset=ISO-8859-1" pageEncoding="UTF-8"%>

<%@page import="br.com.fean.DAO.ClienteDAO" %>
<%@page import="java.util.List" %>
<%@page import="br.com.fean.modelo.Cliente" %>

<!DOCTYPE html>
<html xmlns:h="http://xmlns.jcp.org/jsf/html" xmlns:f="http://xmlns.jcp.org/jsf/core">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap.min.css" rel="stylesheet">
        <link href="ListaClientecss.css" rel="stylesheet">
        <title>Lista de clientes</title>
    </head>
    <body>
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation"> 
        <div class="container-fluid "> 
            <ul class="nav nav-pills"> 
                <li role="presentation" >
                    <a href="HomeClientejsp.jsp">Home</a>
                </li> 
                <li role="presentation" >
                    <a href="Clientejsp.jsp">Cadastrar</a>
                </li>
                <li role="presentation">
                    <a href="ListaClientejsp.jsp">Lista</a>
                </li>
            </ul>
        </div>
    </nav>
    <%
        ClienteDAO clienteDAO = new ClienteDAO();
        List<Cliente> clientes = clienteDAO.listaCliente();
        application.setAttribute("clientes", clientes);
    %>
    <div class="table">
    <table class="table-striped">
        <tr>
            <td><b>Nome</b></td>
            <td><b>Email</b></td>
            <td><b>Sexo</b></td>
            <td><b>DDD</b></td>
            <td><b>Telefone</b></td>
            <td><b>Endereco</b></td>
            <td><b>Cidade</b></td>
            <td><b>Estado</b></td>
            <td><b>Bairro</b></td>
            <td><b>Acoes</b></td>
        </tr>
        <% for(int i = 0; i < clientes.size(); i++){
           Cliente cliente = clientes.get(i); 
        %>
            <tr>
                <td class=""><%= cliente.getNome() %></td>
                <td class=""><%= cliente.getEmail() %></td>
                <td class=""><%= cliente.getSexo() %></td>
                <td class=""><%= cliente.getDdd() %></td>
                <td class=""><%= cliente.getTelefone() %></td>
                <td class=""><%= cliente.getEndereco() %></td>
                <td class=""><%= cliente.getCidade() %></td>
                <td class=""><%= cliente.getEstado() %></td>
                <td class=""><%= cliente.getBairro() %></td>
                <td class="">
                    <button>Alterar</button>
                    <button onclick='deleteCliente(<%=cliente.getNome()%>)'>Excluir</button>
                </td>
            </tr>        
<%} %>
    </table>  
    </div>
    </body>
    <script>
        function deleteCliente(nomeDoCliente) {
            alert(nomeDoCliente);
        }
    </script>
</html>
