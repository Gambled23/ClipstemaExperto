(defrule 24Meses
   (declare (salience 20))
   (orden (tarjetaId ?tarjetaId) (productoId ?productoID) (tipoPago "Credito"))
   (computadora (id ?productoID) (modelo Inspiron17))
   (tarjetacred (id ?tarjetaId) (banco BBVA))
   =>
   (printout t "24 meses sin intereses! Inspirion 17 pagando con BBVA" crlf))

(defrule 12Meses
    (declare (salience 19))
    (orden (tarjetaId ?tarjetaId) (productoId ?productoID) (tipoPago "Credito"))
    (computadora (id ?productoID) (modelo Inspiron16))
    (tarjetacred (id ?tarjetaId) (banco BBVA))
    =>
   (printout t "12 meses sin intereses! Inspirion 16 pagando con BBVA" crlf))

(defrule 6Meses
    (declare (salience 18))
    (orden (tarjetaId ?tarjetaId) (productoId ?productoID) (tipoPago "Credito"))
    (computadora (id ?productoID) (modelo Inspiron15))
    (tarjetacred (id ?tarjetaId) (banco BBVA))
    =>
    (printout t "6 meses sin intereses! Inspirion 15 pagando con BBVA" crlf))

(defrule 3Meses
    (declare (salience 17))
    (orden (tarjetaId ?tarjetaId) (productoId ?productoID) (tipoPago "Credito"))
    (computadora (id ?productoID) (modelo Inspiron17))
    (tarjetacred (id ?tarjetaId) (banco Banorte))
    =>
    (printout t "3 meses sin intereses! Inspirion 17 pagando con Banorte" crlf))

(defrule 3MesesDos
    (declare (salience 16))
    (orden (tarjetaId ?tarjetaId) (productoId ?productoID) (tipoPago "Credito"))
    (computadora (id ?productoID) (modelo Inspiron17))
    (tarjetacred (id ?tarjetaId) (banco Santander))
    =>
    (printout t "3 meses sin intereses! Inspirion 17 pagando con Santander" crlf))

(defrule fundaGratis
   (declare (salience 15))
   (orden (tarjetaId ?tarjetaId) (productoId ?productoID) (tipoPago "Debito"))
   (smartphone (id ?productoID))
   =>
   (printout t "Funda gratis! Por comprar un smartphone con débito" crlf))

(defrule logitech
   (declare (salience 15))
   (orden (tarjetaId ?tarjetaId) (productoId ?productoID))
   (accesorio (id ?productoID) (marca logitech))
   =>
   (printout t "Audifonos gratis! Al comprar cualqueir producto de Logitech" crlf))

(defrule fundaGratisDos
   (declare (salience 14))
   (orden (tarjetaId ?tarjetaId) (productoId ?productoID) (tipoPago "Credito"))
   (smartphone (id ?productoID))
   =>
   (printout t "Funda y audifonos gratis! Por comprar un smartphone con crédito" crlf))

(defrule minorista
   (declare (salience 13))
   (orden (tarjetaId ?tarjetaID) (productoId ?productoID) (cantidad ?cantidad))
   (test (< ?cantidad 10))
   =>
   (printout t "Cliente minorista: Compró menos de 10 unidades del producto con ID " ?productoID crlf))

(defrule mayorista
   (declare (salience 12))
   (orden (tarjetaId ?tarjetaID) (productoId ?productoID) (cantidad ?cantidad))
   (test (> ?cantidad 10))
   =>
   (printout t "Cliente mayorista: Compró más de 10 unidades del producto con ID " ?productoID crlf))

(defrule recomendarApple
    (declare (salience 11))
    (orden (tarjetaId ?tarjetaId) (productoId ?productoID))
    (smartphone (id ?productoID) (marca apple))
    =>
    (printout t "Recomendación: Te recomendamos contratar un seguro para tu equipo de marca Apple" crlf))

(defrule recomendarSamsung
    (declare (salience 10))
    (orden (tarjetaId ?tarjetaId) (productoId ?productoID))
    (smartphone (id ?productoID) (marca samsung))
    =>
    (printout t "Recomendación: Te recomendamos contratar un seguro y comprar una mica para tu equipo de marca Samsung" crlf))

(defrule recomendarSamsung27
    (declare (salience 10))
    (orden (tarjetaId ?tarjetaId) (productoId ?productoID))
    (smartphone (id ?productoID) (modelo Galaxys27))
    =>
    (printout t "Recomendación: El galaxy s27 solo cuenta con 128gb de almacenamiento, te recomendamos contratar un plan de almacenamiento en la nube" crlf))

