#' Using a dataframe specific column to plot a line figure
#'
#' @param data a dataframe or tibble
#'
#' @return a figure
#' @export
#'
#' @examples linechart(data,t,a,b,c,d)
linechart <- function(da,t,a,b,c,d)
{
library(readxl)

plot(da$t,da$a,
     type="l",
     xlab="时间",
     ylab="同比增长 单位（%）",
     ylim=c(-30,50),
     col="red")
par(new=T)
plot(da$t,da$b,
     type="l",
     ann=F,
     ylim=c(-30,50),
     col="green")
par(new=T)
plot(da$t,da$c,
     type="l",
     ann=F,
     ylim=c(-30,50),
     col="blue")
par(new=T)
plot(da$t,da$d,
     type="l",
     ann=F,
     ylim=c(-30,50),
     col="yellow")
}

