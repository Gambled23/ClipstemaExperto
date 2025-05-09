(deftemplate smartphone
    (slot id (default gensym*))
    (slot marca)
    (slot modelo)
    (slot capacidad)
    (slot precio)
    (slot cantidad))

(deftemplate computadora
    (slot id (default gensym*))
    (slot marca)
    (slot modelo)
    (slot capacidad)
    (slot precio)
    (slot cantidad))

(deftemplate accesorio
    (slot id (default gensym*))
    (slot marca)
    (slot color)
    (slot nombre)
    (slot tamaño)
    (slot precio)
    (slot cantidad))

(deftemplate cliente
    (slot id (default gensym*))
    (slot nombre)
    (slot direccion))
    

(deftemplate orden
    (slot id (default gensym*))
    (slot clienteId)
    (slot productoId)
    (slot tarjetaId)
    (slot tipoPago)
    (slot cantidad (default 1))
    (slot total (default 0)))

(deftemplate tarjetacred
    (slot id (default gensym*))
    (slot banco)
    (slot grupo)
    (slot fechaExpiracion))

(deftemplate vale
    (slot id (default gensym*))
    (slot clienteId)
    (slot descuento))