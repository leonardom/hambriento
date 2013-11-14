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

            <div class="container page-wrap">
                <div class="container">
                    <p class="lead">Bem vindo,<a class="" href="${pageContext.request.contextPath}/cadastro/inicial" id="entrar" >novo por aqui?</a></p>
            </div>
            <center>
            <img class="" src="${pageContext.request.contextPath}/img/logo.jpg" alt="Logo" width="" height="">
            </center>
        </div>


        <!--  footer -->
        <c:import url="../layout/footer.jsp"></c:import>

    </body>
</html>
