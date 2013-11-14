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
        <br><br><br><br><br><br>
            <div class="container page-wrap">
               
                <div style="float: left; width: 50%">
                    <form method="POST" action="${pageContext.request.contextPath}" id="formCadastroDeCliente">  
                    <p class="lead">Cliente</p>
                    <div style="width: 70%" class="well well-large">   
                        <label for="emailCliente">Email</label>
                        <input type="email" id="emailCliente" name="emailCliente" class="span3" required/>

                        <label for="cpfCliente">CPF</label>
                        <input type="text" id="cpfCliente" name="cpfCliente"  class="span3" required pattern=".{14,14}" />
                        <input type="submit" name="btCadastrarCliente" id="btCadastrarCliente" value="Cadastrar" class="btn btn-primary "  />
                        </div>
                   </form> 
                </div>
                
                <div style="float: left ; width: 50%">
                    <form method="POST" action="${pageContext.request.contextPath}" id="formCadastroDeEstabelecimento">  
                    <p class="lead">Estabelecimento</p>
                    <div style="width: 70%" class="well well-large">
                        <label for="emailEstabelecimento">Email</label>
                        <input type="email" id="emailEstabelecimento" name="emailEstabelecimento" class="span3" required=""/>

                        <label for="cnpjEstabelecimento">CNPJ</label>
                        <input type="text" id="cnpjEstabelecimento" name="cnpjEstabelecimento" class="span3" required pattern=".{18,18}"/>
                        
                        <input type="submit" name="btCadastrarEstabelecimento" id="btCadastrarCliente" value="Cadastrar" class="btn btn-primary "/>
                    </div>
                   </form> 
                </div>
            </div>
            <!--  footer -->
        <c:import url="../../layout/footer.jsp"></c:import>
    </body>
</html>
<script>
    $(document).ready(function(){
    $('#cpfCliente').mask('000.000.000-00');
     $('#cnpjEstabelecimento').mask('00.000.000/0000-00');

});
</script>