datos_prueba <- data.frame(id = c("A", "B"),
                           fecha = as.Date(c("2020-01-01", "2020-02-01")),
                           temperatura_abrigo_150cm = c(25, 22))

test_that("devuelve un ggplot con colores elegidos o al azar", {
  expect_s3_class(grafico_temperatura_mensual(datos_prueba, colores = c("red", "blue")), "ggplot")
  expect_s3_class(grafico_temperatura_mensual(datos_prueba), "ggplot")
})

test_that("da error si faltan colores", {
  expect_error(grafico_temperatura_mensual(datos_prueba, colores = "red"),
               "un color por estacion")
})
