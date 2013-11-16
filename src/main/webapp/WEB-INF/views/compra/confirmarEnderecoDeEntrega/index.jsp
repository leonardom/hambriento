<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div class="container">

    <div class="row">
        <div class="span5">
            <label>Nome</label>
            <input type="text" class="span5" readonly="true" />
        </div>

        <div class="span5">
        <label>CPF</label>
        <input type="text" class="span3" readonly="true"/>
        </div>

    </div>

    <div class="row">
    <div class="span5">
    <label>Logradouro</label>
    <input type="text" class="span5" readonly="true"/>
     </div>
     <div class="span3">
    <label>Nº</label>
    <input type="text" class="span1" readonly="true"/>
    </div>
</div>

<div class="row">
    <div class="span5">
    <label>Bairro</label>
    <input type="text" class="span5" readonly="true"/>
    </div>
    <div class="span3">
    <label>CEP</label>
    <input type="text" class="span3" readonly="true"/>
    </div>
</div>

<div class="row">
<div class="span3">
    <label>Estado</label>
    <select class="span3" readonly="true">
        <option>Selecione</option>
        <option>São Paulo</option>
        <option>Minas Gerais</option>
    </select>
    </div>

<div class="span6">
    <label>Cidade</label>
    <input type="text" class="span4" readonly="true" />
    </div>
</div>

<div class="row">
<div class="span4">
    <label>Telefone</label>
    <input type="text" class="span3" readonly="true"/>
</div>
<div class="span4">
    <label>Celular</label>
    <input type="text" class="span3" readonly="true"/>
    </div>
</div>
</div>
