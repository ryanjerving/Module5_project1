## @knitr setup

# define knitr options for this project's environment

knitr::opts_chunk$set(echo = FALSE)
knitr::opts_chunk$set(warning = FALSE)
knitr::opts_chunk$set(messages = FALSE)

# print blanks spaces rather than NAs for missing data in tables

options(knitr.kable.NA = ' ')

# load the R packages we'll need

library(fivethirtyeight)
library(tidyverse)
library(knitr)
library(kableExtra)
library(ggthemes)
library(stringr)

## @knitr loadData

# load  dataset from fivethirtyeight package...

data("weather_check", package="fivethirtyeight")

# and create a subset filtering out NAs and filtered on region

sdat <- weather_check %>%
  filter(region==params$region)