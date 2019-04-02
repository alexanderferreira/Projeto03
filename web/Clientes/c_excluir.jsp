<%-- 
    Document   : c_excluir
    Created on : 31/03/2019, 14:35:19
    Author     : alexandersantos
--%>
<%@page import="br.com.fatecpg.cadastro.Clientes"%>
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
                     <li><a href="index.jsp">Lista</a></li>
                     <li><a href="c_incluir.jsp">Incluir</a></li>
                   </ul>
                 <li>
                   <a class="dropdown-toggle" data-toggle="dropdown" href="#">Fornecedores
                    <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                     <li><a href="Fornecedores/index.jsp">Incluir</a></li>
                     <li><a href="Fornecedores/f_incluir.jsp">Incluir</a></li>
                   </ul>
                 </li>
               </ul>
             </div>
           </nav>
            <div class="container">
              <h1>Excluir Clientes</h1>
                <%int index = Integer.parseInt(request.getParameter("index"));%>
                <%Clientes c = Bd.getCliente().get(index);%>
                <form action="index.jsp" method="post">
                    <b>Índice: <u><%=index%></u></b>
                    <b>Nome: <u><%=c.getNomecliente()%></u></b>
                    <b>CPF: <u><%=c.getCpf()%></u></b>
                    <b>RG: <u><%=c.getRg()%></u></b>
                    <b>E-mail: <u><%=c.getEmailcliente()%></u></b>
                    <b>Telefone: <u><%=c.getTelefonecliente()%></u></b>
                    <b>Endereço: <u><%=c.getEnderecocliente()%></u></b>
                    <hr/>
                    <h2>Deseja excluir o cliente?</h2>
                    <input type="submit" name="excluir" value="Sim"/>
                    <input type="submit" name="excluir" value="Não"/>
                    <input type="hidden" name="index" value="<%=index%>"/>
                </form>
            </div>
        </body>
</html>
