# Grafico de temperatura media mensual

Grafica el promedio mensual de la temperatura de abrigo a 150 cm, con
una linea por estacion.

## Usage

``` r
grafico_temperatura_mensual(datos, colores = NULL, titulo = "Temperatura")
```

## Arguments

- datos:

  Data frame con los datos de una o mas estaciones. Tiene que tener las
  columnas `id`, `fecha` y `temperatura_abrigo_150cm`.

- colores:

  Vector con un color por estacion, por ejemplo `c("red", "blue")`. Si
  es `NULL`, se eligen colores al azar, sin blancos ni grises claros.

- titulo:

  Texto con el titulo del grafico.

## Value

Un grafico de ggplot2.

## Examples

``` r
grafico_temperatura_mensual(estaciones)


grafico_temperatura_mensual(
  estaciones,
  colores = c("red", "blue", "darkgreen", "orange", "purple"),
  titulo = "Temperatura media mensual"
)
```
