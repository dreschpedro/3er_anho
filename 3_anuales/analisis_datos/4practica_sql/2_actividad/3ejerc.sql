-- Listado de todos los productos y cantidad que se vendieron de cada uno. 
SELECT p.ID_PRODUCTO id_prod, SUM(d.TOTAL_VTA_CON_IVA) tot
FROM producto p
JOIN lista_precio l on l.ID_PRODUCTO = p.ID_PRODUCTO
JOIN detalle_vta d on d.ID_LISTA_PRECIO = l.ID_LISTA_PRECIO
GROUP BY p.ID_PRODUCTO