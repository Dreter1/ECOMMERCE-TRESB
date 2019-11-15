function AgregarACarritoCompras(producto) {
    var IdProducto = producto.dataset.id;
    var IdUsuario = $("#idUsuario").val();
    var Cantidad = 1;
    $.get("/Home/IsLogged", function (response) {
        if (response == "False") {
            Swal.fire({
                type: 'warning',
                title: 'Debe iniciar sesión',
                text: 'Para proceder con su compra es necesario identificarse',
                confirmButtonText: 'Iniciar sesión'
            }).then((result) => {
                if (result.value) {
                    location.href = "/Home/Login";
                }
            })
        }
        else {
            $.ajax({
                url: "/Venta/ExisteProductoIdYUsuarioIdEnCarritoCompras",
                type: "POST",
                data: {
                    IdProducto: IdProducto,
                    IdUsuario: IdUsuario
                },
                dataType: "JSON"
            }).fail(function (result) {
                if (result.responseText == "True") {
                    $.ajax({
                        url: "/Venta/GuardarProductoACarrito",
                        type: "POST",
                        data: {
                            IdProducto: IdProducto,
                            IdUsuario: IdUsuario,
                            Cantidad: Cantidad
                        },
                        dataType: "JSON"
                    }).fail(function (resultado) {
                        Swal.fire({
                            title: 'Carrito de Compras',
                            text: 'El producto se ha agregado correctamente',
                            type: 'success',
                            showCancelButton: true,
                            confirmButtonColor: '#63A375',
                            cancelButtonColor: '#EDC79B',
                            confirmButtonText: 'Ir al carrito de compras',
                            cancelButtonText: 'Seguir Viendo'
                        }).then((result) => {
                            if (result.value) {
                                location.href = "/Venta/Carrito?IdUsuario=" + IdUsuario;
                            }
                        })
                    });
                }
                else {
                    Swal.fire({
                        type: 'error',
                        title: 'Error',
                        text: 'El producto ya esta en el carrito',
                        confirmButtonText: 'Aceptar'
                    })
                }
            })
        }
    });
}
function AgregarAListaDeDeseos(producto) {
    var IdProducto = producto.dataset.id;
    var IdUsuario = $("#idUsuario").val();
    $.get("/Home/IsLogged", function (response) {
        if (response == "False") {
            Swal.fire({
                type: 'warning',
                title: 'Debe iniciar sesión',
                text: 'Para proceder con su compra es necesario identificarse',
                confirmButtonText: 'Iniciar sesión'
            }).then((result) => {
                if (result.value) {
                    location.href = "/Home/Login";
                }
            })
        }
        else {
            $.ajax({
                url: "/Venta/ExisteProductoIdYUsuarioIdEnListaFavoritos",
                type: "POST",
                data: {
                    IdProducto: IdProducto,
                    IdUsuario: IdUsuario
                },
                dataType: "JSON"
            }).fail(function (result) {
                if (result.responseText == "True") {
                    $.ajax({
                        url: "/Venta/GuardarProductoALista",
                        type: "POST",
                        data: {
                            IdProducto: IdProducto,
                            IdUsuario: IdUsuario
                        },
                        dataType: "JSON"
                    }).fail(function (resultado) {
                        Swal.fire({
                            title: 'Lista de deseos',
                            text: 'El producto se ha agregado correctamente',
                            type: 'success',
                            showCancelButton: true,
                            confirmButtonColor: '#63A375',
                            cancelButtonColor: '#EDC79B',
                            confirmButtonText: 'Ir a la lista de deseos',
                            cancelButtonText: 'Seguir Viendo'
                        }).then((result) => {
                            if (result.value) {
                                location.href = "/Venta/ListaFavoritos?IdUsuario=" + IdUsuario;
                            }
                        })
                    });
                }
                else {
                    Swal.fire({
                        type: 'error',
                        title: 'Error',
                        text: 'El producto ya esta la lista de deseos',
                        confirmButtonText: 'Aceptar'
                    })
                }
            })
        }
    });
}
function CompletarOrden() {
    var IdUsuario = $("#idUsuario").val();
    Swal.fire({
        title: '¿Desea continuar con la compra?',
        text: 'Si esta seguro , presiona continuar de lo contrario puede cancelar la compra',
        type: 'info',
        showCancelButton: true,
        confirmButtonColor: '#63A375',
        cancelButtonColor: '#EDC79B',
        confirmButtonText: 'Continuar',
        cancelButtonText: 'Cancelar'
    }).then((result) => {
        if (result.value) {
            location.href = "/Venta/CompletarOrden";
        }
    })
}
function realizarCompra() {
    var IdUsuario = $("#idUsuario").val();
    var IdCalle = $("#IdCambiandoDireccionDB").val();
    var IdTipoPago = $("#IdCambiandoTipoPagoDB").val();
    var MensajeNoHayStock = $("#MensajeNoHayStock").val();
    console.log(IdUsuario);
    console.log(IdCalle);
    console.log(IdTipoPago);
    if (IdUsuario != null && IdCalle != null && IdTipoPago != null) {
        Swal.fire({
            title: '¿Desea Realizar la compra?',
            text: 'Si esta seguro , presiona comprar de lo contrario puede cancelar la compra',
            type: 'info',
            showCancelButton: true,
            confirmButtonColor: '#63A375',
            cancelButtonColor: '#EDC79B',
            confirmButtonText: 'Comprar Ahora',
            cancelButtonText: 'Cancelar'
        }).then((result) => {
            if (result.value) {
                $.ajax({
                    url: "/Venta/Guardar",
                    type: "POST",
                    data: {
                        IdUsuario: IdUsuario,
                        IdCalle: IdCalle,
                        TipoPago: IdTipoPago
                    },
                    dataType: "JSON"
                }).fail(function (resultado) {
                    if (resultado.responseText == "True") {
                        Swal.fire({
                            title: 'Aviso',
                            text: 'La compra se realizo con exito!',
                            type: 'success',
                            showCloseButton: true,
                            showCancelButton: false,
                            confirmButtonColor: '#63A375',
                            confirmButtonText: 'Aceptar',
                        }).then((result) => {
                            if (result.value) {
                                location.href = "/Venta/Carrito?IdUsuario=" + IdUsuario;
                            }
                        })
                    }
                    else {
                        if (MensajeNoHayStock != null) {
                            Swal.fire({
                                type: 'error',
                                title: 'Error',
                                text: 'No contamos con el stock de algun producto que usted solicita, intentelo nuevamente',
                                cancelButtonText: 'Aceptar'
                            }).then((result) => {
                                if (result.value) {
                                    location.href = "/Venta/CompletarOrden";
                                }
                            })
                        }
                        else {
                            Swal.fire({
                                type: 'error',
                                title: 'Error',
                                text: 'No se pudo completar la orden vuelva a intenarlo!',
                                cancelButtonText: 'Aceptar'
                            }).then((result) => {
                                if (result.value) {
                                    location.href = "/Venta/CompletarOrden";
                                }
                            })
                        }
                    }
                });
            }
        })
    }
    else {
        Swal.fire({
            type: 'error',
            title: 'Error',
            text: 'Porfavor llene todos los campos, no se puede procesar la orden',
            cancelButtonText: 'Aceptar'
        })
    }
}
function CambiandoCantidad(cantidad,IdProducto) {
    console.log(cantidad);
    console.log(IdProducto);
    $('#'+IdProducto+'NuevaCantidad').html("<input type='hidden' id ='"+IdProducto+"NuevaCantidadDB' value =" + cantidad + " />")
}
function ActualizandoCantidad(producto) {
    var IdProducto = producto.dataset.id;
    var IdUsuario = $("#idUsuario").val();
    var NuevaCantidad = $('#' + IdProducto + 'NuevaCantidadDB').val();

    console.log(IdProducto);
    console.log(IdUsuario);
    console.log(NuevaCantidad);

    Swal.fire({
        title: '<strong> ¿Seguro que desea cambiar la <u>cantidad</u> de este producto? </strong> ',
        type: 'info',
        showCloseButton: true,
        showCancelButton: true,
        focusConfirm: false,
        confirmButtonColor: '#63A375',
        cancelButtonColor: '#EDC79B',
        confirmButtonText: 'Si quiero',
        cancelButtonText: 'Cancelar'
    }).then((result) => {
        if (result.value) {
            $.ajax({
                url: "/Venta/ActualizarCantidadProductoCarrito",
                type: "POST",
                data: {
                    IdProducto: IdProducto,
                    IdUsuario: IdUsuario,
                    NuevaCantidad: NuevaCantidad
                },
                dataType: "JSON"
            }).fail(function (resultado) {
                if (resultado.responseText == "True") {
                    Swal.fire({
                        title: 'Aviso',
                        text: 'La cantidad del producto se cambio con exito!',
                        type: 'success',
                        showCloseButton: true,
                        showCancelButton: false,
                        confirmButtonColor: '#63A375',
                        confirmButtonText: 'Aceptar',
                    }).then((result) => {
                        if (result.value) {
                            location.href = "/Venta/Carrito?IdUsuario=" + IdUsuario;
                        }
                    })
                }
                else {
                    Swal.fire({
                        type: 'error',
                        title: 'Error',
                        text: 'La Cantidad no puede ser 0 o menor! Intentelo nuevamente',
                        cancelButtonText: 'Aceptar'
                    }).then((result) => {
                        if (result.value) {
                            location.href = "/Venta/Carrito?IdUsuario=" + IdUsuario;
                        }
                    })
                }

            });
        }
        else {
            location.href = "/Venta/Carrito?IdUsuario=" + IdUsuario;
        }
    })
}
function SeleccionTipoPago(TipoPago) {
    console.log(TipoPago);
    $('#IdCambiandoTipoPago').html("<input type='hidden' id ='IdCambiandoTipoPagoDB' value =" + TipoPago + " />")
}
function SeleccionDireccion(Direccion) {
    console.log(Direccion);
    $('#IdCambiandoDireccion').html("<input type='hidden' id ='IdCambiandoDireccionDB' value =" + Direccion + " />")
}
function AgregarDireccion() {
    var IdUsuario = $("#idUsuario").val();
    var Calle = $("#CalleTextClic").val();
    var Pais = $("#PaisClic").val();
    var Region = $("#RegionTextClic").val();
    var Ciudad = $("#CiudadTextClic").val();
    var CodigoPostal = $("#CodigoPostalTextClic").val();
    console.log(Calle);
    console.log(Pais);
    console.log(Region);
    console.log(Ciudad);
    console.log(CodigoPostal);
    console.log(IdUsuario);
    if (Calle != "" || Pais != "" || Region != "" || Ciudad != "" || CodigoPostal != "") {
        $.ajax({
            url: "/Usuario/GuardarDireccionDeUsuario",
            type: "POST",
            data: {
                Calle: Calle,
                Pais: Pais,
                Region: Region,
                Ciudad: Ciudad,
                CodigoPostal: CodigoPostal,
                IdUsuario: IdUsuario
            },
            dataType: "JSON"
        }).fail(function (resultado) {
            if (resultado.responseText == "True") {
                Swal.fire({
                    title: 'Aviso',
                    text: 'Se agrego la direccion con exito',
                    type: 'success',
                    showCloseButton: true,
                    showCancelButton: false,
                    confirmButtonColor: '#63A375',
                    confirmButtonText: 'Aceptar',
                }).then((result) => {
                    if (result.value) {
                        location.href = "/Venta/CompletarOrden";
                    }
                })
            }
            else {
                Swal.fire({
                    type: 'error',
                    title: 'Error',
                    text: 'No se pudo agregar la direccion verifique los datos',
                    cancelButtonText: 'Aceptar'
                }).then((result) => {
                    if (result.value) {
                        location.href = "/Venta/CompletarOrden";
                    }
                })
            }

        });
    }
    else {
        Swal.fire({
            type: 'error',
            title: 'Error',
            text: 'Todos los campos tienen que estar completos, vuelva a intentarlo',
            cancelButtonText: 'Aceptar'
        })
    }
}
function RegresarACarrito(){
var IdUsuario = $("#idUsuario").val();
    Swal.fire({
        title: '¿Desea regresar a su carrito?',
        text: 'Si esta seguro , presiona continuar de lo contrario puede cancelar la accion',
        type: 'info',
        showCancelButton: true,
        confirmButtonColor: '#63A375',
        cancelButtonColor: '#EDC79B',
        confirmButtonText: 'Regresar',
        cancelButtonText: 'Cancelar'
    }).then((result) => {
        if (result.value) {
            location.href = "/Venta/Carrito?IdUsuario=" + IdUsuario;
        }
    })
}
function AgregarComentario() {
    var IdUsuario = $("#idUsuario").val();
    var IdProducto = $("#idProducto").val();
    var Texto = $("#TextoClic").val();
    if (Texto == "") {
        Swal.fire({
            type: 'info',
            title: 'Aviso',
            text: 'Los campos tienen que estar llenos, llenelos porfavor',
            confirmButtonText: 'Okay'
        })
    }
    else {
        $.get("/Home/IsLogged", function (response) {
            if (response == "False") {
                Swal.fire({
                    type: 'warning',
                    title: 'Debe iniciar sesión',
                    text: 'Para poder comentar en este producto',
                    confirmButtonText: 'Iniciar sesión'
                }).then((result) => {
                    if (result.value) {
                        location.href = "/Home/Login";
                    }
                })
            }
            else {
                $.ajax({
                    url: "/Producto/ExisteProductoIdYUsuarioIdEnComentarios",
                    type: "POST",
                    data: {
                        IdProducto: IdProducto,
                        IdUsuario: IdUsuario
                    },
                    dataType: "JSON"
                }).fail(function (result) {
                    if (result.responseText == "True") {
                        $.ajax({
                            url: "/Producto/GuardarComentarioAProducto",
                            type: "POST",
                            data: {
                                IdProducto: IdProducto,
                                IdUsuario: IdUsuario,
                                Texto: Texto
                            },
                            dataType: "JSON"
                        }).fail(function (resultado) {
                            Swal.fire({
                                title: 'Comentario',
                                text: 'El comentario se ha agrego correctamente',
                                type: 'success',
                                showCancelButton: false,
                                confirmButtonColor: '#63A375',
                                confirmButtonText: 'Aceptar',
                            }).then((result) => {
                                if (result.value) {
                                    location.href = "/Producto/Detalle?IdProducto=" + IdProducto;
                                }
                            })
                        });
                    }
                    else {
                        Swal.fire({
                            type: 'error',
                            title: 'Error',
                            text: 'Tan solo se puede comentar una vez en cada producto',
                            confirmButtonText: 'Aceptar'
                        })
                    }
                })

            }
        });
    }
}