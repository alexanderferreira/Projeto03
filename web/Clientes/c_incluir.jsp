<%-- 
    Document   : c_incluir
    Created on : 31/03/2019, 14:35:10
    Author     : alexandersantos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Clientes</title>
    </head>
    <body>
        <h1>Adicionar Clientes</h1>
        <form action="index.jsp">
            Nome:
            <br/><input type="text" name="nome"/>
            <br/>Telefone:
            <br/><input type="text" name="fone"/>
            <br/>E-mail:
            <br/><input type="text" name="email"/>
            <hr/>
            <h2>Deseja incluir o novo contato?</h2>
            <input type="submit" name="adicionar" value="Sim"/>
            <input type="submit" name="adicionar" value="Não"/>
        </form>
    </body>
</html>
