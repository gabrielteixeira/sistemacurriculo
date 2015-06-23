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
            if (document.cadastroEmpresa.NM_EMPRESA.value == "") {
                alert("O Campo empresa é obrigatório!");
                return false;
            } else if (document.cadastroEmpresa.I_CNPJ.value == "") {
                alert("O Campo cnpj é obrigatório!");
                return false;
            } else
                return true;
        }
    </script>
    </head>
    <body>
        <form class="form-horizontal" role="form" name="cadastroEmpresa" action="CadastroEmpresajsp" method="POST" onsubmit="return validaCampo(); return false;">
        <div class="form-group"> 
            <label class="col-sm-2 control-label" id="labelNome" for="nome">Empresa*:</label>
            <div class="col-sm-10">
                <input name="NM_EMPRESA" class="form-control" type="text" id="NM_EMPRESA" size="70" maxlength="60" placeholder="Nome da Empresa"/>
            </div>
        </div>
        <div class="form-group"> 
            <label class="col-sm-2 control-label" id="labelNome" for="nome">CNPJ*:</label>
            <div class="col-sm-10">
                <input name="cnpj" class="form-control" type="text" id="cnpj" size="70" maxlength="60" placeholder="CNPJ da Empresa"/>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <input name="cadastrarEmpresa" type="submit" id="cadastrarEmpresa" value="Concluir meu Cadastro!" class="btn btn-primary" />
                <input name="limparCadastroEmpresa" type="reset" id="limparCadastroEmpresa" value="Limpar Campos preenchidos!" class="btn btn-primary" />
                <p>Campos com * sao obrigatorios</p>
            </div>
        </div>
        </form>
    </body>
</html>
