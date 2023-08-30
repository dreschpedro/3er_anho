-- Realizar un listado de todos los productos comprados por el cliente con apellido A1 y nombre a1.
SELECT producto.DESC_PRODUCTO
FROM cab_vta
join cliente on cliente.ID_CLIENTE = cab_vta.ID_CLIENTE
join detalle_vta on detalle_vta.ID_CAB_VTA = cab_vta.ID_CAB_VTA
join lista_precio on lista_precio.ID_LISTA_PRECIO = detalle_vta.ID_LISTA_PRECIO
join producto on producto.ID_PRODUCTO= lista_precio.ID_PRODUCTO
where (cliente.APELLIDO = 'A1') and (cliente.nombre = 'a1')
group by producto.DESC_PRODUCTO