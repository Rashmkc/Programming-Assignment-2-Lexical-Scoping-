getwd()

##> getwd()
## "C:/Users/rashmkc.ANT/Documents/Week 3 Assignment/Lexical Scoping"
## setting input x as a matrix
## Setting the Solved Value "sv" as a null
## chaning every reference to "mean" to "solve"
library(MASS)
makeCacheMatrix <- function(x = matrix()){
    m <- NULL    
    set <- function(y){
      x <<- y
      m <<- NULL
      
    }
    get <- function() x
    setm <- function(mean) m <<- mean
    getm  <- function(){
          inver <- ginv(x)    
          inver%*%x     #function tobtain inverse of matrix
    } 
    
    list(set = set, get = get,
          setm = setm,
          getm = getm
         )
}

## now chaning "mean" to "solve" as "m" to "s"

cacheSolve <- function (x, ...){
    m <- x$getm()
    if(!is.null(m)){
        message("getting cached data!")
      return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setm(m)
    m
  
}