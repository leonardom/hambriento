<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div class="container">

    <div style="float: left ; width: 50%">
    <label for="nomeEstabelecimento">Nome do Estabelecimento</label>
    <input type="text" id="nomeEstabelecimento" readonly/>

    <h3>Itens do Pedido</h3>
    <table class="table table-condensed" style="width: 50%">
        <tr>
            <th>Produto</th>
            <th>Quantidade</th>
            <th>Valor do Produto</th>
        </tr>
        <tr>
            <td>exemplo</td>
            <td>1</td>
            <td>R$100</td>
            <td>
                <a href="" > <i class="icon-remove"></i>  </a>
            </td>
        </tr>
    </table>
    </div>
    <div style="float: left ; width: 50%">
            <h3>Itens do Cardápio</h3>
    <table class="table table-condensed" style="width: 50%">
        <tr>
            <th>Produto</th>
            <th>Valor do Produto</th>
        </tr>
        <tr>
            <td>exemplo</td>
            <td>R$100</td>
            <td>
                <a href="" > <i class="icon-plus"></i>  </a>
            </td>
        </tr>
    </table>
    </div>
    
    <button class="btn btn-danger">Cancelar</button>
    <button class="btn">Continuar</button>
</div>

