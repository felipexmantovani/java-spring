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
        <title>Cadastro de Pessoa</title>
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
                <h2>Cadastro de Pessoa</h2>
                
                <form action="persistirPessoa" method="POST">
                    
                    <h4>Conta</h4>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <label class="input-group-text" for="inputGroupSelect01">Tipo da Conta</label>
                        </div>
                        <select name="tipoConta" class="custom-select" id="inputGroupSelect01">
                            <option selected>-</option>
                            <option value="CC">Conta Corrente</option>
                            <option value="CP">Conta Poupança</option>
                        </select>
                    </div>
                    
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon3">Número da Conta</span>
                        </div>
                        <input name="numeroConta" maxlength="6" type="text" class="form-control" name="numeroConta" id="inputNumeroConta">
                    </div>
                    
                    <hr>
                    
                    <div class="row">
                        <div class="col-sm-6">
                            <h4>Dados Pessoais</h4>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon3">CPF</span>
                                </div>
                                <input type="text" class="form-control" name="cpf">
                            </div>

                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon3">Nome</span>
                                </div>
                                <input type="text" class="form-control" name="nome">
                            </div>

                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon3">Sobrenome</span>
                                </div>
                                <input type="text" class="form-control" name="sobrenome">
                            </div>

                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon3">Data de Nascimento</span>
                                </div>
                                <input type="text" class="form-control" name="dataDeNascimento">
                            </div>

                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon3">RG</span>
                                </div>
                                <input type="text" class="form-control" name="rg">
                            </div>

                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon3">E-mail</span>
                                </div>
                                <input type="text" class="form-control" name="email">
                            </div>
                        </div>
                        
                        <div class="col-sm-6">
                            <h4>Dados de Endereço</h4>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon3">Rua</span>
                                </div>
                                <input type="text" class="form-control" name="rua">
                            </div>

                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon3">Número</span>
                                </div>
                                <input type="text" class="form-control" name="numero"x>
                            </div>

                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon3">Bairro</span>
                                </div>
                                <input type="text" class="form-control" name="bairro">
                            </div>

                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon3">Estado</span>
                                </div>
                                <input type="text" class="form-control" name="estado">
                            </div>

                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon3">Cidade</span>
                                </div>
                                <input type="text" class="form-control" name="cidade">
                            </div>

                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon3">CEP</span>
                                </div>
                                <input type="text" class="form-control" name="cep">
                            </div>
                        </div>
                    </div>
                    
                    <button type="submit" class="btn btn-success w-100" title="Cadastrar">Cadastrar</button>
                    
                </form>
            </div>
        </div>
    </div>
</body>
</html>
