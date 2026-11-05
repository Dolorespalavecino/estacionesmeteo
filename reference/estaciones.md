# Datos diarios de cinco estaciones meteorologicas del INTA

Mediciones diarias de las estaciones NH0472, NH0910, NH0046, NH0098 y
NH0437.

## Usage

``` r
estaciones
```

## Format

Un data frame con 95681 filas y 7 columnas:

- id:

  Codigo de la estacion.

- fecha:

  Fecha de la medicion.

- temperatura_abrigo_150cm:

  Temperatura media de abrigo a 150 cm, en grados Celsius.

- temperatura_abrigo_150cm_maxima:

  Temperatura maxima de abrigo a 150 cm, en grados Celsius.

- temperatura_abrigo_150cm_minima:

  Temperatura minima de abrigo a 150 cm, en grados Celsius.

- precipitacion_pluviometrica:

  Precipitacion del dia, en milimetros.

- humedad_media_8_14_20:

  Humedad relativa media de las mediciones de las 8, 14 y 20 horas, en
  porcentaje.

## Source

Sistema SIGA del INTA, descargado de
<https://github.com/rse-r/intro-programacion/tree/main/datos>

## Examples

``` r
head(estaciones)
#> # A tibble: 6 × 7
#>   id     fecha      temperatura_abrigo_150cm temperatura_abrigo_150cm_maxima
#>   <chr>  <date>                        <dbl>                           <dbl>
#> 1 NH0472 1961-07-01                     11.1                            13.4
#> 2 NH0472 1961-07-02                      5.5                            10.5
#> 3 NH0472 1961-07-03                      6                              10.8
#> 4 NH0472 1961-07-04                     NA                              NA  
#> 5 NH0472 1961-07-05                     12.4                            14.8
#> 6 NH0472 1961-07-06                     11                              16.5
#> # ℹ 3 more variables: temperatura_abrigo_150cm_minima <dbl>,
#> #   precipitacion_pluviometrica <dbl>, humedad_media_8_14_20 <dbl>
unique(estaciones$id)
#> [1] "NH0472" "NH0910" "NH0046" "NH0098" "NH0437"
```
