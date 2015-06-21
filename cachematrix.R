## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function () x
    setinverse <- function(solve) i <<- solve
    getinverse <- function() i
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## cacheSolve checks for cached inverse of the matrix, calculates inverse if
## necessary and then returns the value.

cacheSolve <- function(x, ...) {
    i <- makeCacheMatrix()$getinverse() #set the inverse
    if(!is.null(i)){
        message("getting cached data")
        return(i)
    }
    i <- makeCacheMatrix()$setinverse(solve(x))
    i
}
