devtools::load_all()

NH0472 <- leer_estacion("NH0472", file.path(tempdir(), "NH0472.csv"))
NH0910 <- leer_estacion("NH0910", file.path(tempdir(), "NH0910.csv"))
NH0046 <- leer_estacion("NH0046", file.path(tempdir(), "NH0046.csv"))
NH0098 <- leer_estacion("NH0098", file.path(tempdir(), "NH0098.csv"))
NH0437 <- leer_estacion("NH0437", file.path(tempdir(), "NH0437.csv"))

estaciones <- rbind(NH0472, NH0910, NH0046, NH0098, NH0437) |>
  dplyr::select(id, fecha, temperatura_abrigo_150cm,
                temperatura_abrigo_150cm_maxima, temperatura_abrigo_150cm_minima,
                precipitacion_pluviometrica, humedad_media_8_14_20)

usethis::use_data(estaciones, overwrite = TRUE)
