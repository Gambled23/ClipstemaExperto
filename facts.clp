(deffacts smartphone
  	(smartphone (id 11) (marca apple) (modelo iPhone16) (capacidad 256) (precio 400) (cantidad 81))
  	(smartphone (id 12) (marca apple) (modelo iPhone17) (capacidad 128) (precio 750) (cantidad 55))
  	(smartphone (id 13) (marca apple) (modelo iPhone18) (capacidad 128) (precio 999) (cantidad 14))
  	(smartphone (id 14) (marca samsung) (modelo Galaxys26) (capacidad 256) (precio 600) (cantidad 100))
  	(smartphone (id 15) (marca samsung) (modelo Galaxys27) (capacidad 128) (precio 900) (cantidad 93))
)



(deffacts computadora
    (computadora (id 21) (marca dell) (modelo Inspiron15) (capacidad 512) (precio 800) (cantidad 50))
    (computadora (id 22) (marca dell) (modelo Inspiron16) (capacidad 256) (precio 1200) (cantidad 30))
    (computadora (id 23) (marca dell) (modelo Inspiron17) (capacidad 128) (precio 1500) (cantidad 20))
    (computadora (id 24) (marca lenovo) (modelo ThinkPadX1) (capacidad 512) (precio 900) (cantidad 40))
    (computadora (id 25) (marca lenovo) (modelo ThinkPadX2) (capacidad 256) (precio 1300) (cantidad 25))
)



(deffacts accesorio
    (accesorio (id 31) (marca logitech) (nombre mouse) (color negro) (tamaño pequeño) (precio 25) (cantidad 100))
    (accesorio (id 32) (marca logitech) (nombre teclado) (color blanco) (tamaño mediano) (precio 50) (cantidad 75))
    (accesorio (id 33) (marca samsung) (nombre cargador) (color negro) (tamaño pequeño) (precio 20) (cantidad 200))
    (accesorio (id 34) (marca apple) (nombre audifonos) (color blanco) (tamaño pequeño) (precio 150) (cantidad 50))
    (accesorio (id 35) (marca sony) (nombre bocina) (color gris) (tamaño grande) (precio 100) (cantidad 30))
)



(deffacts cliente
    (cliente (id 41) (nombre "Juan Perez") (direccion "Calle 123, Pueblo Paleta"))
    (cliente (id 42) (nombre "Maria Lopez") (direccion "Avenida 456, Ciudad Verde"))
    (cliente (id 43) (nombre "Carlos Gomez") (direccion "Calle 789, Ciudad Plateada"))
    (cliente (id 44) (nombre "Ana Torres") (direccion "Boulevard 101, Ciudad Celeste"))
    (cliente (id 45) (nombre "Luis Martinez") (direccion "Plaza 202, Ciudad Carmin"))
)


(deffacts tarjetacred
    (tarjetacred (id 51) (banco "Banorte") (grupo "visa") (fechaExpiracion "2025-12-31"))
    (tarjetacred (id 52) (banco "Santander") (grupo "mastercard") (fechaExpiracion "2024-11-30"))
    (tarjetacred (id 53) (banco "BBVA") (grupo "visa") (fechaExpiracion "2023-10-31"))
)

(deffacts vale
    (vale (id 71) (clienteId 41) (descuento 10))
    (vale (id 72) (clienteId 42) (descuento 15))
    (vale (id 73) (clienteId 43) (descuento 5))
)