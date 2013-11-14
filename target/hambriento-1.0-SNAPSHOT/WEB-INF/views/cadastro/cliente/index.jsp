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
        <div class="container page-wrap">
            <p class="lead">Cadastro de Cliente</p>
      <form action="${pageContext.request.contextPath}/cliente/salvar" method="post">
        <div class="container">

            <div class="row-fluid">

                <div class="span4">
                    <h5 class="lead">Pessoa F�sica</h5>
                    <ul class="nav nav-list">
                        <li class="divider">
                    </ul>

                    <label for="nomecompleto">Nome Completo</label>
                    <input type="text" id="nomeCompleto" name="nomeCompleto">
                    <label for="cpf">CPF</label>
                    <input type="text" id="cpf" name="cpf">
                    <label for="rg">RG</label>
                    <input type="text" id="rg" name="rg">
                    <label for="datanascimento">Data de Nascimento </label>
                    <input type="date" id="dataNascimento" name="dataNascimento">

                    <label for="email">Email</label>
                    <input type="text" id="email" name="email">
                    <label for="sexo">Sexo</label>
                    <select type="text" id="sexo" name="sexo">
                        <option value="Masculino">Masculino</option>
                        <option value="Feminino">Feminino</option>
                    </select>
                    <label for="senha">Senha para Acesso</label>
                    <input type="password" id="senha">
                    <label for="checksenha">Confirme Senha para Acesso</label>
                    <input type="password" id="checksenha">

                </div>

                <div class="span4">
                    <h5 class="lead">Endere�o</h5>
                    <ul class="nav nav-list">
                        <li class="divider">
                    </ul>
                    <label for="logradouro">Logradouro</label>
                    <input type="text" id="logradouro" name="logradouro">
                    <label for="bairro">Bairro</label>
                    <input type="text" id="bairro" name="bairro">
                    <label for="numero">Numero</label>
                    <input type="text" id="numero" name="numero">
                    <label for="cep">CEP</label>
                    <input type="text" id="cep" name="cep"> 

                    <label for="estado">Estado</label>
                    <select id="estado" name="estado">
                        <option>Selecione o estado</option>
                                    <option value="AC">Acre</option>
                                    <option value="AL">Alagoas</option>
                                    <option value="AM">Amazonas</option>
                                    <option value="AP">Amap�</option>
                                    <option value="BA">Bahia</option>
                                    <option value="CE">Cear�</option>
                                    <option value="DF">Distrito Federal</option>
                                    <option value="ES">Espirito Santo</option>
                                    <option value="GO">Goi�s</option>
                                    <option value="MA">Maranh�o</option>
                                    <option value="MG">Minas Gerais</option>
                                    <option value="MS">Mato Grosso do Sul</option>
                                    <option value="MT">Mato Grosso</option>
                                    <option value="PA">Par�</option>
                                    <option value="PB">Para�ba</option>
                                    <option value="PE">Pernambuco</option>
                                    <option value="PI">Piau�</option>
                                    <option value="PR">Paran�</option>
                                    <option value="RJ">Rio de Janeiro</option>
                                    <option value="RN">Rio Grande do Norte</option>
                                    <option value="RO">Rond�nia</option>
                                    <option value="RR">Roraima</option>
                                    <option value="RS">Rio Grande do Sul</option>
                                    <option value="SC">Santa Catarina</option>
                                    <option value="SE">Sergipe</option>
                                    <option value="SP">S�o Paulo</option>
                                    <option value="TO">Tocantins</option>

                    </select>
                    <label for="cidade">Cidade</label>
                    <input type="text" id="cidade" name="cidade">
                    <label for="telefone">Telefone</label>
                    <input type="text" id="telefone" name="telefone">
                    <label for="celular">Celular</label>
                    <input type="text" id="celular" name="celular">

            </div>
            <div class="row-fluid">
                <div class="span12">
                    <input type="submit" id="btn" class="btn btn-primary" value="Salvar">
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
