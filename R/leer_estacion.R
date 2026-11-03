#' Leer los datos de una estacion meteorologica
#'
#' Descarga los datos de una estacion meteorologica del INTA, solo si todavia
#' no estan descargados, y los lee. Los tipos de columna se indican para que
#' las columnas vacias al principio del archivo no se lean como logicas.
#'
#' @param id_estacion Texto con el codigo de la estacion, por ejemplo "NH0437".
#' @param ruta Texto con la ruta donde se guarda el archivo, por ejemplo
#'   "datos/NH0437.csv".
#'
#' @returns Un data frame (tibble) con los datos de la estacion.
#' @export
#'
#' @examples
#' \donttest{
#' ruta <- file.path(tempdir(), "NH0437.csv")
#' leer_estacion("NH0437", ruta)
#' }
leer_estacion <- function(id_estacion, ruta) {

  if (!is.character(id_estacion)) {
    cli::cli_abort(c(
      "id_estacion debe ser texto.",
      "i" = "La variable ingresada es un {class(id_estacion)[1]}."
    ))
  }

  if (file.exists(ruta)) {
    cli::cli_inform("El archivo {ruta} ya existe, se lee sin descargar.")
  } else {
    url_estacion <- paste0("https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/",
                           id_estacion, ".csv")
    cli::cli_inform("Descargando los datos de la estacion {id_estacion} en {ruta}.")
    utils::download.file(url = url_estacion, destfile = ruta)
  }

  tipos_columnas <- readr::cols(
    .default = readr::col_double(),
    id = readr::col_character(),
    fecha = readr::col_date(),
    direccion_viento_1000cm = readr::col_character()
  )

  readr::read_csv(ruta, col_types = tipos_columnas)
}
