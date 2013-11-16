<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div class="container">

<div style="float: left ; width: 50%">
     <label for="nomeDoCliente">Nome do Cliente</label>
        <input type="text" class="span5" id="nomeDoCliente" name="nomeDoCliente" readonly />
        <label for="nomeDoEstabelecimento">Nome do Estabelecimento</label>
        <input type="text" class="span5" id="nomeDoEstabelecimento" name="nomeDoEstabelecimento" readonly />



                    <div class="control-group">
                          <label class="control-label lead" for="radios">Escolha uma Forma de Pagamento</label>
                          <div class="controls">
                            <label class="radio inline" for="radios-0">
                              <input type="radio" name="radios" id="radios-0" value="1" >
                                     <img src="${pageContext.request.contextPath}/img/visa.ico">
                            </label>
                            <label class="radio inline" for="radios-1">
                              <input type="radio" name="radios" id="radios-1" value="2">
                                    <img src="${pageContext.request.contextPath}/img/mastercard.ico">
                            </label>
                            <label class="radio inline" for="radios-2">
                              <input type="radio" name="radios" id="radios-2" value="3">
                                    <img src="${pageContext.request.contextPath}/img/payPal.ico">
                            </label>
                                   <label class="radio inline" for="radios-4">
                              <input type="radio" name="radios" id="radios-4" value="5">
                                     <img src="${pageContext.request.contextPath}/img/dinheiro.ico">
                            </label>
                          </div>
                        </div>
    </div>

    <div  style="float: left ; width: 50%">
        <p class="lead">Itens do Pedido</p>
        <textarea rows="15" cols="90"  style="overflow-y:scroll">
        </textarea>

        <label for="valorTotalDoPedido"><b>Valor do pedido</b></label>
        <input type="text" class="span2" id="valorTotalDoPedido" name="valorTotalDoPedido" value="R$" readonly />
    </div>
</div>
