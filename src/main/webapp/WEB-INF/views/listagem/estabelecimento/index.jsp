<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
                <p class="lead">Listagem de Estabelecimentos</p>
                <div class="span3">
                    <h4>Busca</h4>
                    <div class="well sidebar-nav">
                        
                        <form:form method="post" action="../estabelecimento/listar" modelAttribute="estabelecimento">
                            
                        <select class="input-medium" name="cidade" id="estado">
                            <option value="">Selecione</option>
                            <c:forEach items="${cidades}" var="cidade">
                            <option value="${cidade}">${cidade}</option>
                            </c:forEach>
                        </select>
                            <label>Especialidades</label>
                            
                        <c:forEach items="${especialidades}" var="especialidade">
                            <label class="checkbox">
                                <input type="checkbox" id="ch_${especialidade.id}" value="${especialidade.id}" name="especialidades">
                                ${especialidade.descricao} </label>
                        </c:forEach>
                            <input class="btn" type="submit" name="busca" id="busca" value="Buscar">
                        </form:form>
                    </div>
                    <!--/.well --> 
                </div>
                <div class="row padding">
                    <h4>Estabelecimentos</h4>
                    <table width="71%" class="table-hover">
                    <c:forEach items="${estabelecimentos}" var="estabelecimento">
                        <tr>
                            <td><p>

                                <h5>Nome: </h5>${estabelecimento.nome}
                                </p>
                                <p>

                                <h5>Endereço: </h5>
                                ${estabelecimento.endereco.logradouro} - ${estabelecimento.endereco.numero}<br/>
                                ${estabelecimento.endereco.bairro} - ${estabelecimento.endereco.cidade}/ ${estabelecimento.endereco.estado}
                                </p>
                                <p>

                                <h5>Especialidades: </h5>
                                <c:forEach items="${estabelecimento.especialidades}" var="especialidade">
                                    ${especialidade.descricao}<br/>
                                </c:forEach>
   
                                </p></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
        <!--  footer -->
        <c:import url="../../layout/footer.jsp"></c:import>
    </body>
</html>
