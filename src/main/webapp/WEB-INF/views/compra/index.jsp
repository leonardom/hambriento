<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:import url="../layout/header.jsp"></c:import> 
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
<c:import url="../layout/footer.jsp"></c:import> 
<script>
    $(document).ready(function() {
        $('#confirmarEstabelecimento').load('confirmarEstabelecimento/');
        $('#escolherItensDoPedido').load('escolherItensDoPedido/');
        $('#confirmarEnderecoDeEntrega').load('confirmarEnderecoDeEntrega/');
        $('#escolherFormaDePagamento').load('escolherFormaDePagamento/');
    });
    
</script>