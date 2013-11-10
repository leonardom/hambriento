<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<c:import url="../../layout/header.jsp"></c:import> 
<body>
<c:import url="../../layout/menu.jsp"></c:import> 

    <div class="container">
        <br><br><br>
        <div class="span4">
            <form action="#" method="POST">
                <h5 class="lead">Cadastro de Produto</h5>
                <label for="codigo">Codigo</label>
                <input type="text" id="codigo">
                <label for="descricao">Descri��o</label>
                <input type="text" id="descricao">
                <label for="visivel">Categoria</label>
                <select id="visivel">
                    <option value="#">Selecione uma op��o</option>
                </select>
                <div class="row-fluid">
                    <div class="span12">
                        <input type="button" id="btn" class="btn btn-primary" value="Salvar">
                    </div>
                </div
            </form>
        </div>

    </div>
<c:import url="../../layout/footer.jsp"></c:import>
