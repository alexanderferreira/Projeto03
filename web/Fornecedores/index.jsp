<%-- 
    Document   : index
    Created on : 31/03/2019, 14:33:17
    Author     : alexandersantos
--%>
<%@page import="br.com.fatecpg.cadastro.Fornecedores"%>
<%@page import="br.com.fatecpg.cadastro.Bd"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("adicionar")!=null){
        if(request.getParameter("adicionar").equals("Sim")){
            Fornecedores c = new Fornecedores();
            c.setNomefornecedor(request.getParameter("nomefornecedor"));
            c.setRazao(request.getParameter("razao"));
            c.setCnpj(request.getParameter("cnpj"));
            c.setEmailfornecedor(request.getParameter("emailfornecedor"));
            c.setTelefonefornecedor(request.getParameter("telefonefornecedor"));
            c.setEnderecofornecedor(request.getParameter("enderecofornecedor"));
            Bd.getFornecedores().add(c);
        }
        response.sendRedirect(request.getRequestURI());
    }
    
    if(request.getParameter("alterar")!=null){
        if(request.getParameter("alterar").equals("Sim")){
            int index = Integer.parseInt(request.getParameter("index"));
            Fornecedores c = new Fornecedores();
            c.setNomefornecedor(request.getParameter("nomefornecedor"));
            c.setRazao(request.getParameter("razao"));
            c.setCnpj(request.getParameter("cnpj"));
            c.setEmailfornecedor(request.getParameter("emailfornecedor"));
            c.setTelefonefornecedor(request.getParameter("telefonefornecedor"));
            c.setEnderecofornecedor(request.getParameter("enderecofornecedor"));
            Bd.getFornecedores().set(index,c);
            }
            response.sendRedirect(request.getRequestURI());
        }
    if(request.getParameter("excluir")!=null){
        if(request.getParameter("excluir").equals("Sim")){
            int index = Integer.parseInt(request.getParameter("index"));
            Bd.getFornecedores().remove(index);
        }
        response.sendRedirect(request.getRequestURI());
    }
%>
<html lang="en">
<head>
  <title>Cadastro de Fornecedores</title>
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
              <h1>Sistema de Cadastro - Fornecedores</h1>
              <p>Sistema para cadastro de todos os cliente e fornecedores.</p>
              </br>
              </br>
                <table border="1" width="80%">
                    <tr>
                        <th>Índice</th>
                        <th>Fornecedor</th>
                        <th>CNPJ</th>
                        <th>Razão Social</th>
                        <th>E-mail</th>
                        <th>Endereço</th>
                        <th>Telefone</th>
                        <th>Comandos</th>
                    </tr>
                    <%for(Fornecedores c: Bd.getFornecedores()){%>
                        <%int index = Bd.getFornecedores().indexOf(c);%>
                        <tr>
                            <td><%=index%></td>
                            <td><%=c.getNomefornecedor()%></td>
                            <td><%=c.getCnpj()%></td>
                            <td><%=c.getRazao()%></td>
                            <td><%=c.getEmailfornecedor()%></td>
                            <td><%=c.getEnderecofornecedor()%></td>
                            <td><%=c.getTelefonefornecedor()%></td>
                            <td>
                                <a href="f_alterar.jsp?index=<%=index%>">Alterar</a>
                                <a href="f_excluir.jsp?index=<%=index%>">Excluir</a>
                            </td>
                        </tr>
                        <%}%>
                </table>
            </div>
            
        </body>
</html>