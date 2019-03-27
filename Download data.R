## TIMSS Data
## Yuqi
## 3/22/19


## Setting Things Up
install.packages("EdSurvey")
library(EdSurvey)


## Download TIMSS Data - 2015 & 2011
downloadTIMSS(root = paste0(getwd(), "/TIMSSData/"), year = c(2015,2011))
downloadTIMSS(root = paste0(getwd(), "/TIMSSData/"), year = c(2015, 2011), cache = TRUE)

## Read
readTIMSS()