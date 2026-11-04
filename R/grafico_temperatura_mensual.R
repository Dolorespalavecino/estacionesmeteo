#' Grafico de temperatura media mensual
#'
#' Grafica el promedio mensual de la temperatura de abrigo a 150 cm, con una
#' linea por estacion.
#'
#' @param datos Data frame con los datos de una o mas estaciones. Tiene que
#'   tener las columnas `id`, `fecha` y `temperatura_abrigo_150cm`.
#' @param colores Vector con un color por estacion, por ejemplo
#'   `c("red", "blue")`. Si es `NULL`, se eligen colores al azar, sin blancos
#'   ni grises claros.
#' @param titulo Texto con el titulo del grafico.
#'
#' @returns Un grafico de ggplot2.
#' @export
#'
#' @examples
#' grafico_temperatura_mensual(estaciones)
#'
#' grafico_temperatura_mensual(
#'   estaciones,
#'   colores = c("red", "blue", "darkgreen", "orange", "purple"),
#'   titulo = "Temperatura media mensual"
#' )
grafico_temperatura_mensual <- function(datos, colores = NULL, titulo = "Temperatura") {

  cantidad_estaciones <- length(unique(datos$id))

  if (is.null(colores)) {
    colores_posibles <- grDevices::colors(distinct = TRUE)
    colores_posibles <- colores_posibles[!grepl("white|light|gray|grey|snow|ivory", colores_posibles)]
    colores <- sample(colores_posibles, cantidad_estaciones)
  }

  if (length(colores) < cantidad_estaciones) {
    cli::cli_abort(c(
      "Hace falta un color por estacion.",
      "i" = "Hay {cantidad_estaciones} estaciones y se indicaron {length(colores)} colores."
    ))
  }

  datos |>
    dplyr::mutate(mes = lubridate::month(fecha)) |>
    dplyr::group_by(id, mes) |>
    dplyr::summarise(temperatura_media = mean(temperatura_abrigo_150cm, na.rm = TRUE),
                     .groups = "drop") |>
    ggplot2::ggplot(ggplot2::aes(x = mes, y = temperatura_media, color = id)) +
    ggplot2::geom_line() +
    ggplot2::scale_color_manual(values = colores) +
    ggplot2::ggtitle(titulo)
}
