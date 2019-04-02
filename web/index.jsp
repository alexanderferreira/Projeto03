<%-- 
    Document   : index
    Created on : 31/03/2019, 14:33:17
    Author     : alexandersantos
--%>
<%@page import="br.com.fatecpg.cadastro.Clientes"%>
<%@page import="br.com.fatecpg.cadastro.Fornecedores"%>
<%@page import="br.com.fatecpg.cadastro.Bd"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Cadastro de Clientes</title>
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
                 <li class="active"><a href="#">Home</a></li>
                 <li class="dropdown">
                   <a class="dropdown-toggle" data-toggle="dropdown" href="#">Clientes
                   <span class="caret"></span></a>
                   <ul class="dropdown-menu">
                     <li><a href="Clientes/index.jsp">Lista</a></li>
                     <li><a href="Clientes/c_incluir.jsp">Incluir</a></li>
                   </ul>
                 <li>
                   <a class="dropdown-toggle" data-toggle="dropdown" href="#">Fornecedores
                    <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                     <li><a href="Fornecedores/index.jsp">Lista</a></li>
                     <li><a href="Fornecedores/f_incluir.jsp">Incluir</a></li>
                   </ul>
                 </li>
               </ul>
             </div>
           </nav>
            <div class="container">
              <h1>Sistema de Cadastro - Clientes e Fornecedores</h1>
              <p>Sistema para cadastro de todos os cliente e fornecedores.</p>
            </div>
            
        </body>
</html>