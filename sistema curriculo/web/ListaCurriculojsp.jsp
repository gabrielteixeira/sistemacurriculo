<%-- 
    Document   : ListaClientejsp
    Created on : 28/11/2014, 07:46:23
    Author     : Rafael
--%>

<%@page contentType="text/html;charset=ISO-8859-1" pageEncoding="UTF-8"%>

<%@page import="br.com.fean.DAO.CurriculoDAO" %>
<%@page import="java.util.List" %>
<%@page import="br.com.fean.modelo.Curriculo" %>

<!DOCTYPE html>
<html xmlns:h="http://xmlns.jcp.org/jsf/html" xmlns:f="http://xmlns.jcp.org/jsf/core">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap.min.css" rel="stylesheet">
        <link href="style.css" rel="stylesheet">
        <title>Lista de clientes</title>
    </head>
    <body>
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation"> 
            <div class="container-fluid "> 
                <ul class="nav nav-pills"> 
                    <a class="perfil">Administrador</a>
                    <li role="presentation" >
                        <a class="paginaAtual">Currículos</a>
                    </li> 
                    <li role="presentation" >
                        <a href="ListaEmpresajsp.jsp">Empresas</a>
                    </li>
                    <li role="presentation">
                        <a href="ListaUsuariojsp.jsp">Usuários</a>
                    </li>
                    <li role="presentation">
                        <a href="Loginjsp.jsp">Sair</a>
                    </li>
                </ul>
            </div>
        </nav>
        <form class="form-horizontal" style="width: 100%" role="form" name="listaCurriculo" action="ListaCurriculojsp" method="POST" onsubmit="return true;
                return false;">
            <div class="filtro">
                <div class="escolaridade">
                    <label class="col-sm-2 control-label" id="labelEscolaridade" for="estado">Escolaridade:</label>
                    <div class="col-sm-10">
                        <select class="busca" name="ID_NIVEL_ESCOLARIDADE" class="form-control" id="ID_NIVEL_ESCOLARIDADE">
                            <option>Selecione...</option>
                            <option>2</option>
                            <option>Pós-graduação</option>
                            <option>Mestrado</option>
                            <option>Doutorado</option>

                        </select>
                    </div>
                </div>
                <div class="espec">
                    <label class="col-sm-2 control-label" id="labelEscolaridade" for="estado">Especialização:</label>
                    <div class="col-sm-10">
                        <select class="busca" name="ID_EMPREGO_ATUAL" class="form-control" id="ID_EMPREGO_ATUAL">
                            <option>Selecione...</option>
                            <option>VENDEDOR</option>
                            <option>Pós-graduação</option>
                            <option>Mestrado</option>
                            <option>Doutorado</option>

                        </select>
                    </div>

                    <button class="btn btn-primary" id="botaoprocurar" type="submit">Filtrar</button>
                </div>
            </div>
        </form>
        <%
            CurriculoDAO curriculoDAO = new CurriculoDAO();
            List<Curriculo> curriculos = curriculoDAO.listaCurriculo();
            application.setAttribute("curriculos", curriculos);
        %>

        <div class="table" id="listacurriculo">
            <table class="table-striped" style="width: 100%" id="teste">
                <tr>
                    <td><b>Nome</b></td>
                    <td><b>Escolaridade</b></td>
                    <td><b>CPF</b></td>
                    <td><b>RG</b></td>
                    <td><b>Rua</b></td>
                    <td><b>E-mail</b></td>
                    <td><b>Como nos achou</b></td>
                    <td><b>Tem filhos</b></td>
                    <td><b>Qtd filhos</b></td>
                    <td><b>Deseja ter filhos</b></td>
                    <td><b>Emprego</b></td>
                </tr>
                <% for (int i = 0; i < curriculos.size(); i++) {
                        Curriculo curriculo = curriculos.get(i);
                %>
                <tr class="selec">
                    <td class=""><%= curriculo.getNM_NOME()%></td>
                    <td class=""><%= curriculo.getID_NIVEL_ESCOLARIDADE()%></td>
                    <td class=""><%= curriculo.getI_CPF()%></td>
                    <td class=""><%= curriculo.getI_RG()%></td>
                    <td class=""><%= curriculo.getNM_LOGRADOURO()%></td>
                    <td class=""><%= curriculo.getNM_EMAIL()%></td>
                    <td class=""><%= curriculo.getNM_COMO_NOS_ACHOU()%></td>
                    <td class=""><%= curriculo.getIS_TEM_FILHOS()%></td>
                    <td class=""><%= curriculo.getI_QTD_FILHOS()%></td>
                    <td class=""><%= curriculo.getIS_QUER_TER_FILHOS()%></td>
                    <td class=""><%= curriculo.getID_EMPREGO_ATUAL()%></td>
                    <td class="">
                        <button class="btn btn-primary">Candidatar</button>
                        <button class="btn btn-primary" onclick='deleteCurriculo()()(<%=curriculo.getNM_NOME()%>)'>Excluir</button>
                    </td>
                </tr>        
                <%}%>
            </table>  
        </div>
    </body>
    <script>
        function deleteCurriculo(nomeDoCurriculo) {
         <td class="">Teste</td>

        <% 
                
        %>
        }
    </script>
</html>
