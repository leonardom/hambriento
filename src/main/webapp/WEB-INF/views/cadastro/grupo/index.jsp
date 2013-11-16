<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!doctype html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <c:import url="../../layout/imports.jsp"></c:import>
            <title> Cadastro de Grupo </title>
        </head>
        <body>
        <c:import url="../../layout/menu.jsp"></c:import>

            <div class="container page-wrap">
                <div class="span4">
                    <form action="#" method="POST">
                        <h5 class="lead">Cadastro de Grupo</h5>
                        <label for="codigo">Codigo</label>
                        <input type="text" id="codigo">
                        <label for="descricao">Descrição</label>
                        <input type="text" id="descricao">
                        <label for="visivel">Visivel</label>
                        <select id="visivel">
                            <option value="S">Sim</option>
                            <option value="N">Não</option>
                        </select>

                        <div class="fileinput fileinput-new" data-provides="fileinput">
                            <span class="btn btn-default btn-file"><span class="fileinput-new">Select file</span><span class="fileinput-exists">Change</span><input type="file" name="..."></span>
                            <span class="fileinput-filename"></span>
                            <a href="#" class="close fileinput-exists" data-dismiss="fileinput" style="float: none">&times;</a>
                        </div>

                        <div class="row-fluid">
                            <div class="span12">
                                <input type="button" id="btn" class="btn btn-primary" value="Salvar">
                            </div>
                        </div>
                </div>
            </div>

            <!--  footer -->
        <c:import url="../../layout/footer.jsp"></c:import>
    </body>
</html>

<script>
    $
    
</script>
