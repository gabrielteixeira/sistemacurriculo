<%-- 
    Document   : Clientejsp
    Created on : 26/11/2014, 19:44:16
    Author     : Rafael
--%>


<%@page contentType="text/html;charset=ISO-8859-1" pageEncoding="UTF-8"%>        
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="bootstrap.min.css" rel="stylesheet">
    <link href="Clientecss.css" rel="stylesheet">
    <title>Cadastro De Usuários</title>
    <script type="text/javascript">
        function validaCampo() {
            if (document.cadastro.nome.value == "") {
                alert("O Campo nome é obrigatório!");
                return false;
            } else if (document.cadastro.login.value == "") {
                alert("O Campo email é obrigatório!");
                return false;
            } 
            else if (document.cadastro.senha.value != document.cadastro.ConfirmaSenha.value) {
                alert("Senhas não coincidem.");
                return false;
            }else if (document.cadastro.senha.value == "") {
                alert("O Campo endereço é obrigatório!");
                return false;
            } else if (document.cadastro.perfil.value == "") {
                alert("O Campo endereço é obrigatório!");
                return false;
            } else
                return true;
        }
    </script>
</head>     
<body>
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation"> 
        <div class="container-fluid "> 
            <ul class="nav nav-pills"> 
                <li role="presentation" >
                    <a href="Loginjsp.jsp">Home</a>
                </li> 
            </ul>
        </div>
    </nav>
    <form class="form-horizontal" role="form" name="cadastro" action="Usuariojsp" method="POST" onsubmit="return validaCampo();
            return false;">
        <div class="form-group"> 
            <label class="col-sm-2 control-label" id="labelNome" for="nome">Nome:</label>
            <div class="col-sm-10">
                <input name="nome" class="form-control" type="text" id="nome" size="70" maxlength="60" placeholder="Nome"/>
            </div>
        </div>
        <div class="form-group">    
            <label class="col-sm-2 control-label" id="labelLogin" for="login">Login:</label> 
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
            <label class="col-sm-2 control-label" id="labelSenha" for="senha">Confirmar Senha:</label>
            <div class="col-sm-10">
                <input name="ConfirmaSenha" class="form-control" type="password" id="ConfirmaSenha" size="70" maxlength="60" placeholder="Confirmação de senha"/>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label" id="labelPerfil" for="perfil">Perfil:</label>
            <div class="col-sm-10">
                <select name="perfil" class="form-control" id="perfil">
                    <option>Selecione...</option>
                    <option value="1">Empregador</option>
                    <option value="2">Empregado</option>
                    <option value="3">Administrador</option>
                </select>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <input name="cadastrar" type="submit" id="cadastrar" value="Cadastrar" class="btn btn-primary" />
                <input name="limpar" type="reset" id="limpar" value="Limpar" class="btn btn-primary" />
                <p>Campos com * sao obrigatorios</p>
            </div>
        </div>
    </form>
</body>
</html>
