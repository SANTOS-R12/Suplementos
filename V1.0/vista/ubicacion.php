<?php
    session_start();
    if ($_SESSION['us_tipo'] == 1 || $_SESSION['us_tipo'] == 3 || $_SESSION['us_tipo'] == 2) {
        include_once 'layouts/header.php';
    ?>        
        <title>Adm | Ubicación</title>
        <!-- Tell the browser to be responsive to screen width -->
        <?php include_once 'layouts/nav.php'; ?>
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="animate__animated animate__shakeY">Ubicación</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Ubicación</li>
                        </ol>
                    </div>
                    </div>
                </div><!-- /.container-fluid -->
            </section>

            <!-- Main content -->
<!--
            <section>
                <div class="container-fluid">
                    <div class="card card-danger">
                        <div class="card-header">
                            <h3 class="card-title">Lotes en riesgo</h3>                            
                        </div>
                        <div class="card-body p-0 table-responsive">
                            <table class="animate__animated  animate__fadeIn table table-hover text-nowrap">
                                <thead class="table-success">
                                    <tr>
                                        <th>Codigo</th>
                                        <th>Producto</th>
                                        <th>Stock</th>
                                        <th>Laboratorio</th>
                                        <th>Presentacion</th>
                                        <th>Proveedor</th>
                                        <th>Mes</th>
                                        <th>Dia</th>
                                    </tr>
                                </thead>
                                <tbody id="lotes" class="table-active"></tbody>
                            </table>
                        </div>
                        <div class="card-footer"></div>
                    </div>
                </div>
            </section>
-->
            <section>
               
            </section>
            <center>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d123919.7547911266!2d-89.89618981210613!3d13.92926519503185!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8f62eb6bc8f165ad%3A0xc4f014c1cee856c7!2sMeca%20Sport%20Suplementos!5e0!3m2!1ses-419!2ssv!4v1653582356527!5m2!1ses-419!2ssv" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </center>
                <!-- /.content -->
        </div>
        <!-- /.content-wrapper --> 
    <?php
        include_once 'layouts/footer.php';
    }else{
        header('Location: ../index.php');
    }
?>
<script src="../js/catalogo.js"></script>
<script src="../js/carrito.js"></script>