# Tabla resumen de temperatura por estacion

Calcula la media y el desvio estandar de la temperatura de abrigo a 150
cm de una o mas estaciones.

## Usage

``` r
tabla_resumen_temperatura(datos)
```

## Arguments

- datos:

  Data frame con los datos de una o mas estaciones. Tiene que tener las
  columnas `id` y `temperatura_abrigo_150cm`.

## Value

Una tabla con una fila para la media, otra para el desvio y una columna
por estacion.

## Examples

``` r
tabla_resumen_temperatura(estaciones)
#> # A tibble: 2 × 6
#>   variable NH0046 NH0098 NH0437 NH0472 NH0910
#>   <chr>     <dbl>  <dbl>  <dbl>  <dbl>  <dbl>
#> 1 media     17.3   18.6   20.2   18.0   17.7 
#> 2 desvio     5.90   5.98   5.77   5.94   6.12
```
