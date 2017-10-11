
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="DAO.UsuarioDAO"%>
<%@page import="model.UsuarioModel"%>
<%@page import="java.util.Scanner"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.FileReader"%>
<%-- 
    Document   : index
    Created on : 09/10/2017, 15:17:28
    Author     : Felipe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico">

        <title>Cadastro de Clientes</title>

        <!-- Bootstrap core CSS -->
        <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <link href="bootstrap-3.3.7-dist/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="signin.css" rel="stylesheet">

        <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
        <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
        <script src="bootstrap-3.3.7-dist/js/ie-emulation-modes-warning.js"></script>


        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>

    <body>

        <form action="ListaUsuario.jsp" method="post"  >
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp">Web-Crud</a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.jsp">Inicio</a></li>
                        <li><a href="CadastroUsuario.jsp">Cadastro de Usuários</a></li>
                        <li><a href="ListaUsuario.jsp">Lista de Usuários</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </nav>

        <div class="container">

            <div class="starter-template">
                <!-- <h1>Bootstrap starter template</h1>
                <p class="lead">Use this document as a way to quickly start any new project.<br> All you get is this text and a mostly barebones HTML document.</p>
                -->

                <br>
                <br>
                <br>
                <br>
                <br>

              
                <div class="container">

                    <label for="usuario">Nome do Usuário</label>
                    
                    <input type="text" id="text" name="txtUsuario" class="form-control" placeholder="Digite o usuário..."  autofocus>

                    <br>

                    <button type="submit"  name="botao" value="Pesquisar" class="btn btn-success">Pesquisar</button>

                    <br>
                    <br>
                    
                    <div class="panel panel-primary">
                        <!-- Default panel contents -->
                        <div class="panel-heading">Lista de Usuários</div>


                        <!-- Table -->
                        <table class="table panel panel-primary table-hover">

                            <tr>
                                <th>Usuário</th>

                            </tr>

                            <%
                                String Criterio = request.getParameter("txtUsuario");
                                ArrayList Lista = new ArrayList();

                                Lista = new model.UsuarioModel().getListaModelUsuarios(Criterio);

                                for (int i = 0; i < Lista.size(); i++) {
                            %>
                            <tr>

                                <td><%="\r\n" + (Lista.get(i))%></td>

                            </tr> 

                            <%
                                }
                            %>

                        </table>

                    </div>

                </div>

            </div>

        </div><!-- /.container -->


        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
        <script src="../../dist/js/bootstrap.min.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
        </form>
    </body>
</html>


