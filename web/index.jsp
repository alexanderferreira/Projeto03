<%-- 
    Document   : index
    Created on : 31/03/2019, 14:33:17
    Author     : alexandersantos
--%>
<%@page import="br.com.fatecpg.cadastro.Clientes"%>
<%@page import="br.com.fatecpg.cadastro.Bd"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("adicionar")!=null){
        if(request.getParameter("adicionar").equals("Sim")){
            Clientes c = new Clientes();
            c.setNomecliente(request.getParameter("nomecliente"));
            c.setCpf(request.getParameter("cpf"));
            c.setRg(request.getParameter("rg"));
            c.setEmailcliente(request.getParameter("emailcliente"));
            c.setTelefonecliente(request.getParameter("telefonecliente"));
            c.setEnderecocliente(request.getParameter("enderecocliente"));
            Bd.getCliente().add(c);
        }
        response.sendRedirect(request.getRequestURI());
    }
    
    if(request.getParameter("alterar")!=null){
        if(request.getParameter("alterar").equals("Sim")){
            int index = Integer.parseInt(request.getParameter("index"));
            Clientes c = new Clientes();
            c.setNomecliente(request.getParameter("nomecliente"));
            c.setCpf(request.getParameter("cpf"));
            c.setRg(request.getParameter("rg"));
            c.setEmailcliente(request.getParameter("emailcliente"));
            c.setTelefonecliente(request.getParameter("telefonecliente"));
            c.setEnderecocliente(request.getParameter("enderecocliente"));
            Bd.getCliente().set(index,c);
            }
            response.sendRedirect(request.getRequestURI());
        }
    
    if(request.getParameter("excluir")!=null){
        if(request.getParameter("excluir").equals("Sim")){
            int index = Integer.parseInt(request.getParameter("index"));
            Bd.getCliente().remove(index);
        }
        response.sendRedirect(request.getRequestURI());
    }
%>
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
                     <li><a href="Clientes/c_incluir.jsp">Incluir</a></li>
                   </ul>
                 <li>
                   <a class="dropdown-toggle" data-toggle="dropdown" href="#">Fornecedores
                    <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                     <li><a href="Fornecedores/f_incluir.jsp">Incluir</a></li>
                   </ul>
                 </li>
               </ul>
             </div>
           </nav>
            <div class="container">
              <h1>Sistema de Cadastro - Clientes e Fornecedores</h1>
              <p>Sistema para cadastro de todos os cliente e fornecedores.</p>
              </br>
              </br>
              <table border="1">
                    <tr>
                        <th>Índice</th>
                        <th>Nome</th>
                        <th>CPF</th>
                        <th>RG</th>
                        <th>E-mail</th>
                        <th>Telefone</th>
                        <th>Endereço</th>
                        <th>Comandos</th>
                    </tr>
                    <%for(Clientes c: Bd.getCliente()){%>
                        <%int index = Bd.getCliente().indexOf(c);%>
                        <tr>
                            <td><%=index%></td>
                            <td><%=c.getNomecliente()%></td>
                            <td><%=c.getCpf()%></td>
                            <td><%=c.getRg()%></td>
                            <td><%=c.getEmailcliente()%></td>
                            <td><%=c.getTelefonecliente()%></td>
                            <td><%=c.getEnderecocliente()%></td>
                            <td>
                                <a href="Clientes/c_alterar.jsp?index=<%=index%>">Alterar</a>
                                <a href="Clientes/c_excluir.jsp?index=<%=index%>">Excluir</a>
                            </td>
                        </tr>
                        <%}%>
                </table>
            
            </div>
            
        </body>
</html>