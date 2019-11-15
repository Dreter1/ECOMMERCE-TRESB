function guardarLocalStorage() {
    var hola = { nombre: "Hola" };

    localStorage.setItem("MensajeHola", JSON.stringify(hola));
}

function obtenerLocalStorage() {
    var Hola = JSON.parse(localStorage.getItem("MensajeHola"));
    if (Hola != null) {
        console.log(Hola.nombre);
    }
}

function saveProductoInLocalStorage(producto) {
    var listProductos = [];
    // var listProductosInLocal = localStorage.getItem("productos");

    //if (listProductosInLocal == null) {
        listProductos.push({
            "id"        : producto.dataset.id,
            "cantidad"  : 1
        });
    //}

    localStorage.setItem("productos", JSON.stringify(listProductos));
}