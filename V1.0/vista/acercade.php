
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Acerca de</title>
   
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/css/all.min.css">
</head><?php
    #session_start();
    #if ($_SESSION['us_tipo'] == 1 || $_SESSION['us_tipo'] == 3 || $_SESSION['us_tipo'] == 2) {
        #include_once 'layouts/header.php';
    ?>        
        <title>Adm | Acerca</title>
        <!-- Tell the browser to be responsive to screen width -->
        <?php include_once 'layouts/nav2.php'; ?>
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="animate__animated animate__shakeY"></h1>
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
  <h1 class="display-4">ACERCA DE</h1>
 
  <hr class="my-4">
  
  <p class="lead"><center>
      <h1>NUESTRA MISIÓN</h1>
      <br>
      <h5 class="lead" style="text-align: justify;">En SUPLEMENTOS, nuestra misión es construir una plataforma que brinde a las personas el conocimiento, las herramientas y los productos para alcanzar sus objetivos físicos y de condición física.</h5>
        <br>
      <h1>NUESTRA HISTORIA</h1>
      <br>
        <h5 class="lead" style="text-align: justify;">SUPLEMENTOS.com ha pasado de ser un sitio de pasatiempos a una autoridad en línea en la industria del fitness con la reputación de publicar solo información de la más alta calidad y ponerla a disposición de los lectores de forma gratuita. Nuestro sitio web actualmente ofrece más de 10,000 páginas de contenido que incluye entrenamientos, artículos, videos, planes de comidas, transformaciones, herramientas de acondicionamiento físico y guías de expertos.

En 2008 lanzamos nuestra tienda. En solo 12 años, SUPLEMENTOS Store se ha convertido en uno de los minoristas en línea más grandes y reconocidos de suplementos deportivos, accesorios de fitness y ropa. Además de almacenar más de 10 000 productos de las mejores marcas, la Tienda ofrece a los clientes una gran cantidad de información complementaria y más de 300 000 reseñas de productos.

En 2014, debido a nuestro enorme crecimiento y su surgimiento como un líder principal tanto en las plataformas minoristas como de contenido, aceleramos nuestra expansión al mudarnos a una sede central de 60,000 pies cuadrados especialmente diseñada. Las instalaciones albergan un gimnasio de 4000 pies cuadrados construido a medida y una cocina de estudio para la creación de contenido de video. Ampliamos nuestros equipos de contenido, ventas, marketing y video en preparación para los próximos años.</h5>
    </center>
   
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
