## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ## this function creates a special matrix object that can cache its inverse
  ## contains functions to do the following
  ## 1. set the value of the matrix
  ## 2. get the value of the matrix
  ## 3. set the value of the inverse
  ## 4. get the value of the inverse
  inverse <- NULL
  set <- function(y){
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  setinverse <- function(inv) inverse <<- inv
  getinverse <- funciton() inverse
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inverse <- x$getinverse()
  if(!is.null(inverse)){
    message("getting inverse")
    return(inverse)
  }
  data <- x$get()
  i <- solve(x)
  x$setinverse(i)
  i
}
