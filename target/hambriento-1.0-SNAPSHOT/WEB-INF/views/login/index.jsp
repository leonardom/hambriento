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

            <style type="text/css">


                .form-signin {
                    max-width: 300px;
                    padding: 19px 29px 29px;
                    margin: 0 auto 20px;
                    border: 1px solid #e5e5e5;
                    -webkit-border-radius: 5px;
                    -moz-border-radius: 5px;
                    border-radius: 5px;
                    -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                    -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                    box-shadow: 0 1px 2px rgba(0,0,0,.05);
                }
                .form-signin .form-signin-heading,
                .form-signin .checkbox {
                    margin-bottom: 10px;
                }
                .form-signin input[type="text"],
                .form-signin input[type="password"] {
                    font-size: 16px;
                    height: auto;
                    margin-bottom: 15px;
                    padding: 7px 9px;
                }
            </style>

        </head>
        <body>
        <c:import url="../layout/menu.jsp"></c:import>

            <div class="container page-wrap">

                <form class="form-signin well">
                    <h3 class="form-signin-heading">Por favor, entre </h3>
                    <input type="text" class="input-block-level" id="email" placeholder="Email">
                    <input type="password" class="input-block-level" id="senha" placeholder="Senha">
                    <label class="checkbox">
                        <input type="checkbox" value="lembrar"> Lembrar
                    </label>
                    <button class="btn btn-large btn-primary" type="submit" id="btnentrar">Entrar</button>
                </form>

            </div>

            <!--  footer -->
        <c:import url="../layout/footer.jsp"></c:import>
    </body>
</html>