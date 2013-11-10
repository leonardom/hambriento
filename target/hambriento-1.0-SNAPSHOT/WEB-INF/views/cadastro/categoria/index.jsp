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

        <div class="container">
        <br><br><br>
        <div class="span6">
            <form action="#" method="POST">
                <h5 class="lead">Cadastro de Categoria de Grupo</h5>
                <label for="codigo">Codigo</label>
                <input type="text" id="codigo">
                <label for="descricao">Descrição</label>
                <input type="text" id="descricao">
                <label for="visivel">Visivel</label>
                <select id="visivel">
                    <option value="S">Sim</option>
                    <option value="N">Não</option>
                </select>
                <label for="file">Imagem:</label>
                <input type="file" id="file" name="file">

                <div class="row-fluid">
                    <div class="span12">
                        <input type="button" id="btn" class="btn btn-primary" value="Salvar">
                    </div>
                </div
            </form>
        </div>

        </div>
		

    <!--  footer -->
    <div class="navbar navbar-fixed-bottom nav" style="position: relative">
      <div class="navbar-inner">
          <div class="container">
              <p class="navbar-text"></p>
          </div>
      </div>
        </div>
    </body>
    </html>





