<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <c:import url="../../layout/imports.jsp"></c:import>
    <title></title>
</head>
 
<body>
 <c:import url="../../layout/menu.jsp"></c:import>
 <div class="page-wrap">
        <div class="container ">
            <p class="lead">Cadastro de Estabelecimento</p>
        </div>
<form action="#" method="post">
        <div class="container">

            <div class="row-fluid">

                <div class="span4">
                    <h5 class="lead">Empresa</h5>
                    <ul class="nav nav-list">
                        <li class="divider">
                    </ul>

                    <label for="rzsocial">Razão Social</label>
                    <input type="text" id="rzsocial">
                    <label for="nomefantasia">Nome Fantasia</label>
                    <input type="text" id="nomefantasia">
                    <label for="email">Email</label>
                    <input type="text" id="email">
                    <label for="emailalternativo">Email Alternativo</label>
                    <input type="text" id="emailalternativo">

                    <label for="cnpj">CNPJ</label>
                    <input type="text" id="cnpj">
                    <label for="espestabelecimento">Especialidade do Estabelencimento</label>
                    <select type="text" id="espestabelecimento">
                        <!-- foreach especialidade -->
                    </select>
                    <label for="senha">Senha para Acesso</label>
                    <input type="password" id="senha">
                    <label for="checksenha">Confirme Senha para Acesso</label>
                    <input type="password" id="checksenha">

                </div>

                <div class="span4">
                    <h5 class="lead">Endereço</h5>
                    <ul class="nav nav-list">
                        <li class="divider">
                    </ul>
                    <label for="logradouro">Logradouro</label>
                    <input type="text" id="logradouro">
                    <label for="bairro">Bairro</label>
                    <input type="text" id="bairro">
                    <label for="numero">Numero</label>
                    <input type="text" id="numero">
                    <label for="cep">CEP</label>
                    <input type="text" id="cep">

                    <label for="estado">Estado</label>
                    <select id="estado">
                        <!-- foreach estado-->
                    </select>
                    <label for="cidade">Cidade</label>
                    <input type="text" id="cidade">
                    <label for="telefone">Telefone</label>
                    <input type="text" id="telefone">
                    <label for="telefonealternativo">Telefone Alternativo</label>
                    <input type="text" id="telefonealternativo">

            </div>
            <div class="row-fluid">
                <div class="span12">
                    <input type="button" id="btn" class="btn btn-primary" value="Salvar">
                </div>

            </div>

        </div>

    </div>
    </form>
       </div>
		

    <!--  footer -->
    <c:import url="../../layout/footer.jsp"></c:import>
    </body>
    </html>
