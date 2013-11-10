<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <c:import url="../layout/imports.jsp"></c:import>
    <title></title>
</head>
<body>
 <c:import url="../layout/menu.jsp"></c:import>
        <div class="container">
        <!-- Nav tabs -->
       <ul class="nav nav-pills">
            <li class="active"><a href="#tabConfirmaEstabelecimento" data-toggle="tab">Confirmar Estabelecimento</a></li>
            <li><a href="#tabEscolherItensDoPedido" data-toggle="tab">Escolher Itens do Pedido</a></li>
            <li><a href="#tabConfirmarEnderecoEntrega" data-toggle="tab">Confirmar Endereço de Entrega</a></li>
            <li><a href="#tabEscolherFormaDePagamento" data-toggle="tab">Escolher Forma de Pagamento</a></li>
        </ul>

        <!-- Tab panes -->
        <div class="tab-content">
            <div class="tab-pane active" id="tabConfirmaEstabelecimento">
                <div id="confirmarEstabelecimento">
                </div>          
            </div>
            <div class="tab-pane" id="tabEscolherItensDoPedido">
                <div id="escolherItensDoPedido">      
                </div>
            </div>
            <div class="tab-pane" id="tabConfirmarEnderecoEntrega">
                <div id="confirmarEnderecoDeEntrega">

                </div>
            </div>
            <div class="tab-pane" id="tabEscolherFormaDePagamento">        
                <div id="escolherFormaDePagamento">    
                </div>
            </div>
        </div>
    </div>
    <!--  footer -->
    <div class="navbar navbar-fixed-bottom nav" >
      <div class="navbar-inner">
          <div class="container">
              <p class="navbar-text"></p>
          </div>
      </div>
        </div>
    </body>
    </html>
<script>
    $(document).ready(function() {
        $('#confirmarEstabelecimento').load('confirmarEstabelecimento/');
        $('#escolherItensDoPedido').load('escolherItensDoPedido/');
        $('#confirmarEnderecoDeEntrega').load('confirmarEnderecoDeEntrega/');
        $('#escolherFormaDePagamento').load('escolherFormaDePagamento/');
    });
    
</script>