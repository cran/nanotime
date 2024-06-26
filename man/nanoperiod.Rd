% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nanoperiod.R
\docType{class}
\name{nanoperiod-class}
\alias{nanoperiod-class}
\alias{nanoperiod}
\alias{Compare,ANY,nanoperiod-method}
\alias{Compare,nanoperiod,ANY-method}
\alias{-,ANY,nanoperiod-method}
\alias{-,nanoperiod,nanotime-method}
\alias{-,nanotime,nanoperiod-method}
\alias{/,ANY,nanoperiod-method}
\alias{/,nanoperiod,ANY-method}
\alias{Complex,nanoperiod-method}
\alias{Math,nanoperiod-method}
\alias{Math2,nanoperiod-method}
\alias{Summary,nanoperiod-method}
\alias{minus,nanoperiod,nanoival,character-method}
\alias{as.nanoperiod,character-method}
\alias{as.nanoperiod}
\alias{as.nanoperiod,integer64-method}
\alias{as.nanoperiod,numeric-method}
\alias{as.nanoperiod,integer-method}
\alias{as.nanoperiod,nanoduration-method}
\alias{as.nanoperiod,NULL-method}
\alias{as.nanoperiod,missing-method}
\alias{show,nanoperiod-method}
\alias{print,nanoperiod-method}
\alias{format.nanoperiod}
\alias{as.character,nanoperiod-method}
\alias{is.na,nanoperiod-method}
\alias{is.na<-,nanoperiod-method}
\alias{[[,nanoperiod-method}
\alias{[,nanoperiod,numeric-method}
\alias{[,nanoperiod,logical-method}
\alias{[,nanoperiod,character-method}
\alias{[,nanoperiod,ANY-method}
\alias{[<-,nanoperiod,ANY,ANY,ANY-method}
\alias{c.nanoperiod}
\alias{names,nanoperiod-method}
\alias{names<-,nanoperiod-method}
\alias{-,nanoperiod,ANY-method}
\alias{-,nanoperiod,nanoperiod-method}
\alias{-,nanoperiod,nanoduration-method}
\alias{-,nanoperiod,integer64-method}
\alias{-,nanoperiod,numeric-method}
\alias{-,nanoduration,nanoperiod-method}
\alias{-,integer64,nanoperiod-method}
\alias{-,numeric,nanoperiod-method}
\alias{+,nanoperiod,ANY-method}
\alias{+,ANY,nanoperiod-method}
\alias{+,nanoperiod,nanoperiod-method}
\alias{+,nanoperiod,nanoduration-method}
\alias{+,nanoperiod,integer64-method}
\alias{+,nanoperiod,nanotime-method}
\alias{+,nanoival,nanoperiod-method}
\alias{+,nanoperiod,nanoival-method}
\alias{+,nanotime,nanoperiod-method}
\alias{+,nanoperiod,numeric-method}
\alias{+,nanoduration,nanoperiod-method}
\alias{+,integer64,nanoperiod-method}
\alias{+,numeric,nanoperiod-method}
\alias{*,nanoperiod,integer64-method}
\alias{*,nanoperiod,ANY-method}
\alias{*,ANY,nanoperiod-method}
\alias{*,nanoperiod,numeric-method}
\alias{*,integer64,nanoperiod-method}
\alias{*,numeric,nanoperiod-method}
\alias{/,nanoperiod,integer64-method}
\alias{/,nanoperiod,numeric-method}
\alias{==,nanoperiod,nanoperiod-method}
\alias{!=,nanoperiod,nanoperiod-method}
\alias{plus,nanotime,nanoperiod,character-method}
\alias{plus}
\alias{plus,nanoperiod,nanotime,character-method}
\alias{minus,nanotime,nanoperiod,character-method}
\alias{minus}
\alias{minus,nanoperiod,nanotime,character-method}
\alias{plus,nanoival,nanoperiod,character-method}
\alias{plus,nanoperiod,nanoival,character-method}
\alias{minus,nanoival,nanoperiod,character-method}
\alias{NA_nanoperiod_}
\title{Period type with nanosecond precision}
\format{
An object of class \code{nanoperiod} of length 1.
}
\usage{
nanoperiod(months = 0, days = 0, duration = as.nanoduration(0))

\S4method{as.nanoperiod}{character}(x)

\S4method{as.nanoperiod}{integer64}(x)

\S4method{as.nanoperiod}{numeric}(x)

\S4method{as.nanoperiod}{integer}(x)

\S4method{as.nanoperiod}{nanoduration}(x)

\S4method{as.nanoperiod}{`NULL`}(x)

\S4method{as.nanoperiod}{missing}(x)

\S4method{show}{nanoperiod}(object)

\S4method{print}{nanoperiod}(x, quote = FALSE, ...)

\method{format}{nanoperiod}(x, ...)

\S4method{as.character}{nanoperiod}(x)

\S4method{is.na}{nanoperiod}(x)

\S4method{is.na}{nanoperiod}(x) <- value

\S4method{[[}{nanoperiod}(x, i, j, ..., drop = FALSE)

\S4method{[}{nanoperiod,numeric}(x, i, j, ..., drop = FALSE)

\S4method{[}{nanoperiod,logical}(x, i, j, ..., drop = FALSE)

\S4method{[}{nanoperiod,character}(x, i, j, ..., drop = FALSE)

\S4method{[}{nanoperiod,ANY}(x, i, j, ..., drop = FALSE)

\S4method{[}{nanoperiod,ANY,ANY,ANY}(x, i, j, ...) <- value

\method{c}{nanoperiod}(...)

\S4method{names}{nanoperiod}(x)

\S4method{names}{nanoperiod}(x) <- value

\S4method{-}{nanoperiod,ANY}(e1, e2)

\S4method{-}{nanoperiod,nanoperiod}(e1, e2)

\S4method{-}{nanoperiod,nanoduration}(e1, e2)

\S4method{-}{nanoperiod,integer64}(e1, e2)

\S4method{-}{nanoperiod,numeric}(e1, e2)

\S4method{-}{nanoduration,nanoperiod}(e1, e2)

\S4method{-}{integer64,nanoperiod}(e1, e2)

\S4method{-}{numeric,nanoperiod}(e1, e2)

\S4method{+}{nanoperiod,ANY}(e1, e2)

\S4method{+}{nanoperiod,nanoperiod}(e1, e2)

\S4method{+}{nanoperiod,nanoduration}(e1, e2)

\S4method{+}{nanoperiod,integer64}(e1, e2)

\S4method{+}{nanoperiod,nanotime}(e1, e2)

\S4method{+}{nanoival,nanoperiod}(e1, e2)

\S4method{+}{nanoperiod,nanoival}(e1, e2)

\S4method{+}{nanotime,nanoperiod}(e1, e2)

\S4method{+}{nanoperiod,numeric}(e1, e2)

\S4method{+}{nanoduration,nanoperiod}(e1, e2)

\S4method{+}{integer64,nanoperiod}(e1, e2)

\S4method{+}{numeric,nanoperiod}(e1, e2)

\S4method{*}{nanoperiod,integer64}(e1, e2)

\S4method{*}{nanoperiod,numeric}(e1, e2)

\S4method{*}{integer64,nanoperiod}(e1, e2)

\S4method{*}{numeric,nanoperiod}(e1, e2)

\S4method{/}{nanoperiod,integer64}(e1, e2)

\S4method{/}{nanoperiod,numeric}(e1, e2)

\S4method{==}{nanoperiod,nanoperiod}(e1, e2)

\S4method{!=}{nanoperiod,nanoperiod}(e1, e2)

\S4method{plus}{nanotime,nanoperiod,character}(e1, e2, tz)

\S4method{plus}{nanoperiod,nanotime,character}(e1, e2, tz)

\S4method{minus}{nanotime,nanoperiod,character}(e1, e2, tz)

\S4method{minus}{nanoperiod,nanotime,character}(e1, e2, tz)

\S4method{plus}{nanoival,nanoperiod,character}(e1, e2, tz)

\S4method{plus}{nanoperiod,nanoival,character}(e1, e2, tz)

\S4method{minus}{nanoival,nanoperiod,character}(e1, e2, tz)

NA_nanoperiod_
}
\arguments{
\item{months}{Used in the constructor to indicate the number of
months of the \code{nanoperiod}}

\item{days}{Used in the constructor to indicate the number of
days of the \code{nanoperiod}}

\item{duration}{Used in the constructor to indicate the duration
component of the \code{nanoperiod}}

\item{x, value}{An object of class \code{nanoperiod}}

\item{object}{argument for method \code{show}}

\item{quote}{indicates if the output of \code{print} should be
quoted}

\item{...}{further arguments}

\item{i}{index specifying elements to extract or replace.}

\item{j}{Required for \code{[} signature but ignored here}

\item{drop}{Required for \code{[} signature but ignored here}

\item{e1}{Operand of class \code{nanoperiod}}

\item{e2}{Operand of class \code{nanoperiod}}

\item{tz}{\code{character} indicating a timezone}
}
\description{
\code{nanoperiod} is a length of time type (implemented as an S4
class) with nanosecond precision. It differs from
\code{nanoduration} because it is capable of representing calendar
months and days. It can thus represent years (12 months) and weeks
(7 days). A period is a somewhat abstract representation of time:
it is only when anchored to a point in time and in a specific time
zone that it is possible to convert it to a specific
duration. This means that many of the operations involving periods
need the additional argument \code{tz}.
}
\section{Constructors}{


The true constructor is
}

\section{Output Format}{


A \code{nanoperiod} is displayed as months, days, and \code{nanoduration}
like this: \code{10m2d/10:12:34.123_453_000}.
}

\section{Details}{




Adding or subtracting \code{nanoperiod} and \code{nanotime}
require a timezone as third argument. For this reason it is not
possible to use the binary operator `\code{+}`. Instead the
functions `\code{plus}` and `\code{minus}` are defined. These
functions attempt to keep the same offset within a day in the
specified timezone: this means for instance that adding a day when
that day crosses a time zone adjustment such as a daylight saving
time, results in a true time increment of less or more than 24
hours to preserve the offset. Preserving the offset works for
increments that are smaller than a day too, provided the increment
results in a datetime where the timezone adjustment is valid. When
this is not the case, adding a `nanoperiod` behaves in the same
way as adding a `nanoduration`.
}

\examples{
\dontrun{
p <- nanoperiod(months=12, days=7, duration="01:00:00")
print(p)

#  when adding a \code{nanoperiod} to a \code{nanotime} or to a
# \code{nanoival}, a time zone must be specified:
y <- nanotime("1970-01-01T00:00:00+00:00")
plus(y, p, tz="America/Chicago")
}

}
\seealso{
\code{\link{nanotime}}, \code{\link{nanoduration}},
    \code{\link{nanoival}}, \code{\link{nanoperiod.month,nanoperiod-method}}
}
\author{
Dirk Eddelbuettel

Leonardo Silvestri
}
\keyword{datasets}
