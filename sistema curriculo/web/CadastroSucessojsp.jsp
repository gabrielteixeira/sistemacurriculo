<%-- 
    Document   : CadastroSucessojsp
    Created on : 26/11/2014, 21:04:50
    Author     : Rafael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap.min.css" rel="stylesheet">
        <title>Clienteo cadastrado</title>
    </head>
    <script>
        function redirect() {
            window.location.assign("http://localhost:8080/CadastroCliente/");
        }        
    </script>
    <body>
        <h1>Cliente cadastrado com sucesso</h1>
        <button onclick="redirect()" type="button" class="btn btn-primary">Voltar</button>
    </body>
</html>
