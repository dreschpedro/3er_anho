-- Listado de clientes que realizaron compras (solo los que realizaron al menos una compra),
-- indicar monto total de las compras realizadas. 
SELECT c.ID_CLIENTE, c.NOMBRE nombre, sum(v.TOTAL_VTA_CON_IVA) tot_iva
FROM cliente c
JOIN cab_vta v on v.ID_CLIENTE = c.ID_CLIENTE
GROUP BY c.ID_CLIENTE