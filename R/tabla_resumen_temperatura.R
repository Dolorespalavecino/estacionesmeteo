#' Tabla resumen de temperatura por estacion
#'
#' Calcula la media y el desvio estandar de la temperatura de abrigo a 150 cm
#' de una o mas estaciones.
#'
#' @param datos Data frame con los datos de una o mas estaciones. Tiene que
#'   tener las columnas `id` y `temperatura_abrigo_150cm`.
#'
#' @returns Una tabla con una fila para la media, otra para el desvio y una
#'   columna por estacion.
#' @export
#'
#' @examples
#' tabla_resumen_temperatura(estaciones)
tabla_resumen_temperatura <- function(datos) {
  datos |>
    dplyr::group_by(id) |>
    dplyr::summarise(media = mean(temperatura_abrigo_150cm, na.rm = TRUE),
                     desvio = stats::sd(temperatura_abrigo_150cm, na.rm = TRUE)) |>
    tidyr::pivot_longer(cols = c("media", "desvio"), names_to = "variable", values_to = "valor") |>
    tidyr::pivot_wider(names_from = id, values_from = valor)
}
