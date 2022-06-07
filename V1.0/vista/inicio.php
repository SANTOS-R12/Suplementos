
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio</title>
   
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/css/all.min.css">
</head><?php
    #session_start();
    #if ($_SESSION['us_tipo'] == 1 || $_SESSION['us_tipo'] == 3 || $_SESSION['us_tipo'] == 2) {
        #include_once 'layouts/header.php';
    ?>        
        <title>Adm | Inicio</title>
        <!-- Tell the browser to be responsive to screen width -->
        <?php include_once 'layouts/nav2.php'; ?>
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="animate__animated animate__shakeY">Inicio</h1>
                    </div>
                    
                    <div class="col-sm-6">
                       
                        
                   
                        </ol>
                    </div>
                    </div>
                </div><!-- /.container-fluid -->
            </section>
            <div class="header agile">
    
    </div>
           
            <section>
           
            </section>
  
            <div class="jumbotron">
  <h1 class="display-4">BIENVENIDO</h1>
  <p class="lead">Únase a más de 500 mil miembros y obten beneficios</p>
  <hr class="my-4">
  
  <p class="lead">
  <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="../img/back/fondo1.png" >
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="../img/back/fondo2.png" >
    </div>
   
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div> 
   
  </p>
</div>

           



            
         
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper --> 
    <?php
        include_once 'layouts/footer.php';
        
    #}else{
        #header('Location: ../index.php');
   # }
?>
