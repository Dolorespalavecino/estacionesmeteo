test_that("calcula media y desvio por estacion", {
  datos <- data.frame(id = c("A", "A", "B", "B"),
                      temperatura_abrigo_150cm = c(10, 20, 5, 5))
  resultado <- tabla_resumen_temperatura(datos)
  expect_equal(nrow(resultado), 2)
  expect_equal(names(resultado), c("variable", "A", "B"))
  expect_equal(resultado$A[resultado$variable == "media"], 15)
  expect_equal(resultado$B[resultado$variable == "desvio"], 0)
})

test_that("ignora los NA", {
  datos <- data.frame(id = c("A", "A", "A"),
                      temperatura_abrigo_150cm = c(10, NA, 20))
  resultado <- tabla_resumen_temperatura(datos)
  expect_equal(resultado$A[resultado$variable == "media"], 15)
})
