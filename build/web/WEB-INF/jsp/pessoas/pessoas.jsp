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
        <title>Pessoas Cadastradas</title>
    </head>
<body>
    <header>
        <div class="container">
            <h1>Banco</h1>
            
            <c:import url="../menu.jsp"></c:import>
        </div>
        
    </header>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div>
                    <h2 class="float-left">Pessoas Cadastradas</h2>
                    <a href="cadastroPessoas" class="btn btn-success mb-3 float-right" title="Nova Pessoa">Nova Pessoa</a>
                </div>
                
                <table class="table">
                    <thead>
                        <tr>
                            <td>Conta</td>
                            <td>CPF</td>
                            <td>Nome</td>
                            <td>Cidade</td>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${pessoa}" var="p">
                        <tr>
                            <td>${p.numeroConta} - ${p.tipoConta}</td>
                            <td>${p.cpf}</td>
                            <td>${p.nome} ${p.sobrenome}</td>
                            <td>${p.cidade}-${p.estado}</td>
                        </tr>
                        </c:forEach>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td>Conta</td>
                            <td>CPF</td>
                            <td>Nome</td>
                            <td>Cidade</td>
                        </tr>
                    </tfoot>
                </table>  
            </div>
        </div> <!--row-->
              
    </div>
</body>
</html>
