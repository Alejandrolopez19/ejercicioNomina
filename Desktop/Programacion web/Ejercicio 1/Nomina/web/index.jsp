<%-- 
    Document   : index
    Created on : 14/04/2020, 06:47:52 AM
    Author     : Alejandro Lopez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Social UFPS</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>

  <!-- Custom styles for this template -->
  <link href="css/blog-home.css" rel="stylesheet"/>

</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-danger fixed-top">
    <div class="container">

      <a class="navbar-brand" href="#">NOMINA
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="index.jsp">Inicio
              <span class="sr-only">(current)</span>
            </a>
          </li>
  
         
      
        </ul>
      </div>
    </div>
  </nav>

 <div class="container">

  
      <form action="registrarempleado.jsp" method="POST">
      <div class="card my-4">
          <h5 class="card-header">EJERCICIO NOMINA WEB</h5>
          <div class="card-body">

                    <span class="input-group-btn">
                        <a
                        <button class="btn btn-primary" href="buscarempleado.jsp" type="submit">Buscar empleado </button> 
                            
                        </a>
              </span>
              
          
             <br>
             <span class="input-group-btn">
                 <br> 
                 <a
                 <button class="btn btn-success" href="registrarempleado.html" type="submit">Crear empleado</button>
                 </a>
              </span>
          </div>
      </form>
          
        </div>


    

    </div>
    <!-- /.row -->

  <!-- /.container -->

  
  
  
  
  
  
  <!-- Footer -->
  <footer class="py-5 bg-danger">
    <div class="container">
      <p class="m-0 text-center text-white">NOMINA</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
