<%@page import="JavaPackage.EmpleadoVO"%>
<%@page import="JavaPackage.EmpleadoDAO"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Empleado</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/blog-home.css" rel="stylesheet">

</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">Empleado </a>
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

  
      <form action="buscarempleado.jsp" method="POST">
      <div class="card my-4">
          <h5 class="card-header">Buscar empleado</h5>
          <div class="card-body">
              
                     <%  
                                    
                                 String codigoabuscar = (String)session.getAttribute("codigoabuscar");
                                    EmpleadoDAO r = new EmpleadoDAO();
                                    EmpleadoVO u = r.buscarEmpleado(codigoabuscar); 
                                %>
                                
                                    <%   /*
                    
                    
            String codigoabuscar = (String) request.getParameter("codigoabuscar");
          

            if (codigoabuscar.isEmpty()) {
                response.sendRedirect("buscarempleado.jsp?" + "ErrorDeCodigoEmpleado");
            } else {
               
                EmpleadoDAO r = new EmpleadoDAO();
                EmpleadoVO u = new EmpleadoVO();

                u = r.buscarEmpleado(codigoabuscar);

                if (codigoabuscar.equals(u.getCodigo())) {
                    request.getSession().setAttribute("codigoabuscar", codigoabuscar);
                    response.sendRedirect("empleado.jsp");
                }
                else
{
response.sendRedirect("buscarempleado.jsp");
        }
            } */
        %>    
       
                          
              
              
            <div class="input-group">
              <label for="name">Codigo: </label>
              <input name="codigo" type="text" class="form-control" placeholder="" readonly="readonly">  
              <br>
            
            </div>
               <br>
               
               <div class="input-group">
              <label for="name">Cedula: </label>
              <input name="cedula" type="text" class="form-control" placeholder="" readonly="readonly">  
              <br>
            
            </div>
             <br>
             <div class="input-group">
             <label for="name">Nombre: </label>
             <input name="nombre" type="text" class="form-control" placeholder="" readonly="readonly">
           </div>

            </div>
             <br>
             <div class="input-group">
             <label for="name">Fecha Nacimiento: </label>
             <input data-format="dd-MM-yyyy"  name="fechanacimiento" type="date" class="form-control" placeholder="" readonly="readonly">
           </div>
             
              
             <br>
             <div class="input-group">
             <label for="name">Fecha ingreso: </label>
             <input data-format="dd-MM-yyyy" name="fechaingreso" type="date" class="form-control" placeholder="" readonly="readonly">
           </div>
             
             
             <br>
             <div class="input-group">
             <label for="name">Fecha Retiro:</label>
             <input data-format="dd-MM-yyyy"  name="fecharetiro" type="date" class="form-control" placeholder="" readonly="readonly">
           </div>
             
               <br>
             <span class="input-group-btn">
                 <button class="btn btn-primary" type="submit">Inicio</button>
              </span>
               <br>
<a href="buscarempleado.jsp" class="btn btn-primary">Buscar otro empleado</a>
             
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

