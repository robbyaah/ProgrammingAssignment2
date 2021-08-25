## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This Function will make a cache matrix and set inv as null

makeCacheMatrix <- function(x = matrix()) {
	#var and functions
	matrxinv <- NULL
        set<- function(y){
          x <<-y
          matrxinv <<- NULL
          }
          get <- function() {x}
          setInverse <- function(inverse){matrxinv<<-inverse}
          getInverse <- function(){matrxinv}
          list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## Write a short comment describing this function
## This functionn is cacheSolve and returns the matrix to inverse

cacheSolve <- function(x, ...) {
      matrxinv <- x$getInverse()
      if(!is.null(inv)){
        ## Return a matrix that is the inverse of 'x'
            message("getting cached data")
            return(matrxinv)
         }
         mat<- x$get()
         matrxinv<- solve(mat, ...)
         x$setInverse(matrxinv)
         matrxinv
}