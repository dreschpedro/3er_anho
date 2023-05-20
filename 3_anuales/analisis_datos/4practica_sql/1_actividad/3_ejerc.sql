-- Realizar un listado de las sucursales indicando el total vendido por cada una de ellas. 
-- Indicar la ciudad y provincia donde se ubica la sucursal

select sc.DESC_SUCURSAL sucursal, c.DESC_CIUDAD ciudad, p.DESC_PROVINCIA pcia, sum(a.TOTAL_VTA_CON_IVA) vendido_iva
from sucursal sc
join cab_vta a on a.ID_SUCURSAL = sc.ID_SUCURSAL
join zona z on z.ID_ZONA = sc.ID_ZONA
join ciudad c on c.ID_CIUDAD = z.ID_CIUDAD
join provincia p on p.ID_PROVINCIA = c.ID_PROVINCIA
group by sc.ID_SUCURSAL