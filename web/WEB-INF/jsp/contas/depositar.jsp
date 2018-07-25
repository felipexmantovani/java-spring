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
        <title>Depositar</title>
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
                <h2>Depositar</h2>
                
                <form action="persistirDeposito" method="POST">
                    
                    <h4>Conta</h4>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <label class="input-group-text" for="inputGroupSelect01">Conta</label>
                        </div>
                        <select name="tipoConta" class="custom-select">
                            <option selected>-</option>
                            <c:forEach items="${pessoa}" var="p">
                                <option value="">${p.numeroConta} - ${p.nome} ${p.sobrenome}</option>
                            </c:forEach>
                        </select>
                    </div>
                    
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon3">Valor</span>
                        </div>
                        <input type="text" class="form-control" name="valor">
                    </div>
                    
                    <button type="submit" class="btn btn-success w-100" title="Depositar">Depositar</button>
                    
                </form> <!--form-->
            </div>
        </div>
    </div>
</body>
</html>
