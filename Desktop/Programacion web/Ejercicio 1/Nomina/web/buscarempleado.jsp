<%@page import="JavaPackage.EmpleadoVO"%>
<%@page import="JavaPackage.EmpleadoDAO"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Buscar Empleado</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/blog-home.css" rel="stylesheet">

</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">Buscar empleado</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="index.jsp">Inicio
              <span class="sr-only">(current)</span>
            </a>

        
        </ul>
      </div>
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container">

  
      <form action="empleado.jsp" method="POST">
      <div class="card my-4">
          <h5 class="card-header">Buscar empleado</h5>
          <div class="card-body">

            <div class="input-group">
              <label for="name">Codigo</label>
              <input name="codigoabuscar" type="text" class="form-control" placeholder="">  
              <br>
              
          
              
              
              
                             <a href="#" class="list-group-item list-group-item-action list-group-item-secondary">Codigo a buscar: <%//out.println(codigoabuscar);%></a>
              
            
            </div>
              
             
               <br>
             <span class="input-group-btn">
                 <button class="btn btn-primary" type="submit">B�scar</button>
              </span>
             
             
             </div>

          
 
           
          </div>
      </form>
          
        </div>


    

    </div>
    <!-- /.row -->

  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Website 2020</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>


