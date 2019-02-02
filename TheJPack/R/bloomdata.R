


#' All One Year Function
#'
#' Translates a vector of dates (with months, days and years) into a vector of months-days with no year
#' @param inputyears A vector of the years to be changed
#' @param inputformat The format of the inputyears vector. Defaults to "%Y-%m-%d"
#' @keywords dates date
#' @export
#' @examples
#' alloneyr()

alloneyr <- function(inputyears, inputformat = "%Y-%m-%d"){
  daymonth <- format(as.Date(inputyears, format = inputformat), "%m-%d")
  fakeyear <- na.omit(paste("1700", na.omit(daymonth), sep = "-")) 
  newdates <- format(as.Date(fakeyear, format = inputformat), "%m-%d")
  return(newdates)
}



#' Test Function
#'
#' A function to test if this package has been installed correctly
#' @param number Any integer. It should come out multiplied by 7
#' @keywords test function
#' @export
#' @examples
#' testfunction()


testfunction <- function(number){
  newnumb <- number*7
  return(newnumb)
}