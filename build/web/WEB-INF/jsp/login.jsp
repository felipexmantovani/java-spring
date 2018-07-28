<%-- 
    Document   : contas
    Created on : 14-lug-2018, 13.53.18
    Author     : felipe
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="resources/css/bootstrap.css" />" rel="stylesheet" type="text/css" />
        <link href="<c:url value="resources/css/contas.css" />" rel="stylesheet" type="text/css" />
        <title>Login</title>
    </head>
<body id="pageLogin">
    <div class="row h-100 d-flex justify-content-center align-items-center">
        <div id="box-login" class="text-center">
            <h1>Login</h1>  

            <form action="validaLogin" method="POST">

                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon3">Login</span>
                    </div>
                    <input type="text" class="form-control" name="login">
                </div>

                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon3">Senha</span>
                    </div>
                    <input type="password" class="form-control" name="senha">
                </div>
                
                <button type="submit" class="btn btn-success w-100" title="Entrar">Entrar</button>

            </form> <!--form-->
        </div>
    </div>
</body>
</html>
