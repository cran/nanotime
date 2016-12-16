## nanotime [![Build Status](https://travis-ci.org/eddelbuettel/nanotime.svg)](https://travis-ci.org/eddelbuettel/nanotime) [![License](http://img.shields.io/badge/license-GPL%20%28%3E=%202%29-brightgreen.svg?style=flat)](http://www.gnu.org/licenses/gpl-2.0.html) [![CRAN](http://www.r-pkg.org/badges/version/nanotime)](https://cran.r-project.org/package=nanotime) [![Downloads](http://cranlogs.r-pkg.org/badges/nanotime?color=brightgreen)](http://www.r-pkg.org/pkg/nanotime) [![Code Coverage](https://codecov.io/gh/eddelbuettel/nanotime/graph/badge.svg)](https://codecov.io/gh/eddelbuettel/nanotime)


Nanosecond Time Resolution for R

### Motivation

R has excellent tools for dates and times. The `Date` and `POSIXct` classes (as well as the 'wide'
representation in `POSIXlt`) are versatile, and a lot of useful tooling has been built around them.

However, `POSIXct` is implemented as a `double` with fractional seconds since the epoch. Given the
53 bits accuracy, it leaves just a bit less than _microsecond_ resolution.  Which is good enough for
most things.

But more and more performance measurements, latency statistics, ... are now measured more finely,
and we need _nanosecond_ resolution. For which commonly an `integer64` is used to represent
nanoseconds since the epoch.

And while R does not a _native_ type for this, the [bit64](https://cran.r-project.org/package=bit64)
package by [Jens Oehlschlägel](https://github.com/joehl) offers a performant one implemented as a
lightweight S3 class.  So this package uses this `integer64` class, along with two helper functions
for parsing and formatting, respectively, at nano-second resolution from the
[RcppCCTZ](http://dirk.eddelbuettel.com/code/rcpp.cctz.html) package which wraps the
[CCTZ library](https://github.com/google/cctz) from Google.  CCTZ is a modern C++11 library
extending the (C++11-native) `chrono` type.


### Examples

#### Simple Parsing and Arithmetic

```r
R> x <- nanotime("1970-01-01T00:00:00.000000001+00:00")
R> print(x)
integer64
[1] 1
R> format(x)
[1] "1970-01-01T00:00:00.000000001+00:00"
R> x <- x + 1
R> print(x)
integer64
[1] 2
R> format(x)
[1] "1970-01-01T00:00:00.000000002+00:00"
R>
```

#### Vectorised

```r
R> options("width"=60)
R> v <- nanotime(Sys.time()) + 1:5
R> v
integer64
[1] 1481505724483583001 1481505724483583002
[3] 1481505724483583003 1481505724483583004
[5] 1481505724483583005
R> format(v)
[1] "2016-12-12T01:22:04.483583001+00:00"
[2] "2016-12-12T01:22:04.483583002+00:00"
[3] "2016-12-12T01:22:04.483583003+00:00"
[4] "2016-12-12T01:22:04.483583004+00:00"
[5] "2016-12-12T01:22:04.483583005+00:00"
R> 
```

#### Use with `zoo`

```r
R> z <- zoo(cbind(A=1:5, B=5:1), v)
R> options("nanotimeFormat"="%H:%M:%E*S")  ## override default
R> z
                          A B
01:47:55.812513001 1 5
01:47:55.812513002 2 4
01:47:55.812513003 3 3
01:47:55.812513004 4 2
01:47:55.812513005 5 1
R> 
```

#### Use with data.table

```r
R> library(data.table)
R> library(bit64)   # register some print methods for integer64
R> raw <- data.table(cbind(A=1:5, B=5:1), v)
R> fwrite(raw, file="/tmp/raw.csv")
R> cooked <- fread("/tmp/raw.csv")
```

### Technical Details

The [bit64](https://cran.r-project.org/package=bit64) package (by
[Jens Oehlschlägel](https://github.com/joehl)) supplies the `integer64` type used to store the
nanosecond resolution time as (positive or negative) offsets to the epoch of January 1, 1970. The
[RcppCCTZ](http://dirk.eddelbuettel.com/code/rcpp.cctz.html) package supplies the formatting and
parsing routines based on the (modern C++) library [CCTZ](https://github.com/google/cctz) from
Google.

### Status

The package is in the very early stages. Expect changes, maybe even breaking ones. But the package
has some tests, and code coverage.

See the [issue tickets](https://github.com/eddelbuettel/nanotime/issues) for an up to date list of potentially desirable, possibly planned, or at least discussed items.

### Installation

Once on [CRAN](https://cran.r-project.org) you will be able to do 

```r
install.packages("nanotime")
```

Until then, or to install development versions, it can also be installed via a standard

```r
install.packages("RcppCCTZ")   # need 0.1.0 or later
remotes::install_github("eddelbuettel/nanotime")  
```

### Author

Dirk Eddelbuettel

### License

GPL (>= 2)
