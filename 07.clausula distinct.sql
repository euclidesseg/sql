/*la clausula distinct lo que hace es seleccionarme unicamente los datos unicos
  es decir, si tengo producto x dos veces solo me lo va a tener 1 ves*/
select distinct nombre from productos order by nombre desc nulls last
