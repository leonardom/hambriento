<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div class="container">
        
    <div style="float: left ; width: 50%">
        <label for="nomeEstabelecimento">Nome do Estabelecimento</label>
        <input type="text" id="nomeEstabelecimento" class="span5" readonly/>

        <h3>Itens do Pedido</h3>
        <table class="table table-condensed" style="width: 80%">
            <tr>
                <th style="width: 50%">Produto</th>
                <th style="width: 15%">Quantidade</th>
                <th style="width: 15%">Valor</th>
                <th style="width: 10%"></th>
            </tr>
            <tr>
                <td>exemplo</td>
                <td style="text-align: center">1</td>
                <td style="text-align: center">R$100,00</td>
                <td style="text-align: center">
                    <a href="#"> <i class="icon-remove"></i>  </a>
                </td>
            </tr>
        </table>
        <br><br>
        <label for="valorTotalDoPedido">Valor Total do Pedido</label>
        <input type="text" class="span2" id="valorTotalDoPedido" name="valorTotalDoPedido" readonly value="R$"/>
    </div>
    <div style="float: left ; width: 50%">
        <h3>Itens do Cardápio</h3>
        <table class="table table-condensed" style="width: 80%">
            <tr>
                <th style="width:50%">Produto</th>
                <th style="width: 40%">Valor do Produto</th>
                <th style="width: 10%"></th>
            </tr>
            <tr>
                <td>exemplo</td>
                <td>R$100</td>
                <td>
                    <a href="" id="btnAdicionaProduto" name="btnAdicionaProduto" onclick="adicionarProdutoAoPedido(1)"> <i class="icon-plus"></i>  </a>
                </td>
            </tr>
        </table>
        <label for="quantidadeDoProduto">Quantidade</label>
        <input type="text" class="span1" id="quantidadeDoProduto" name="quantidadeDoProduto"/>
    </div>
    <div style="float: left ; width: 100%">
        <button class="btn btn-danger btn-small" style="position: absolute; right:20%">Cancelar</button>
    </div>
</div>
    <br>
    <br>
<script>
    function adicionarProdutoAoPedido(id) {
        var quantidade = $('#quantidadeDoProduto').val();
        if(quantidade == ''){
        alert('Produto'+id);
        $('#quantidadeDoProduto').val('');
    }else{
        alert('Erro ao inserir');
    }
    }
</script>