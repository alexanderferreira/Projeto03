<%-- 
    Document   : f_alterar
    Created on : 31/03/2019, 14:35:53
    Author     : alexandersantos
--%>

<%@page import="br.com.fatecpg.cadastro.Fornecedores"%>
<%@page import="br.com.fatecpg.cadastro.Bd"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Alterar Fornecedores</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
        <body>
            <nav class="navbar navbar-inverse">
             <div class="container-fluid">
               <div class="navbar-header">
                 <a class="navbar-brand" href="#">SCCF</a>
               </div>
               <ul class="nav navbar-nav">
                 <li class="active"><a href="../index.jsp">Home</a></li>
                 <li class="dropdown">
                   <a class="dropdown-toggle" data-toggle="dropdown" href="#">Clientes
                   <span class="caret"></span></a>
                   <ul class="dropdown-menu">
                     <li><a href="../Clientes/index.jsp">Lista</a></li>
                     <li><a href="../Clientes/c_incluir.jsp">Incluir</a></li>
                   </ul>
                 <li>
                   <a class="dropdown-toggle" data-toggle="dropdown" href="#">Fornecedores
                    <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                     <li><a href="index.jsp">Lista</a></li>
                     <li><a href="f_incluir.jsp">Incluir</a></li>
                   </ul>
                 </li>
               </ul>
             </div>
           </nav>
            <div class="container">
                <h1>Alterar registro de Fornecedores</h1>
                <%int index = Integer.parseInt(request.getParameter("index"));%>
                <%Fornecedores c = Bd.getFornecedores().get(index);%>
                <form action="index.jsp">
                    Razão:
                    <br/><input type="text" name="nomecliente" size="40" value="<%=c.getRazao()%>"/>
                    <br/>CNPJ:
                    <br/><input type="text" name="cpf" value="<%=c.getCnpj()%>"/>
                    <br/>Nome do Fornecedor:
                    <br/><input type="text" name="rg" value="<%=c.getNomefornecedor()%>"/>
                    <br/>E-mail do Fornecedor:
                    <br/><input type="text" name="emailcliente" size="40" value="<%=c.getEmailfornecedor()%>"/>
                    <br/>Telefone do Fornecedor:
                    <br/><input type="text" name="telefonecliente" value="<%=c.getTelefonefornecedor()%>"/>
                    <br/>Endereço do Fornecedor:
                    <br/><input type="text" name="enderecocliente" size="40" value="<%=c.getEnderecofornecedor()%>"/>
                    <hr/>
                    <h2>Deseja alterar o Fornecedor?</h2>
                    <input type="submit" name="alterar" value="Sim"/>
                    <input type="submit" name="alterar" value="Não"/>
                    <input type="hidden" name="index" value="<%=index%>"/>
                </form>
            </div>
        </body>
</html>
