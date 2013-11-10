<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
  <p class="lead">Listagem de Estabelecimentos</p>
  <div class="span3">
    <h4>Busca</h4>
    <div class="well sidebar-nav">
      <form name="estabelecimento" method="post" action="listagem">
        <label for="textfield">Estado</label>
        <select class="input-small" name="estado" id="estado">
          <option value="SP">SP</option>
          <option value="RJ">RJ</option>
        </select>
        <input class="input-medium" type="text" name="cidade" id="cidade" placeholder="Cidade">
        <label>Especialidades</label>
        <label class="checkbox">
          <input type="checkbox" id="cb1" value="option1">
          1 </label>
        <label class="checkbox">
          <input type="checkbox" id="cb2" value="option2">
          2 </label>
        <label class="checkbox">
          <input type="checkbox" id="cb3" value="option3">
          3</label>
        <input class="btn" type="submit" name="busca" id="busca" value="Buscar">
      </form>
    </div>
    <!--/.well --> 
  </div>
  <div class="row padding">
    <h4>Estabelecimentos</h4>
    <table width="71%" class="table-hover">
      <c:forEach items="${estabelecimento}" var="estabelecimento">
        <tr>
          <td><p>
            
            <h5>Nome: </h5>${estabelecimento.nome}
            </p>
            <p>
            
            <h5>Endereço: </h5>${estabelecimento.endereco}
            </p>
            <p>
            
            <h5>Especialidade: </h5>${estabelecimento.especialidade}
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
