above10 <- function(x) {
  use <- x > 10
  x[use]
}

above <- function(x,y) { #x can equal a range, for example 1:10
                         #y is the number at which you want to cut off
                         #in other words "which of x (if any) is greater
                         #than y.
                         #note that capability to send multiple values
                         #to function is enabled by default.
  use <- x > y
  x[use]
}