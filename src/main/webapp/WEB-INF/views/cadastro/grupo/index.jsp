<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<c:import url="../../layout/header.jsp"></c:import> 
<c:import url="../../layout/menu.jsp"></c:import> 

<script>
   $('.fileinput').show();
</script>

    <div class="container">
        <br><br><br>
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
                </div
            </form>
        </div>

    </div>
<c:import url="../../layout/footer.jsp"></c:import>)




