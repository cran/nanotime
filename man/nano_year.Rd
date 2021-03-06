% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nanotime.R
\name{nano_wday}
\alias{nano_wday}
\alias{nano_wday,nanotime-method}
\alias{nano_mday,nanotime-method}
\alias{nano_month,nanotime-method}
\alias{nano_year,nanotime-method}
\alias{nano_mday}
\alias{nano_month}
\alias{nano_year}
\title{Get a component of a date time}
\usage{
nano_wday(x, tz)

nano_mday(x, tz)

nano_month(x, tz)

nano_year(x, tz)
}
\arguments{
\item{x}{a \code{nanotime} object}

\item{tz}{\code{character} a string representing a timezone}
}
\description{
Get a component of a date time. \code{nano_wday} returns the
numeric position in a week, with Sunday == 0. \code{nano_mday}
returns the numeric day (i.e. a value from 1 to
31). \code{nano_month} returns the month (i.e. a value from 1 to
12). \code{nano_year} returns the year.
}
\details{
Note that the \code{tz} parameter is mandatory because the day
boundary is different depending on the time zone and
\code{nanotime} does not store the timezone as it is just an
offset in nanoseconds from the epoch.
}
\examples{
\dontrun{
nano_wday(as.nanotime("2020-03-14 23:32:00-04:00"), "America/New_York")
nano_wday(as.nanotime("2020-03-14 23:32:00 America/New_York"), "Europe/Paris")
nano_mday(as.nanotime("2020-03-14 23:32:00-04:00"), "America/New_York")
nano_mday(as.nanotime("2020-03-14 23:32:00 America/New_York"), "Europe/Paris")
nano_month(as.nanotime("2020-12-31 23:32:00-04:00"), "America/New_York")
nano_month(as.nanotime("2020-12-31 23:32:00 America/New_York"), "Europe/Paris")
nano_year(as.nanotime("2020-12-31 23:32:00-04:00"), "America/New_York")
nano_year(as.nanotime("2020-12-31 23:32:00 America/New_York"), "Europe/Paris")
}

}
