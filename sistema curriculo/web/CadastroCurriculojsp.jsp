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
    <link href="style.css" rel="stylesheet">
    <title>Cadastro De Currículo</title>
    <script type="text/javascript">
        function validaCampo() {
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
                    <a href="BuscarVagasjsp.jsp">Buscar Vagas</a>
                </li> 
                <li role="presentation" >
                    <a class="paginaAtual">Currículo</a>
                </li>
                <li role="presentation">
                    <a href="Loginjsp.jsp">Sair</a>
                </li>
            </ul>
        </div>
    </nav>
    <form class="form-horizontal" role="form" name="cadastroCurriculo" action="CadastroCurriculojsp" method="POST" onsubmit="return validaCampo();
            return false;">
        <div class="form-group"> 
            <label class="col-sm-2 control-label" id="labelNome" for="nome">Nome*:</label>
            <div class="col-sm-10">
                <input name="NM_NOME" class="form-control" type="text" id="NM_NOME" size="70" maxlength="60" />
            </div>
        </div>
        <div class="form-group">    
            <label class="col-sm-2 control-label" id="labelCpf" for="email">CPF*:</label> 
            <div class="col-sm-10">
                <input name="I_CPF" class="form-control" type="text" id="I_CPF" size="70" maxlength="60" />
            </div>
        </div>

        <div class="form-group">    
            <label class="col-sm-2 control-label" id="labelRg" for="rg">RG*:</label> 
            <div class="col-sm-10">
                <input name="I_RG" class="form-control" type="text" id="I_RG" size="70" maxlength="60" />
            </div>
        </div>

        <div class="form-group">    
            <label class="col-sm-2 control-label" id="labelEmail" for="email">Email*:</label> 
            <div class="col-sm-10">
                <input name="NM_EMAIL" class="form-control" type="text" id="NM_EMAIL" size="70" maxlength="60" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label" id="labelEscolaridade" for="estado">Escolaridade*:</label>
            <div class="col-sm-10">
                <select name="ID_NIVEL_ESCOLARIDADE" class="form-control" id="ID_NIVEL_ESCOLARIDADE">
                    <option>Selecione...</option>
                    <%
                        String teste = "Rodolpho";
                    %>
                    <option><%=teste%></option>
                    <option >27</option>
                    <option>Nivel Medio (2º grau)</option>
                    <option>Superior</option>
                    <option>Pós-graduação</option>
                    <option>Mestrado</option>
                    <option>Doutorado</option>

                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label" id="labelEscolaridade" for="estado">Último trabalho:</label>
            <div class="col-sm-10">
                <select name="ID_EMPREGO_ATUAL" class="form-control" id="ID_EMPREGO_ATUAL">
                    <option>Selecione...</option>
                    <option >50</option>
                    <option>Nivel Medio (2º grau)</option>
                    <option>Superior</option>
                    <option>Pós-graduação</option>
                    <option>Mestrado</option>
                    <option>Doutorado</option>

                </select>
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
            <label class="col-sm-2 control-label" id="labelEmail" for="email">Como nos achou:</label> 
            <div class="col-sm-10">
                <input name="NM_COMO_NOS_ACHOU" class="form-control" type="text" id="NM_COMO_NOS_ACHOU" size="70" maxlength="60" />
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <input name="cadastrar" type="submit" id="cadastrar" value="Salvar" class="btn btn-success" />
                <input name="limpar" type="reset" id="limpar" value="Limpar" class="btn btn-primary" />
                <p>Campos com * sao obrigatorios</p>
            </div>
        </div>
    </form>
</body>
</html>
