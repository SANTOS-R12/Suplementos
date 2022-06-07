<?php
    #session_start();
    #if ($_SESSION['us_tipo'] == 1 || $_SESSION['us_tipo'] == 3) {
        include_once 'layouts/header.php';
    ?>        
        <title>Adm | Registrarse</title>
        <!-- Tell the browser to be responsive to screen width -->
        <?php include_once 'layouts/nav2.php'; ?>

        <!-- Modal -->
        <div class="modal fade" id="confirmar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Confirmar accion</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="text-center">
                            <img id="avatar2" src="../img/avatar2.png" alt="avatar" class="profile-user-img img-fluid img-circle">
                        </div>
                        <div class="text-center">
                            
                        </div>
                        <span>Nesecitamos tu contraseña para continuar</span>
                        <div class="alert alert-success text-center" id="confirmado" style="display:none">
                            <span><i class="fas fa-check m-1"></i>Se modifico al usuario</span>
                        </div>
                        <div class="alert alert-danger text-center" id="rechazado" style="display:none">
                            <span><i class="fas fa-times m-1"></i>La contraseña no es correcta</span>
                        </div>
                        <form id="form-confirmar">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-unlock-alt"></i></span>
                                </div>
                                <input type="password" id="oldpass" class="form-control" placeholder="Ingrese contraseña actual">
                                <input type="hidden" id="id_user">
                                <input type="hidden" id="funcion">
                            </div> 
                            <div class="modal-footer">
                                <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">Cerrar</button>
                                <button type="submit" class="btn bg-gradient-primary">Guardar</button>
                            </div>                       
                        </form>
                    </div>                    
                </div>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="crear_usuario" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="card-info">
                        <div class="card-header">
                            <h3 class="card-title">Crear usuario</h3>
                            <button class="close" data-dismiss="modal" aria-label="close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="card-body">
                            <div class="alert alert-success text-center" id="noadd" style="display:none">
                                <span><i class="fas fa-check m-1"></i>Se agrego correctamente</span>
                            </div>
                            <div class="alert alert-success text-center" id="add" style="display:none">
                                <span><i class="fas fa-times m-1">Error al Ingresar</i></span>
                            </div>
                            <form id="form-crear">
                                <div class="form-group">
                                    <label for="nombre">Nombres</label>
                                    <input id="nombre" required type="text" class="form-control" placeholder="Ingrese nombre">
                                </div>
                                <div class="form-group">
                                    <label for="apellido">Apellidos</label>
                                    <input id="apellido" required type="text" class="form-control" placeholder="Ingrese apellidos">
                                </div>
                                <div class="form-group">
                                    <label for="edad">Nacimiento</label>
                                    <input id="edad" required type="date" class="form-control" placeholder="Ingrese nacimiento">
                                </div>
                                <div class="form-group">
                                    <label for="dui">Nombre Usuario</label>
                                    <input id="dui" required type="text"  class="form-control" placeholder="Ingrese usuario">
                                </div>
                                <div class="form-group">
                                    <label for="pass">Contraseña</label>
                                    <input id="pass" required type="password" class="form-control" placeholder="Ingrese contraseña">
                                </div>
                                <div class="card-footer">
                                    <button type="submit" class="btn bg-gradient-info float-right m-1">Guardar</button>
                                    <button type="button" data-dismiss="modal" class="btn btn-outline-secondary float-right m-1">Cerrar</button>
                                </div>
                            </form>
                        </div>                        
                    </div>   
                </div>
            </div>
        </div>



        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1>
                                
                                
                            <input type="hidden" id="tipo_usuario" value="<?php echo $_SESSION['us_tipo']; ?>">
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item">
                                    <a href="adm_catalogo.php">Home</a>
                                </li>
                                <li class="breadcrumb-item active">Crear Cuenta</li>
                            </ol>
                        </div>
                    </div>
                </div><!-- /.container-fluid -->
            </section> 
            <section>
               
            </section>    
            <div class="jumbotron">
  <h1 class="display-4">Crear cuenta</h1>
  <p class="lead">Únase a más de 500 mil miembros y obten beneficios</p>
  <hr class="my-4">
  <p>Al hacer clic en Registrarte, aceptas las Condiciones, la Política de datos y la Política de cookies. Es posible que te enviemos notificaciones por SMS que podrás desactivar cuando quieras.</p>
  <p class="lead">
 
    <a id="btn_crear" type="button" data-toggle="modal" data-target="#crear_usuario" class="btn  bg-gradient-info ml-2">Regístrate Ahora</a>
  </p>
</div>       
        </div>
        <!-- /.content-wrapper --> 
    <?php
        include_once 'layouts/footer.php';
    #}else{
       # header('Location: ../index.php');
    #}
?>
<script src="../js/gestion_usuario.js"></script>