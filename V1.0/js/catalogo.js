$(document).ready(function(){
    $('#cat-carrito').show();
    buscar_producto();
    mostrar_lotes_riesgo()

    function buscar_producto(consulta) {
        funcion = 'buscar';
        $.post('../controlador/ProductoController.php', {consulta, funcion}, (response) => {
            const productos = JSON.parse(response);

            let template = '';
            productos.forEach(producto => {
                template += `
                    <div prodavatar="${producto.avatar}" prodpresentacion="${producto.presentacion_id}" prodtipo="${producto.tipo_id}" prodlaboratorio="${producto.laboratorio_id}" prodadicional="${producto.adicional}" prodconcentracion="${producto.concentracion}" prodprecio="${producto.precio}" prodid="${producto.id}" prodstock="${producto.stock}" prodnombre="${producto.nombre}" class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch">
                        <div class="card bg-light">
                            <div class="card-header text-muted border-bottom-0">
                                <i class="fas fa-lg fa-cubes mr-2"></i>${producto.stock}
                            </div>
                            <div class="card-body pt-0">
                                <div class="row">
                                    <div class="col-7">
                                        <h2 class="lead"><b>Codigo: ${producto.id}</b></h2>
                                        <h2 class="lead"><b>${producto.nombre}</b></h2>
                                        <h4 class="lead"><b><i class="fas fa-lg fa-dollar-sign mr-2"></i> ${producto.precio}</b></h4>
                                        
                                        <ul class="ml-4 mb-0 fa-ul text-muted">
                                            <li class="small"><span class="fa-li"><i class="fas fa-prescription-bottle"></i></span> Concentración: ${producto.concentracion}</li>
                                            <li class="small"><span class="fa-li"><i class="fab fa-cc-paypal"></i></span> ${producto.adicional}</li>
                                            <li class="small"><span class="fa-li"><i class="fas fa-receipt"></i></span> Marca: ${producto.laboratorio}</li>
                                            <li class="small"><span class="fa-li"><i class="fas fa-clinic-medical"></i></span> Tipo: ${producto.tipo}</li>
                                            <li class="small"><span class="fa-li"><i class="fas fa-dice-d6"></i></span> Presentacion: ${producto.presentacion}</li>
                                        </ul>
                                    </div>
                                    <div class="col-5 text-center">
                                        <img src="${producto.avatar}" alt="" class="img-circle img-fluid">
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer">
                                <div class="text-center">  

                                <button class="lote btn btn-sm btn-primary agregar-carrito">
                                <i class="	fas fa-shopping-cart"></i> Agregar al carrito
                              
                            </button>
                            <br>   
                            <br>                           
                            <form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
                            <input type="hidden" name="cmd" value="_s-xclick">
                            <input type="hidden" name="hosted_button_id" value="${producto.adicional}">
                            <input type="image" src="https://www.paypalobjects.com/es_XC/i/btn/btn_cart_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
                            <img alt="" border="1" src="https://www.paypalobjects.com/es_XC/i/scr/pixel.gif" width="1" height="1">
                            </form>
                          
                                </div>                              
                              
                            </div>
                        </div>
                    </div>
                `;
            });
            $('#productos').html(template);
        });
    }

    $(document).on('keyup', '#buscar-producto', function(){
        let valor = $(this).val();
        if (valor != '') {
            buscar_producto(valor)
        }else{
            buscar_producto()
        }
    });

    function mostrar_lotes_riesgo() {
        funcion = 'buscar';

        $.post('../controlador/LoteController.php', {funcion}, (response) => {
            const lotes = JSON.parse(response);

            let template = '';

            lotes.forEach(lote => {
                if (lote.estado != 'light') {
                    template += `
                        <tr class="table-${lote.estado}">
                            <td>${lote.id}</td>
                            <td>${lote.nombre}</td>
                            <td>${lote.stock}</td>
                            <td>${lote.laboratorio}</td>
                            <td>${lote.presentacion}</td>
                            <td>${lote.proveedor}</td>
                            <td>${lote.mes}</td>
                            <td>${lote.dia}</td>
                        </tr>
                    `;
                }                
            });
            $('#lotes').html(template);
        });
    }
});