        <footer class="main-footer">
        <center>
            <br>
           <h4>Aceptamos</h4>
            <div>
              
                <img src="../img/payment-options.png" alt="" width="300" height="62.33" />
                
      
            </div>
            <div class="float-right d-none d-sm-block">
                <b>Version</b> 1.5
            </div>
            <div>
                <br>
            <h6>Suplementos S.A. De C.V.</h6>
            
            </div>
            <div>
            <strong>
            Todos los derechos reservados. 21 Avenida sur entre 12 y 14 calle poniente. San Salvador. El Salvador. &copy; <?php echo date('Y') ?>                 
            </strong> 
            </div>
            <div>
                <br>
            <h6>ventasenlinea@suplementos.com.sv | 503 2471-0008</h6>
            <!-- Facebook -->
<i class="fab fa-facebook-f"></i>

<!-- Twitter -->
<i class="fab fa-twitter"></i>

<!-- Google -->
<i class="fab fa-google"></i>

<!-- Instagram -->
<i class="fab fa-instagram"></i>



            </div>
            
           
            </center>
        </footer>
        </div>
        <!-- ./wrapper -->

        <!-- jQuery -->
        <script src="../js/jquery.min.js"></script>
        <!-- Bootstrap 4 -->
        <script src="../js/bootstrap.bundle.min.js"></script>
        <!-- AdminLTE App -->
        <script src="../js/adminlte.min.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="../js/demo.js"></script>

        <!-- SweetAlert2 -->
        <script src="../js/sweetalert2.js"></script>
        <!-- select2 -->
        <script src="../js/select2.js"></script>
    </body>
    <script>
        let funcion = 'devolver_avatar';
        $.post('../controlador/UsuarioController.php', {funcion}, (response) => {
            const avatar = JSON.parse(response);
            $('#avatar4').attr('src', '../img/'+avatar.avatar);
        });

        funcion = 'tipo_usuario';
        $.post('../controlador/UsuarioController.php', {funcion}, (response) => {
            if (response == 1) {
                $('#gestion_lote').hide();
            }else if(response == 2){
                $('#gestion_lote').hide();
                $('#gestion_usuario').hide();
                $('#gestion_producto').hide();
                $('#gestion_atributo').hide();
                $('#gestion_proveedor').hide();
            }
        });
    </script>
</html>