getwd()

##> getwd()
## "C:/Users/rashmkc.ANT/Documents/Week 3 Assignment/Lexical Scoping"
## setting input x as a matrix
## Setting the Solved Value "sv" as a null
## chaning every reference to "mean" to "solve"

createCacheMatrix <- function(x = matrix()){
    m <- NULL
    set <- function(y){
      x <<- y
      m <<- NULL
      
    }
    get <- function() x
    setmean <- function(mean) m <<- mean
    getmean <- function() m
    list(set = set, get = get,
          setmean = setmean,
          getmean = getmean
         )
}

## now chaning "mean" to "solve" as "m" to "s"

cacheSolve <- function (x, ...){
    m <- x$getmean()
    if(!is.null(m)){
        message("getting cached data")
      return(m)
    }
    data <- x$get()
    m <- mean(data, ...)
    x$setmean(m)
    sv
  
}