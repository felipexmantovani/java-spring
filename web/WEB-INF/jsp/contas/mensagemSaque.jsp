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
        <title>Saque</title>
    </head>
<body>
    <div class="container h-100">
        <div class="row h-100 d-flex justify-content-center align-items-center">
            <div class="col-sm-12 text-center">
                <div class="alert alert-success">Saque realizado com sucesso!</div>

                <a href="pessoas" class="btn btn-info" title="Voltar">Voltar</a>
            </div>
        </div>
    </div>
</body>
</html>
