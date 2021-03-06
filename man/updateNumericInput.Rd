\name{updateNumericInput}
\alias{updateNumericInput}
\title{Change the value of a number input on the client}
\usage{
  updateNumericInput(session, inputId, label = NULL,
    value = NULL, min = NULL, max = NULL, step = NULL)
}
\arguments{
  \item{session}{The \code{session} object passed to
  function given to \code{shinyServer}.}

  \item{inputId}{The id of the input object.}

  \item{label}{The label to set for the input object.}

  \item{value}{The value to set for the input object.}

  \item{min}{Minimum value.}

  \item{max}{Maximum value.}

  \item{step}{Step size.}
}
\description{
  Change the value of a number input on the client
}
\details{
  The input updater functions send a message to the client,
  telling it to change the settings of an input object. The
  messages are collected and sent after all the observers
  (including outputs) have finished running.

  The syntax of these functions is similar to the functions
  that created the inputs in the first place. For example,
  \code{\link{numericInput}()} and
  \code{updateNumericInput()} take a similar set of
  arguments.

  Any arguments with NULL values will be ignored; they will
  not result in any changes to the input object on the
  client.
}
\examples{
\dontrun{
shinyServer(function(input, output, session) {

  observe({
    # We'll use the input$controller variable multiple times, so save it as x
    # for convenience.
    x <- input$controller

    updateNumericInput(session, "inNumber", value = x)

    updateNumericInput(session, "inNumber2",
      label = paste("Number label ", x),
      value = x, min = x-10, max = x+10, step = 5)
  })
})
}
}
\seealso{
  \code{\link{numericInput}}
}

