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
    <link href="Loginjsp.css" rel="stylesheet">
    <link href="style.css" rel="stylesheet">
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
            } else if (document.cadastro.senha.value == "") {
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
                <a class="perfil">Usuário</a>
                <li role="presentation" >
                    <a class="paginaAtual">Buscar Vagas</a>
                </li>
                <li role="presentation" >
                    <a href="CadastroCurriculojsp.jsp">Currículo</a>
                </li>
                <li role="presentation" >
                    <a href="Loginjsp.jsp">Sair</a>
                </li>
            </ul>
        </div>
    </nav>
    <form class="form-horizontal" role="form" name="cadastro" action="Usuariojsp" method="POST" onsubmit="return validaCampo();
            return false;">
        <div class="form-group"> 
            <div class="col-sm-10">
                <input name="nome" class="form-control" type="text" id="nome" size="70" maxlength="60" placeholder="Pesquisar por vagas"/>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <input name="cadastrar" type="submit" id="cadastrar" value="Buscar" class="buscar" />
            </div>
        </div>
    </form>
</body>
</html>