(defrule recomendariPhone17
    (declare (salience 10))
    (orden (tarjetaId ?tarjetaId) (productoId ?productoID))
    (smartphone (id ?productoID) (modelo iPhone17))
    =>
    (printout t "Recomendación: El iphone 17 solo cuenta con 128gb de almacenamiento, te recomendamos contratar un plan de almacenamiento en la nube" crlf))

(defrule recomendariPhone18
    (declare (salience 10))
    (orden (tarjetaId ?tarjetaId) (productoId ?productoID))
    (smartphone (id ?productoID) (modelo iPhone18))
    =>
    (printout t "Recomendación: El iphone 18 solo cuenta con 128gb de almacenamiento, te recomendamos contratar un plan de almacenamiento en la nube" crlf))

(defrule recomendarInspiron17
    (declare (salience 10))
    (orden (tarjetaId ?tarjetaId) (productoId ?productoID))
    (computadora (id ?productoID) (modelo Inspiron17))
    =>
    (printout t "Recomendación: Esta computadora solo cuenta con 128gb de almacenamiento, te recomendamos contratar un plan de almacenamiento en la nube" crlf))

(defrule actualizarStockSmartphone
   (declare (salience 9))
   ?orden <- (orden (productoId ?productoID) (cantidad ?cantidadComprada))
   ?xd <- (smartphone (id ?productoID) (marca ?marca) (modelo ?modelo) (cantidad ?cantidad))
   (test (>= ?cantidad ?cantidadComprada)) 
   =>
   (bind ?total (- ?cantidad ?cantidadComprada))
   (modify ?xd (cantidad ?total))
   (retract ?orden) 
   (printout t "Stock de smartphones actualizado. Quedan " ?total " unidades de " ?marca " " ?modelo crlf))

(defrule noSuficientesSmartphone
   (declare (salience 8))
   ?orden <- (orden (productoId ?productoID) (cantidad ?cantidadComprada))
   ?xd <- (smartphone (id ?productoID) (marca ?marca) (modelo ?modelo) (cantidad ?cantidad))
   (test (< ?cantidad ?cantidadComprada)) 
   =>
   (retract ?orden) 
   (printout t "No hay suficiente stock para el smartphone que quieres comprar. Disponible: " ?cantidad crlf))

(defrule actualizarStockComputadora
    (declare (salience 7))
    ?orden <- (orden (productoId ?productoID) (cantidad ?cantidadComprada))
    ?xd <- (computadora (id ?productoID) (marca ?marca) (modelo ?modelo) (cantidad ?cantidad))
    (test (>= ?cantidad ?cantidadComprada)) 
    =>
    (bind ?total (- ?cantidad ?cantidadComprada))
    (modify ?xd (cantidad ?total))
    (retract ?orden) 
    (printout t "Stock de computadoras actualizado" crlf))

(defrule noSuficientesComputadora
    (declare (salience 6))
    ?orden <- (orden (productoId ?productoID) (cantidad ?cantidadComprada))
    ?xd <- (computadora (id ?productoID) (marca ?marca) (modelo ?modelo) (cantidad ?cantidad))
    (test (< ?cantidad ?cantidadComprada)) 
    =>
    (retract ?orden)
    (printout t "No hay suficiente stock para la computadora que quieres comprar" crlf))

(defrule actualizarStockAccesorio
    (declare (salience 5))
    ?orden <- (orden (productoId ?productoID) (cantidad ?cantidadComprada))
    ?xd <- (accesorio (id ?productoID) (marca ?marca) (nombre ?nombre) (cantidad ?cantidad))
    (test (>= ?cantidad ?cantidadComprada)) 
    =>
    (bind ?total (- ?cantidad ?cantidadComprada))
    (modify ?xd (cantidad ?total))
    (retract ?orden)
    (printout t "Stock de accesorios actualizado" crlf))

(defrule noSuficientesAccesorio
    (declare (salience 4))
    ?orden <- (orden (productoId ?productoID) (cantidad ?cantidadComprada))
    ?xd <- (accesorio (id ?productoID) (marca ?marca) (nombre ?nombre) (cantidad ?cantidad))
    (test (< ?cantidad ?cantidadComprada)) 
    =>
    (retract ?orden)
    (printout t "No hay suficiente stock para el accesorio que quieres comprar" crlf))