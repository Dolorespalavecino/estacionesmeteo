# Cómo contribuir a estacionesmeteo

Este documento explica cómo proponer un cambio en estacionesmeteo. Para
una explicación más detallada sobre cómo contribuir a este y otros
paquetes del tidyverse, consultá la [guía de contribución para el
desarrollo](https://rstd.io/tidy-contrib) y nuestros [principios de
revisión de código](https://code-review.tidyverse.org/).

## Corregir errores de tipeo

Podés corregir errores de tipeo, de ortografía o de gramática en la
documentación directamente desde la interfaz web de GitHub, siempre que
los cambios se hagan en el archivo *fuente*. En general, esto significa
que vas a tener que editar los [comentarios de
roxygen2](https://roxygen2.r-lib.org/articles/roxygen2.html) en un
archivo `.R`, no en un archivo `.Rd`. Podés encontrar el archivo `.R`
que genera el `.Rd` leyendo el comentario de la primera línea.

## Cambios más grandes

Si querés hacer un cambio más grande, es buena idea abrir primero un
issue y asegurarte de que alguien del equipo esté de acuerdo en que es
necesario. Si encontraste un error, abrí un issue que lo muestre con un
[reprex](https://www.tidyverse.org/help/#reprex) mínimo (esto también te
va a ayudar a escribir un test unitario, si hace falta). Para más
consejos, consultá nuestra guía sobre [cómo crear un buen
issue](https://code-review.tidyverse.org/issues/).

### Proceso para hacer un pull request

- Hacé un fork del paquete y clonalo en tu computadora. Si nunca lo
  hiciste, te recomendamos usar
  `usethis::create_from_github("Dolorespalavecino/estacionesmeteo", fork = TRUE)`.

- Instalá todas las dependencias de desarrollo con
  `devtools::install_dev_deps()` y después asegurate de que el paquete
  pase el R CMD check corriendo `devtools::check()`. Si el R CMD check
  no pasa sin problemas, es buena idea pedir ayuda antes de seguir.

- Creá una rama de Git para tu pull request (PR). Te recomendamos usar
  `usethis::pr_init("breve-descripcion-del-cambio")`.

- Hacé tus cambios, hacé commit en git y después creá un PR corriendo
  `usethis::pr_push()` y siguiendo las indicaciones en el navegador. El
  título del PR tiene que describir brevemente el cambio. El cuerpo del
  PR tiene que incluir `Fixes #numero-de-issue`.

- Para los cambios que afecten a quienes usan el paquete, agregá un
  punto al principio de `NEWS.md` (es decir, justo debajo del primer
  título). Seguí el estilo descripto en
  <https://style.tidyverse.org/news.html>.

### Estilo de código

- El código nuevo tiene que seguir la [guía de
  estilo](https://style.tidyverse.org) del tidyverse. Podés usar
  [styler](https://CRAN.R-project.org/package=styler) para aplicar este
  estilo, pero no cambies el estilo de código que no tenga nada que ver
  con tu PR.

- Usamos [roxygen2](https://cran.r-project.org/package=roxygen2), con
  [sintaxis
  Markdown](https://cran.r-project.org/web/packages/roxygen2/vignettes/rd-formatting.html),
  para la documentación.

- Usamos [testthat](https://cran.r-project.org/package=testthat) para
  los tests unitarios. Las contribuciones que incluyen tests son más
  fáciles de aceptar.

## Código de conducta

Tené en cuenta que el proyecto estacionesmeteo se publica con un [Código
de conducta para
colaboradores](https://dolorespalavecino.github.io/CODE_OF_CONDUCT.md).
Al contribuir a este proyecto, aceptás cumplir sus términos.
