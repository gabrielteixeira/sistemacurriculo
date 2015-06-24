<%-- 
    Document   : Clientejsp
    Created on : 26/11/2014, 19:44:16
    Author     : Rafael
--%>


<%@page import="java.util.ArrayList"%>
<%@page import="br.com.fean.DAO.UsuarioDAO"%>
<%@page import="br.com.fean.modelo.Usuario"%>
<%@page import="java.util.List;"%>
<%@page contentType="text/html;charset=ISO-8859-1" pageEncoding="UTF-8"%>        
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="bootstrap.min.css" rel="stylesheet">
    <link href="style.css" rel="stylesheet">
    <title>Cadastro De Clientes</title>
    <script type="text/javascript">
        function validaCampo() {
            if (document.cadastro.login.value == "") {
                alert("Login em branco.");
                return false;
            }
            else if (document.cadastro.senha.value == "") {
                alert("Senha em branco.");
                return false;
            }
            else
            return true;
        }
    </script>
</head>     
<body>
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation"> 
        <div class="container-fluid "> 
            <ul class="nav nav-pills"> 
                <li role="presentation" >
                    <a class="paginaAtual">Home</a>
                </li> 
                <li role="presentation" >
                    <a href="Usuariojsp.jsp">Cadastrar</a>
                </li>
            </ul>
        </div>
    </nav>
    <form class="form-horizontal" role="form" name="cadastro" action="Loginjsp" method="POST" onsubmit="return validaCampo();
            return false;">
        <div class="form-group"> 
            <label class="col-sm-2 control-label" id="labelLogin" for="nome">Login:</label>
            <div class="col-sm-10">
                <input name="login" class="form-control" type="text" id="login" size="70" maxlength="60" placeholder="Nome de usuário"/>
            </div>
        </div>
        <div class="form-group">    
            <label class="col-sm-2 control-label" id="labelSenha" for="senha">Senha:</label> 
            <div class="col-sm-10">
                <input name="senha" class="form-control" type="password" id="senha" size="70" maxlength="60" placeholder="Senha"/>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <input name="cadastrar" type="submit" id="cadastrar" value="Logar" class="btn btn-primary" />
            </div>
        </div>
    </form>
</body>
</html>
