## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
xinverse <- NULL
set <- function(y) {
  x <<- y
  xinverse <<- NULL
}
get <- function() x
setinverse <- function(solve) xinverse <<- solve
getinverse <- function() xinverse
list(set = set, get = get,
     setinverse = setinverse,
     getinverse = getinverse)

}


## I essentially copied the example code and hoped it was right.
## I do not know if it is or not. I do not think so.
## The <<- operator is new to me. It will take me a little
## while to understand how this works, and I regret
## to say that this assignment hit me during a very
## busy weekend. I could not devote the time to it I
## would like to have devoted. All apologies.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  xinverse <- x$solve()
  if(!is.null(xinverse)) {
    message("getting cached data")
    return(xinverse)
  }
  NewMatrix <- x$get()
  xinverse <- solve(NewMatrix, ...)
  x$setinverse(xinverse)
  xinverse
  
}
##Again, no idea if this is going to work or not.