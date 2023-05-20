-- Listado de todas las formas de pago y cantidad de transacciones realizadas con cada una. 
select f.DESC_FORMA_PAGO pago, count(*) total
from forma_pago f
join opcion_pago o on o.ID_FORMA_PAGO = f.ID_FORMA_PAGO
join cobranza c on c.ID_OPCION_PAGO = o.ID_OPCION_PAGO
join cab_factura d on d.ID_CAB_FACTURA = c.ID_CAB_FACTURA
GROUP BY f.ID_FORMA_PAGO