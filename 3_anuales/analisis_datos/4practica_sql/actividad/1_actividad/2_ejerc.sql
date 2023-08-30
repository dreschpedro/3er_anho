-- Realizar un listado de todas las facturas emitidas a nombre del cliente con apellido A2 y nombre a2. Indicar fecha y hora de la compra total de cada factura sin IVA y con IVA. 
select cliente.APELLIDO, cliente.NOMBRE,cab_factura.ID_CAB_FACTURA id_factura, cab_factura.TOT_FACTURA_CON_IVA con_iva, cab_factura.TOT_FACTURA_SIN_IVA sin_iva, cab_factura.FECHA_HORA
from cab_factura
join cab_vta on cab_vta.ID_CAB_VTA = cab_factura.ID_CAB_VTA
join cliente on cab_vta.ID_CLIENTE = cliente.ID_CLIENTE
where (cliente.APELLIDO = 'A2') and (cliente.NOMBRE = 'a2')
group by cab_factura.ID_CAB_FACTURA
order by cab_factura.ID_CAB_FACTURA