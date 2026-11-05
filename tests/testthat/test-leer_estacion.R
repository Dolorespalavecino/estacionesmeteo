test_that("da error si el id no es texto", {
  expect_error(leer_estacion(437, "x.csv"), "debe ser texto")
})

test_that("lee un archivo que ya existe sin descargar", {
  ruta <- tempfile(fileext = ".csv")
  write.csv(data.frame(id = "NH0437", fecha = "2020-01-01",
                       temperatura_abrigo_150cm = 20,
                       direccion_viento_1000cm = "N"),
            ruta, row.names = FALSE)
  expect_message(datos <- leer_estacion("NH0437", ruta), "ya existe")
  expect_s3_class(datos, "data.frame")
  expect_s3_class(datos$fecha, "Date")
  expect_type(datos$direccion_viento_1000cm, "character")
})

test_that("descarga el archivo si no existe", {
  skip_if_offline()
  ruta <- tempfile(fileext = ".csv")
  datos <- leer_estacion("NH0437", ruta)
  expect_true(file.exists(ruta))
  expect_equal(unique(datos$id), "NH0437")
})
