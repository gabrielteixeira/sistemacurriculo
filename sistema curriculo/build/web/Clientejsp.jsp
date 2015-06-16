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
    <title>Cadastro De Clientes</title>
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
            </ul>
        </div>
    </nav>
    <form class="form-horizontal" role="form" name="cadastro" action="Clientejsp" method="POST" onsubmit="return validaCampo();
                return false;">
        <div class="form-group"> 
            <label class="col-sm-2 control-label" id="labelNome" for="nome">Nome*:</label>
            <div class="col-sm-10">
                <input name="nome" class="form-control" type="text" id="nome" size="70" maxlength="60" />
            </div>
        </div>
        <div class="form-group">    
            <label class="col-sm-2 control-label" id="labelEmail" for="email">Email*:</label> 
            <div class="col-sm-10">
                <input name="email" class="form-control" type="text" id="email" size="70" maxlength="60" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label" id="labelSexo" for="sexo">Sexo*:</label>
            <div class="col-sm-10">
                <select name="sexo" class="form-control" id="sexo">
                    <option>Selecione...</option>
                    <option value="Masculino">Masculino</option>
                    <option value="Feminino">Feminino</option>
                </select>
            </div>
        </div>
        <div class="form-group">    
            <label class="col-sm-2 control-label" id="labelDDD" for="ddd">DDD*:</label>
            <div class="col-sm-10">
                <input name="ddd" class="form-control" type="text" id="ddd" size="4" maxlength="2"/>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label" id="labelTelefone" for="telefone">Telefone*:</label>                        
            <div class="col-sm-10">
                <input name="telefone" class="form-control" type="text" id="telefone" maxlength="9"/>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label" id="labelEndereco" for="endereco">Endereço*:</label>
            <div class="col-sm-10">
                <input name="endereco" class="form-control" type="text" id="endereco" size="70" maxlength="70" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label" id="labelCidade" for="cidade">Cidade*:</label>
            <div class="col-sm-10">
                <input name="cidade" class="form-control" type="text" id="cidade" maxlength="20" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label" id="labelEstado" for="estado">Estado*:</label>
            <div class="col-sm-10">
                <select name="estado" class="form-control" id="estado">
                    <option>Selecione...</option>
                    <option value="AC">AC</option>
                    <option value="AL">AL</option>
                    <option value="AP">AP</option>
                    <option value="AM">AM</option>
                    <option value="BA">BA</option>
                    <option value="CE">CE</option>
                    <option value="ES">ES</option>
                    <option value="DF">DF</option>
                    <option value="MA">MA</option>
                    <option value="MT">MT</option>
                    <option value="MS">MS</option>
                    <option value="MG">MG</option>
                    <option value="PA">PA</option>
                    <option value="PB">PB</option>
                    <option value="PR">PR</option>
                    <option value="PE">PE</option>
                    <option value="PI">PI</option>
                    <option value="RJ">RJ</option>
                    <option value="RN">RN</option>
                    <option value="RS">RS</option>
                    <option value="RO">RO</option>
                    <option value="RR">RR</option>
                    <option value="SC">SC</option>
                    <option value="SP">SP</option>
                    <option value="SE">SE</option>
                    <option value="TO">TO</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label" id="labelBairro" for="bairro">Bairro*:</label>
            <div class="col-sm-10">
                <input name="bairro" class="form-control" type="text" id="bairro" maxlength="20" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label" id="labelPais" for="pais">País*:</label>
            <div class="col-sm-10">
                <input name="pais" class="form-control" type="text" id="pais" maxlength="20"/>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <input name="cadastrar" type="submit" id="cadastrar" value="Concluir meu Cadastro!" class="btn btn-primary" />
                <input name="limpar" type="reset" id="limpar" value="Limpar Campos preenchidos!" class="btn btn-primary" />
                <p>Campos com * sao obrigatorios</p>
            </div>
        </div>
    </form>
</body>
</html>
