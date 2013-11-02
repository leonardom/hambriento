<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:import url="../layout/header.jsp"></c:import> 
    <div class="container">
        <br>
        <header> 
            <a href="${pageContext.request.contextPath}/login/" id="entrar">Entrar</a>
            <a href="${pageContext.request.contextPath}/cadastro/inicial" id="entrar" >Cadastrar-se</a>
        </header>
    </div>     
<c:import url="../layout/footer.jsp"></c:import> 
