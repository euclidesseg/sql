/* Ordenamiento */

select * from public.productos order by precion asc /*filtrar por ascendiente */
select * from public.productos order by precion desc /*filtrar de mayor a menor*/
select * from public.productos order by precion desc nulls last /*que me muestre nulos al final*/
select * from public.productos order by random() nulls last /*ordena de forma random*/


