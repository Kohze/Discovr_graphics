#' Discovr Graphics
#' made possible with htmlwidgets and D3
#' @import htmlwidgets
#' @export
d4_three <- function(inputList, width = "auto", height = "auto") {

  # forward options using x
  x = list(
    col1a1 = inputList[["col1a1"]],
    col1a2 = inputList[["col1a2"]],
    col2a1 = inputList[["col2a1"]],
    col2a2 = inputList[["col2a2"]],
    col3a1 = inputList[["col3a1"]],
    col3a2 = inputList[["col3a2"]],
    col3a3 = inputList[["col3a3"]],
    col3a4 = inputList[["col3a4"]],
    text1a1 = inputList[["text1a1"]],
    text1a2 = inputList[["text1a2"]],
    text2a1 = inputList[["text2a1"]],
    text2a2 = inputList[["text2a2"]],
    text3a1 = inputList[["text3a1"]],
    text3a2 = inputList[["text3a2"]],
    text3a3 = inputList[["text3a3"]],
    text3a4 = inputList[["text3a4"]],
    text4a1 = inputList[["text4a1"]],
    cNames = inputList[["names"]],
    method = inputList[["method"]],
    dataName = inputList[["dataName"]],
    inputNames1a1 = inputList[["inputNames1a1"]],
    inputNames1a2 = inputList[["inputNames1a2"]],
    inputNames2a1 = inputList[["inputNames2a1"]],
    inputNames2a2 = inputList[["inputNames2a2"]],
    inputNames3a1 = inputList[["inputNames3a1"]],
    inputNames3a2 = inputList[["inputNames3a2"]],
    inputNames3a3 = inputList[["inputNames3a3"]],
    inputNames3a4 = inputList[["inputNames3a4"]],
    inputNames4a1 = inputList[["inputNames4a1"]]
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'd4_three',
    x,
    width = width,
    height = height,
    package = 'd3three'
  )
}

#' Shiny bindings for d4_three
#'
#' Output and render functions for using d4_three within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a d4_three
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name d4_three-shiny
#'
#' @export
d4_threeOutput <- function(outputId, width = '100%', height = '100%'){
  htmlwidgets::shinyWidgetOutput(outputId, 'd4_three', width, height, package = 'd3three')
}

#' @rdname d4_three-shiny
#' @export
renderD4_three <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, d4_threeOutput, env, quoted = TRUE)
}
