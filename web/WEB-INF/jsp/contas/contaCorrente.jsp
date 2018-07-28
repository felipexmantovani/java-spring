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
        <title>Contas Corrente</title>
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
                    <h2 class="float-left">Contas Corrente</h2>
                    <a href="cadastroPessoas" class="btn btn-success mb-3 float-right" title="Cadastrar Pessoa">Cadastrar Pessoa</a>
                </div>
                
                <table class="table">
                    <thead>
                        <tr>
                            <td>Conta</td>
                            <td>CPF</td>
                            <td>Nome</td>
                            <td>Cidade</td>
                            <td>Saldo</td>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${pessoa}" var="p">
                            <c:if test="${p.tipoConta == 'CC'}">
                                <tr>
                                    <td>${p.numeroConta} - ${p.tipoConta}</td>
                                    <td>${p.cpf}</td>
                                    <td>${p.nome} ${p.sobrenome}</td>
                                    <td>${p.cidade}-${p.estado}</td>
                                    <td>${p.saldo}</td>
                                </tr>
                            </c:if>
                        </c:forEach>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td>Conta</td>
                            <td>CPF</td>
                            <td>Nome</td>
                            <td>Cidade</td>
                            <td>Saldo</td>
                        </tr>
                    </tfoot>
                </table>  
            </div>
        </div> <!--row-->
              
    </div>

    <c:import url="../footer.jsp"></c:import>

