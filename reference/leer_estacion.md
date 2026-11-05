# Leer los datos de una estacion meteorologica

Descarga los datos de una estacion meteorologica del INTA, solo si
todavia no estan descargados, y los lee. Los tipos de columna se indican
para que las columnas vacias al principio del archivo no se lean como
logicas.

## Usage

``` r
leer_estacion(id_estacion, ruta)
```

## Arguments

- id_estacion:

  Texto con el codigo de la estacion, por ejemplo "NH0437".

- ruta:

  Texto con la ruta donde se guarda el archivo, por ejemplo
  "datos/NH0437.csv".

## Value

Un data frame (tibble) con los datos de la estacion.

## Examples

``` r
# \donttest{
ruta <- file.path(tempdir(), "NH0437.csv")
leer_estacion("NH0437", ruta)
#> Descargando los datos de la estacion NH0437 en /tmp/RtmpACJ3zd/NH0437.csv.
#> # A tibble: 18,929 × 35
#>    id     fecha      temperatura_abrigo_150cm temperatura_abrigo_150cm_maxima
#>    <chr>  <date>                        <dbl>                           <dbl>
#>  1 NH0437 1970-08-01                    23.3                             31.2
#>  2 NH0437 1970-08-02                    26.6                             32.1
#>  3 NH0437 1970-08-03                    17.4                             22.9
#>  4 NH0437 1970-08-04                    11.0                             11.9
#>  5 NH0437 1970-08-05                    11.1                             12.6
#>  6 NH0437 1970-08-06                    13.6                             15.1
#>  7 NH0437 1970-08-07                    10.8                             14.9
#>  8 NH0437 1970-08-08                     7.75                            13.7
#>  9 NH0437 1970-08-09                     8.2                             15.1
#> 10 NH0437 1970-08-10                    10.2                             18.4
#> # ℹ 18,919 more rows
#> # ℹ 31 more variables: temperatura_abrigo_150cm_minima <dbl>,
#> #   temperatura_intemperie_5cm_minima <dbl>,
#> #   temperatura_intemperie_50cm_minima <dbl>,
#> #   temperatura_suelo_5cm_media <dbl>, temperatura_suelo_10cm_media <dbl>,
#> #   temperatura_inte_5cm <dbl>, temperatura_intemperie_150cm_minima <dbl>,
#> #   humedad_suelo <dbl>, precipitacion_pluviometrica <dbl>, granizo <dbl>, …
# }
```
