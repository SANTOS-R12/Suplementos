
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejercicio</title>
   
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/css/all.min.css">
    <!-- JavaScript Bundle with Popper -->
    <!-- CSS only -->

</head><?php
    #session_start();
    #if ($_SESSION['us_tipo'] == 1 || $_SESSION['us_tipo'] == 3 || $_SESSION['us_tipo'] == 2) {
        #include_once 'layouts/header.php';
    ?>        
        <title>Adm | Ejercicio</title>
        <!-- Tell the browser to be responsive to screen width -->
        <?php include_once 'layouts/nav2.php'; ?>
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="animate__animated animate__shakeY">Rutinas de Ejercicio</h1>
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
            <!--
            <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="../img/back/fondo1.png" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="..." alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="..." alt="Third slide">
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
    -->
    <center>
    <div class="row">
    <div class="col-xs-12 col-sm-6">
        <div class="mu-swiper-multimedia-outer-wrapper">
            <div class="swiper-container mu-swiper-multimedia">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/A5wqXRv0DIQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        <div class="swiper-slide-footer">
                            
                        </div>
                    </div>
                    <div class="swiper-slide">
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/AUTqIj21X7g" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        <div class="swiper-slide-footer">
                           
                        </div>
                    </div>
                    <div class="swiper-slide">
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/6hW1lU0zSXw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        <div class="swiper-slide-footer">
                           
                        </div>
                    </div>
                </div>
                <!-- Add Pagination -->
                <div class="swiper-pagination"></div>
                <!-- See all videos -->
               
            </div>
        </div>
    </div>
    <div class="col-xs-12 visible-xs-block">
        <p> </p>
    </div>
    <div class="col-xs-12 col-sm-6">
        <div class="mu-swiper-multimedia-outer-wrapper">
            <div class="swiper-container mu-swiper-multimedia">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/yOkFhJBEKwo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        <div class="swiper-slide-footer">
                         
                        </div>
                    </div>
                    <div class="swiper-slide">
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/03Iu2qrrwPI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        <div class="swiper-slide-footer">
                           
                        </div>
                    </div>
                    <div class="swiper-slide">
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/YcbFnIoZfp8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        <div class="swiper-slide-footer">
                            
                        </div>
                    </div>
                </div>
                <!-- Add Pagination -->
                <div class="swiper-pagination"></div>.
                <!-- See all videos -->
         
            </div>
        </div>
    </div>
</div>
</center>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper --> 
    <?php
        include_once 'layouts/footer.php';
        
    #}else{
        #header('Location: ../index.php');
   # }
?>
