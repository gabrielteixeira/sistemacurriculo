<%-- 
    Document   : CadastroEmpresajsp
    Created on : 17/06/2015, 19:24:28
    Author     : Rafael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap.min.css" rel="stylesheet">
        <link href="CadastroEmpresacss.css" rel="stylesheet">
        <title>Cadastro de Empresa</title>
        <script type="text/javascript">
        function validaCampo() {
            if (document.cadastro.nome.value == "") {
                alert("O Campo nome é obrigatório!");
                return false;
            } else if (document.cadastro.email.value == "") {
                alert("O Campo email é obrigatório!");
                return false;
            } else if (document.cadastro.sexo.value == "") {
                alert("O Campo endereço é obrigatório!");
                return false;
            } else if (document.cadastro.endereco.value == "") {
                alert("O Campo endereço é obrigatório!");
                return false;
            } else if (document.cadastro.cidade.value == "") {
                alert("O Campo Cidade é obrigatório!");
                return false;
            } else if (document.cadastro.estado.value == "") {
                alert("O Campo Estado é obrigatório!");
                return false;
            } else if (document.cadastro.bairro.value == "") {
                alert("O Campo Bairro é obrigatório!");
                return false;
            } else if (document.cadastro.pais.value == "") {
                alert("O Campo país é obrigatório!");
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
                    <a href="HomeClientejsp.jsp">Home</a>
                </li> 
                <li role="presentation" >
                    <a href="Clientejsp.jsp">Cadastrar</a>
                </li>
                <li role="presentation">
                    <a href="ListaClientejsp.jsp">Lista</a>
                </li>
                <li role="presentation" >
                    <a href="CadastroEmpresajsp.jsp">Empresa</a>
                </li>
            </ul>
        </div>
    </nav>
        <form class="form-horizontal" role="form" name="cadastroEmpresa" action="CadastroEmpresajsp" method="POST" onsubmit="return validaCampo(); return false;">
        <div class="form-group"> 
            <label class="col-sm-2 control-label" id="labelNome" for="nome">Empresa*:</label>
            <div class="col-sm-10">
                <input name="nomeEmpresa" class="form-control" type="text" id="nomeEmpresa" size="70" maxlength="60" placeholder="Nome da Empresa"/>
            </div>
        </div>
        <div class="form-group"> 
            <label class="col-sm-2 control-label" id="labelNome" for="nome">CNPJ*:</label>
            <div class="col-sm-10">
                <input name="cnpj" class="form-control" type="text" id="cnpj" size="70" maxlength="60" placeholder="CNPJ da Empresa"/>
            </div>
        </div>
        <div class="form-group"> 
            <label class="col-sm-2 control-label" id="labelNome" for="nome">Vagas*:</label>
            <div class="col-sm-10">
                <input name="vagas" class="form-control" type="text" id="vagas" size="70" maxlength="60" placeholder="Numero de vagas"/>
            </div>
        </div>
        </form>
    </body>
</html>
