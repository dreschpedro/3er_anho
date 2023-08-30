-- Listado de clientes y si realizó compras indicar el importe total comprado. 
SELECT c.ID_CLIENTE, c.NOMBRE nombre, sum(v.TOTAL_VTA_CON_IVA) tot_iva
FROM cliente c
LEFT JOIN cab_vta v on v.ID_CLIENTE = c.ID_CLIENTE
GROUP BY c.ID_CLIENTE