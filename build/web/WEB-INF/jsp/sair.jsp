<%-- 
    Document   : contas
    Created on : 14-lug-2018, 13.53.18
    Author     : felipe
--%>
<% session.invalidate(); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="resources/css/bootstrap.css" />" rel="stylesheet" type="text/css" />
        <link href="<c:url value="resources/css/contas.css" />" rel="stylesheet" type="text/css" />
        <title>Contas</title>
    </head>
<body>
    <div class="container h-100">
        <div class="row h-100 d-flex justify-content-center align-items-center">
            <div class="col-sm-12 text-center">
                <% HttpSession nsession = request.getSession(false);
                if( nsession != null ) {
                    out.write("<div class='alert alert-danger'>Erro ao deslogar</div>");
                    out.write("<a href='pessoas' class='btn btn-info' title='Voltar'>Voltar</a>");
                } else {
                    out.write("<div class='alert alert-success'>Deslogado com Sucesso!</div>");
                    out.write("<a href='login' class='btn btn-info' title='Fazer Login'>Fazer Login</a>");
                }
                %>
            </div>
        </div>
    </div>
</body>
</html>
